#如果要粘贴以下命令一次性run的话，注意每行末尾分号；以及注意注释不要粘贴进去

# 1,外部设置
#工作目录设置到指定地方
cd /mnt/sdb/zht 

#打开日志，记录所有操作指令
log_open CTCF_ZFmotif_1pml 


# 2,首先是内部全局的设置
set assembly,""

# 3,获取对应蛋白质的PDB文件
fetch 8SSS

# 4,对获取的原始PDB文件中的蛋白质等复合物进行处理，分离DNA以及蛋白质
#8SSS是一个二聚体，要获取单体进行分析，依据PDB数据库上的介绍，获取单体中的蛋白质链A以及DNA双链条B+C
select 8SSS_1,8SSS and chain A or chain B or chain C

#为选择创建一个对象
create 8SSS_1,8SSS_1  

#接着从单体中分离出蛋白质，8SSS主要是CTCF得ZF1-7
select ZF1_7,8SSS_1 and (byres polymer and name ca)
create ZF1_7,ZF1_7

#接着是分离DNA，同上and与&,以及选择词的大小写不敏感
select ZF1_7_motif,8SSS_1 and (byres polymer and name p)
create ZF1_7_motif,ZF1_7_motif

#对于分离出来的蛋白质ZF1_7，可以依据氨基酸残基序列标注出不同的ZF片段
select ZF1,ZF1_7 and resi 265-292
create ZF1,ZF1

select ZF2,ZF1_7 and resi 293-320
create ZF2,ZF2

select ZF3,ZF1_7 and resi 321-349
create ZF3,ZF3

select ZF4,ZF1_7 and resi 350-377
create ZF4,ZF4

select ZF5,ZF1_7 and resi 378-405
create ZF5,ZF5

select ZF6,ZF1_7 and resi 406-435
create ZF6,ZF6

select ZF7,ZF1_7 and resi 436-465
create ZF7,ZF7

#接着就是配色
color red,ZF1;
color blue,ZF2;
color cyan,ZF3;
color green,ZF4;
color yellow,ZF5;
color orange,ZF6;
color pink,ZF7;

#接着就是label，暂时无法标注单个整体，要标注会将所有原子都标注出ZF1
#label ZF1 and byres polymer,"ZF1"
#label ZF1,"ZF1"

#获取互作的结晶单链DNA(?)，依据信息序列比对得是链C
select cry_strand,ZF1_7_motif and chain C
create cry_strand,cry_strand
#或者可以直接通过sequence显示之后逐个点击所有原子，再对sele进行create
#此处之后仅需show ZF1-7+cry_strand即可

# 5,获取互作位点区域，并进行处理
#注意show和as的区别，前者是（嵌套）显示，后者是（最终效果）替换，此处展示效果需要将互作位点展示为as单一效果，后期可以更换回来
as sticks,(ZF7 and resi 454+451+448) or (cry_strand and resi 2+3+4)
#注意label是残基整体，所以有name xxx，但是前面效果展示上as用所有原子，所以没有name xxx，先as再label是因为如果反过来先label再as的话label会消失
label (ZF7 and resi 454+451+448 and name ca) or (cry_strand and resi 2+3+4 and name p),"%s-%s"%(resn,resi)  

as sticks,(ZF6 and resi 424+421+418) or (cry_strand and resi 5+6+7)
label (ZF6 and resi 424+421+418 and name ca) or (cry_strand and resi 5+6+7 and name p),"%s-%s"%(resn,resi)

as sticks,(ZF5 and resi 396+393+390) or (cry_strand and resi 8+9+10)
label (ZF5 and resi 396+393+390 and name ca) or (cry_strand and resi 8+9+10 and name p),"%s-%s"%(resn,resi)

as sticks,(ZF4 and resi 368+365+362) or (cry_strand and resi 11+12+13)
label (ZF4 and resi 368+365+362 and name ca) or (cry_strand and resi 11+12+13 and name p),"%s-%s"%(resn,resi)

as sticks,(ZF3 and resi 339+336+333) or (cry_strand and resi 14+15+16)
label (ZF3 and resi 339+336+333 and name ca) or (cry_strand and resi 14+15+16 and name p),"%s-%s"%(resn,resi)

as sticks,(ZF2 and resi 311+308+305) or (cry_strand and resi 17+18+19)
label (ZF2 and resi 311+308+305 and name ca) or (cry_strand and resi 17+18+19 and name p),"%s-%s"%(resn,resi)

as sticks,(ZF1 and resi 283+280+277) or (cry_strand and resi 20+21+22)
label (ZF1 and resi 283+280+277 and name ca) or (cry_strand and resi 20+21+22 and name p),"%s-%s"%(resn,resi)

#然后就是测量距离measurement，暂时只能做到一个一个分离开来测量互作，也就是
#distance dist_71,ZF7 and resi 454 and name ca,cry_strand and resi 2 and name p
#但是上面过程太麻烦，可以自定义1个函数+编写loop来处理：
#注意下面函数定义部分也就是多行EOF部分，需要复制粘贴到另外一个xxx.py脚本中（注意不是pml脚本），然后在pymol终端中：run xxx.py。
#也就是说不能直接在pymol中输入多行py脚本，会遇到缩进错误

from pymol import cmd
def measure_distance(name, obj1, res1, obj2, res2):
    cmd.distance(f"dist_{name}", f"{obj1} and resi {res1} and name ca", f"{obj2} and resi {res2} and name p")
    print(f"dist_{name}:", cmd.get_distance(f"{obj1} and resi {res1} and name ca", f"{obj2} and resi {res2} and name p"))

measure_distance(71, "ZF7", 454, "cry_strand", 2)
measure_distance(72, "ZF7", 451, "cry_strand", 3)
measure_distance(73, "ZF7", 448, "cry_strand", 4)
measure_distance(61, "ZF6", 424, "cry_strand", 5)
measure_distance(62, "ZF6", 421, "cry_strand", 6)
measure_distance(63, "ZF6", 418, "cry_strand", 7)
measure_distance(51, "ZF5", 396, "cry_strand", 8)
measure_distance(52, "ZF5", 393, "cry_strand", 9)
measure_distance(53, "ZF5", 390, "cry_strand", 10)
measure_distance(41, "ZF4", 368, "cry_strand", 11)
measure_distance(42, "ZF4", 365, "cry_strand", 12)
measure_distance(43, "ZF4", 362, "cry_strand", 13)
measure_distance(31, "ZF3", 339, "cry_strand", 14)
measure_distance(32, "ZF3", 336, "cry_strand", 15)
measure_distance(33, "ZF3", 333, "cry_strand", 16)
measure_distance(21, "ZF2", 311, "cry_strand", 17)
measure_distance(22, "ZF2", 308, "cry_strand", 18)
measure_distance(23, "ZF2", 305, "cry_strand", 19)
measure_distance(11, "ZF1", 283, "cry_strand", 20)
measure_distance(12, "ZF1", 280, "cry_strand", 21)
measure_distance(13, "ZF1", 277, "cry_strand", 22)

#上述过程可以编写loop完成，略
#resi_pair=[resi_pair_1,resi_pair_2,resi_pair_3,resi_pair_4,resi_pair_5,resi_pair_6,resi_pair_7]
#resi_pair_7=[(454,2),(451,3),(448,4)]
#resi_pair_6=[(424,5),(421,6),(418,7)]
#resi_pair_5=[(396,8),(393,9),(390,10)]
#resi_pair_4=[(368,11),(365,12),(362,13)]
#resi_pair_3=[(339,14),(336,15),(333,16)]
#resi_pair_2=[(311,17),(308,18),(305,19)]
#resi_pair_1=[(283,20),(280,21),(277,22)]

#对label展示的一些修改
#首先是字体，具体可以每个互作区域分别进行修改，大小主要是放大之后查看
set label_size,20
#set label_size,多少多少A
#关闭sticks转态下的双键模式
set valence,0 

#执行下面操作时，可以一个一个show ZF以及对应dist来观察拍照
#其次是互作位点为了凸显label，需要调整背景的透明度，0.0是0%透明，1.0是100%透明
set transparency,0.5,(ZF7 and resi 454+451+448) or (cry_strand and resi 2+3+4)
set transparency,0.5,(ZF6 and resi 424+421+418) or (cry_strand and resi 5+6+7)
set transparency,0.5,(ZF5 and resi 396+393+390) or (cry_strand and resi 8+9+10)
set transparency,0.5,(ZF4 and resi 368+365+362) or (cry_strand and resi 11+12+13)
set transparency,0.5,(ZF3 and resi 339+336+333) or (cry_strand and resi 14+15+16)
set transparency,0.5,(ZF2 and resi 311+308+305) or (cry_strand and resi 17+18+19)
set transparency,0.5,(ZF1 and resi 283+280+277) or (cry_strand and resi 20+21+22)

#此时因为非互作的背景位点没有设置透明度，也会影响遮挡到一些label，所以需要对label进行移动
#主要是右侧GUI左下角3-button editing，然后ctrl+鼠标左键拖动label

#最后找到一个好位点:
bg_color white
ray 1000,1000
#可以和上面对label展示的修改互换


# 6,旋转各种位点，如果找到好的位点可以拍图
get_view
# set_view()相关，暂略
#png ZF7.png 
#上述步骤主要是拍照关于distance互作+surface的图，下面要处理静电力学以及bf的问题

# 7,获取其他性质的照片图
show surface
#以ZF7为例，只展示ZF7+cry_strand+dist_7x相关，另外对ZF7 A->generate vacu

#在进行下一个对象处理时，关闭前一个ZF对象的vacu图，也就是hide
#同理要观察sticks的互作图时，关闭surface
hide surface

# 8,一切处理完毕之后
log_close



