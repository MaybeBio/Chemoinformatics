参考[https://github.com/MaybeBio/Chemoinformatics/tree/main/pymol/CTCF_ZF1-7](https://github.com/MaybeBio/Chemoinformatics/tree/main/pymol/CTCF_ZF1-7)

脚本是：  
![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730175002958-63cd1c0e-81d8-435a-bd3c-5d2da3e1f96a.png)

主要教程参考：

[http://pymol.chenzhaoqiang.com/intro/advanceManual.html](http://pymol.chenzhaoqiang.com/intro/advanceManual.html)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730175025069-cb49ffac-4be9-4a18-91a1-72df041b6467.png)

仅剩这2部分还未自学



Q：自选一个pdb，使用pymol做图说明该生物大分子（蛋白）的功能、特征或催化机制等。

用图注详细解释图片的内容。需要包括图和图注，如下图：

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729598919914-e7e07e02-8788-4673-b2cd-518cf54583b8.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729600229967-9f743b6a-e20c-4f46-942b-a3ad7212e32a.png)

pymol下载linux版，使用conda下载：

[https://www.pymol.org/](https://www.pymol.org/)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729601385022-8aa76288-1488-45ce-a834-38a48a184804.png)  
![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729601348759-b0fd1ed2-5976-4193-88d4-e7472f79bdc0.png)

1，获取PDB，可以自己在PDB数据库上下载然后导入pymol，或者是直接在pymol软件上下载对应数据：  
![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729601131459-84b4e389-7974-4f60-a555-ab1002f66b85.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729601433040-d48c9055-f172-4c9d-81b1-e7dad68ac288.png)

#1，打开日志，记录后续所有的操作指令：

```plain
#打开XXX日志，也就是xxx.pml
log_open CTCF_ZFmotif_1.pml 

#注意在最后拍完照结束的时候
log_close
```

#2，调整工作目录：  
![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729683590623-c1c7a1e6-1ea3-47fd-9dde-2ca510439427.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729683606704-20b0456e-4a09-4497-8ea8-8d886519f7d4.png)

#3，加载蛋白PDB文件：

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729601131459-84b4e389-7974-4f60-a555-ab1002f66b85.png?x-oss-process=image%2Fformat%2Cwebp)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729601433040-d48c9055-f172-4c9d-81b1-e7dad68ac288.png?x-oss-process=image%2Fformat%2Cwebp)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729684169968-59999bd6-4729-4734-bb30-faea221ea9cf.png)

实际上的命令行操作：

```plain
cd /mnt/sdb/zht 
#加载PDB蛋白，以8SSS为例
set assembly,""
fetch 8sss
```



4，PDB中对对象（例如蛋白质、DNA的）简单操作：

(1）蛋白的展现形式：  
每一个object的A/S/H/L/C操作

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729685048899-e68802c7-5d4d-4ccf-bd0b-ca1b491395be.png)  
![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729684367161-b25eded0-5474-4ee0-a396-ebde242bcee0.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729684714404-95093a97-28fe-4f2b-b516-64ce5996a2ae.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729684771897-84285951-c71f-40cb-bd44-b02a0d9a4364.png)![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729684737984-041d3045-f5c4-4e46-99d9-ba1731d7342f.png)

事实上我们知道：所谓的as只是蛋白质的展示方式

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729684844525-ef8d1a04-044f-4a4c-a6c3-c64b34b2a9e8.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729684882920-132fde48-3bb4-4a9d-9e90-0f9d876891b4.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729685484893-bf79b692-09c8-4cb9-9675-782baaf65262.png)

所以上述show——》as的展示差异只是渲染效果（渲染成生化中的什么化学结构式）有差异罢了，一个是两种渲染效果不兼容，只能保留最后最新一种，一种是能同时渲染多种效果

show是嵌套多种显示效果，as是只保留最后一种效果

**总之，一般情况下就用show展示效果，比如说要展示CTCF的ZF和DNA上的motif碱基之间的具体互作，以及测量距离，原本的对象是cartoon，此时为了美观要统一效果就as sticks（可以通过撤回取消）；

之后测量完距离，要做真空静电力学的时候就使用show surface，然后做完了surface之后，要对下一个ZF做互作展示+测量distance了，就hide surface然后对原本的stick做dist。**



as可以通过撤回取消，或者是重新选择对象之后使用原本的效果as

show的效果除了撤回，还可以通过hide隐藏（比如说show surface，之后hide surface）

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730165316703-23ca41fd-b763-404f-8187-4aef0f65650c.png)撤回键

（2）蛋白对象的平面操作

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729686011202-7436c291-3c12-4b2d-bcdc-80a1ce702ce9.png)

平移：ctrl+左键，或者是鼠标滚轮中键一直按

旋转：仅仅左键

缩放：仅仅右键，下拉放大，上移缩小

切割（剖面）：仅仅鼠标中键



**如果涉及到复杂的角度操作：**  
rock：绕着竖直轴旋转，也就是将正面以及反面转向我们

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730164977396-ef188205-461a-4cb6-ad07-b61143806072.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730165046819-e2b56bc0-0c8d-4b9d-b501-d3a898141cb3.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730165057357-0311f46d-a5ea-45a0-a5d1-ea92120ac0d9.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730165083362-7b222d3f-bb6f-4b34-b39f-c0cbd63894e3.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730165103206-419e8f99-5094-48b7-ac02-635048c19283.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730165115094-1d4ab4e8-4531-48b2-b953-31a98b32d0d9.png)

（3）蛋白质-DNA复合体的对象分离：select以及create  
一般需要通过PDB网站查询该晶体结构的组成，

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729843749629-dfdb4e1e-6bb5-4d10-93a6-fdc931e9ac7a.png)

查看结构：发现是二聚体

只需选取其中蛋白质A，DNA B+E即可

首先试验一下：

A/D是蛋白质，即CTCF的ZF1-7  
![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845032218-483f00ae-c20c-4d49-bf34-9e0f373efe45.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845047242-46e32aaa-a3f2-4cc0-aa70-f6801ed26b0f.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845069602-e4f3015e-9a0e-4438-95f1-cc6b4eefd6b8.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845076352-ef396cb5-1b90-4ca9-930c-e562296a5b76.png)

然后B/E是双链DNA，连接在链A上

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845213092-7e4f8b6d-fe91-4668-88cc-917c4971b2d7.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845218753-1454b130-1dd2-4b2b-ae22-82a84dac5a0a.png)

也不对，应该是按照序号来的，所以应该是

蛋白质A+双链DNA B+C

蛋白质D+双链DNA E+F

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845526386-4c2bd229-97c5-4a6d-a0e3-5b650f2419d8.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845518360-2724bc69-50a9-48cb-bcdb-1bc2afaacdf8.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845562855-4356c331-8b87-48be-bfc3-1601b35ec8b7.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845555758-0a73d690-ed57-41a3-bee0-42ed189a7cf1.png)

——》总结就是：  
在普通操作上，用的最多的命令就是select、create，其余的基本都是移动角度的指令

select可以指定对象范围（在命令行中），也可以直接在pymol GUI中鼠标左键一个一个点击然后选择sele

****注意各种生物大分子选取对象的命令：****

虽然从逻辑上来看下面选择的操作指令不一定科学严谨，但是从效果上来说是合理的，

另外注意各种符合之间的等价，&与and，CA或者P等大小写不敏感；

另外就是各种and之间是缩小定义对象范围，而or是扩大范围；

另外就是要注意我么选取的对象是以什么单位为基础进行选择的：

是每一个原子（这样label的时候每一个原子都会有label ZFXX），还是以残基，还是以聚合物等等

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730168611425-2c9786c2-92ba-437e-bb86-a56aa9177a95.png)

实际上以什么最小单位选取对象也是会影响选取对象的准确性以及之后操作的严谨性的

  
![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730167829596-87ced837-dbbf-498e-9b07-75f6783cfccf.png)

（4）label操作：  

基本上所有的指令都涉及到：指令+对象（范围）+参数等

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730167873185-d5b0a991-f00c-4e5f-b879-647477b939ee.png)  
label主要需要关注的是标注的内容的修改：也就是label内容的修改

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730167977611-2c410369-8141-4af5-a859-80b6cb238719.png)

主要是字体等、阴影等、轮廓等





5，选取对象+展示好效果+选对角度之后进行拍照：  
（1）如何选取好角度：  
对于蛋白质的平面操作见前所述4（2）蛋白对象的平面操作，主要就是平移+旋转+缩放等；

可以迁移到DNA中

（2）

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730168156926-5f4c54e7-b650-49db-959e-c413f2a73d1f.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730168165384-f50ce1ce-4792-48ba-a514-fcb86554b35a.png)

（3）定好之后拍照：  
![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730168326927-95d0ef57-14b2-4cce-9358-d8890e298202.png)

```plain
#基本上对象+角度定下来之后，拍照细节如下：
bg_color white
ray 1000,1000

#此时可以考虑将label的字体以及展示效果进行修改
set label_size xxx
#以及通过3-button editing拖动展示残基：ctrl+左键

#保存图片
png xxx.png  
```

6，其他：

（1）脚本类型：  
pse是对话，也就是保存当前任务中所有信息

pml是脚本，也就是记录终端中任何命令行+鼠标操作（相当于是log日志，我会在任务一开始时记录，也会将脚本记录在pml中）  
py脚本也兼容，但是在语法上需要注意点：

[http://pymol.chenzhaoqiang.com/intro/advanceManual.html](http://pymol.chenzhaoqiang.com/intro/advanceManual.html)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730172271109-0ec89722-dec5-4c40-aa96-fdf78a682ed7.png)

主要就是python脚本如何在命令语法上与pml脚本相互兼容：  
pml脚本实际上就相当于是pymol的终端，

其实主要是

```plain
#在python脚本中一定要使用cmd：
from pymol import cmd
#也有些脚本会额外加载其他ku
from pymol import cmd, util
#然后python脚本中的一切命令需要使用cmd.xxxx

#当然在pml脚本中也可以直接使用cmd.XXXX（在pymol终端中不需要import库）
```



我一开始是使用pml脚本为主，但是后来发现在pml脚本中的指令本质上就是pymol终端中输入的指令，

所有一些python脚本的限制，在终端中被限制的在pml脚本中也会被限制：  
例如：我在python脚本中会定义一些函数模块，使用def xxx（yyy）:

我们知道函数模块会有缩进要求，但是在pymol终端中输入的时候无法识别会报错，那自然放在pml脚本中就也会报错，所以实际上如果想要python脚本的完全自动化，就最好不要在pml脚本中混杂python代码，

而是直接全部all in  python脚本，使用cmd等进行编写——》**建议所有pymol脚本直接写在py中**



![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730168785624-3c17e8db-c28b-4282-a468-550869e371bb.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730168803281-07f1e49b-65fe-4124-a647-cd0c80c9a2bc.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730168813699-fcea12ab-011e-424d-aa77-698f5c40773d.png)

（2）如何撤销undo：  
一般是展示效果和对象上：首先试试撤回

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730166015294-9ef126aa-9d81-4e8b-8d8f-5dd434773081.png)

****实际上在终端中ctrl+Z也可以达到撤回效果，ctrl+Y可以达到恢复效果****  
选错了某个对象，或者是创建失误：可以delete对象之后redo

展示效果上的失误：

如果是show，可以hide：show surface——》hide surface

如果是as，暂时只能撤回，或者重新选择对象之后as回来原本的展示效果（所以建议不要全局as，一切操作最好都是针对具体范围对象，这样as回来的时候也就可以针对性as，如果一开始是全局as，那纠正撤回的时候就不清楚范围了）

如果是真空静电力学的效果展示：

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730166341401-8369a25e-b685-4569-a99c-1044f5c2d983.png)

只要将这3个对象hide即可；

如果想撤回的操作范围过大无法判断：只能delete all，然后将原本log_open脚本中的命令再一条一条粘贴回来重新redo

（3）临时保存对象：  
如果任务执行到一半，没有结束，需要下一次继续执行，就必须等保存当前所有的会话中的对象，

相当于R中的.rda （也称为.RData ）文件，

主要是：

```plain
#保存当前会话，用于下一次继续
save xxx.pse  #建议使用当前时间来记录会话，然后下次就是在file——》open

#保存对象，如果对会话中过程性对象不需要的话
save xx.pdb
save xx.pdb,yy对象
#前者是保存全部对象，后者是保存指定对象
```

（4）其他pymol相关的python库：  
结合RDkit：

conda安装[https://github.com/rdkit/rdkit](https://github.com/rdkit/rdkit)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729814325182-24970c91-3289-4e8c-aeea-c37d2700c683.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729814508460-17d9f1a8-9cc6-4c4d-86f4-acd64ea5cd23.png)



7，回归到本项目：

首先是数据上：

ZF1-ZF7+oligo 23 bp：8SSS

ZF3-ZF11+oligo 35-4：8SSQ

ZF3-ZF11+oligo 35-20：8SSR

ZF3-ZF10+oligo 19：8SSU

暂时只获取8SSS作为后续数据处理对象，

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730174424071-a6b7fce2-020e-4ea1-ba99-7e2ae14ecab0.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730174442011-5986e525-fe0a-4d4d-be19-d3eb44a738b2.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730174456291-764e0f50-afb8-4d44-ae24-a269c6331e76.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730174475369-4bd0dcde-ba52-4904-8376-75b17526ad4c.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730174512972-2a93825e-9bf7-4b09-9aca-85d49b54cf54.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730174524739-e3f7c704-0543-4c9c-90a1-4672036670c1.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730174537764-e565ba93-16cb-410e-8527-30c63a25f360.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730174568477-26697cbc-95e8-4dfc-a196-d3245b146b78.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730174577950-970aedc3-47cf-4d24-b871-379bf398cd23.png)

```plain
以下为絮絮叨叨执行草稿部分
```

（1）首先是打开log日志文件：  
log_open 这个session名字.pml

（2）标注出不同的ZF序列

给一个蛋白质标注不同的part：  
那首先要从中分离出来蛋白质和DNA部分：

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729842266710-b0c044ae-dec8-42f9-b688-ef067de177a2.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729843749629-dfdb4e1e-6bb5-4d10-93a6-fdc931e9ac7a.png)

查看结构：发现是二聚体

只需选取其中蛋白质A，DNA B+E即可

首先试验一下：

A/D是蛋白质，即CTCF的ZF1-7  
![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845032218-483f00ae-c20c-4d49-bf34-9e0f373efe45.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845047242-46e32aaa-a3f2-4cc0-aa70-f6801ed26b0f.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845069602-e4f3015e-9a0e-4438-95f1-cc6b4eefd6b8.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845076352-ef396cb5-1b90-4ca9-930c-e562296a5b76.png)

然后B/E是双链DNA，连接在链A上

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845213092-7e4f8b6d-fe91-4668-88cc-917c4971b2d7.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845218753-1454b130-1dd2-4b2b-ae22-82a84dac5a0a.png)

也不对，应该是按照序号来的，所以应该是

蛋白质A+双链DNA B+C

蛋白质D+双链DNA E+F

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845526386-4c2bd229-97c5-4a6d-a0e3-5b650f2419d8.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845518360-2724bc69-50a9-48cb-bcdb-1bc2afaacdf8.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845562855-4356c331-8b87-48be-bfc3-1601b35ec8b7.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845555758-0a73d690-ed57-41a3-bee0-42ed189a7cf1.png)

接下来使用一个单体进行操作分析

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729845665387-8f34ea9f-983b-4044-87f1-f61e1fd53829.png)

接下来的分析需求可以参照文献中的图：





![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729842266710-b0c044ae-dec8-42f9-b688-ef067de177a2.png?x-oss-process=image%2Fformat%2Cwebp)

按照序列来选择：  
我的建议是先分离蛋白质和DNA，也就是ZF1_7与ZF1_7_motif

再然后对ZF1_7依据序列数据标明1-7



首先是蛋白质的分离：

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729846264146-7f8eb845-17bd-4859-bf18-13dd11c432e9.png)

接着是DNA：  
![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729846387886-5a7b4e73-8cd3-4a7d-b7c5-95d53f98b2c4.png)

然后再ZF1_7上面依据氨基酸残基序列标注不同的ZF片段

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729846830064-2f61fb4a-8ca7-4850-ad3d-1bd7eaa475db.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729846844111-440643fa-07f6-4e29-a86c-2a3df6169f36.png)

同理完成ZF1-7的标注







上面是分开做的事情，当然还有合起来的在整体上也用不同颜色label不同的ZF

首先是依据resi的数据在ZF1_7上分段color，再然后label

因为color以及label都是要对同一对象进行，所以统一选择select

但是label的时候应为一开始选取的是所有残基的集合，所以label的时候是集合中的所有原子都有ZF1 label，而不是只有一个label；

所以建议还是在select之后create，

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729861896963-e530fc62-38d3-4390-af73-c788c2358e65.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729861905289-34f64e2f-6a48-40e5-bd63-95da48d9cea2.png)

也不行，建议不用在select之后再分离create对象

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729863756497-34b9bfb6-3bba-4866-9696-4b4a3be25ff2.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729863770078-6cb9f605-1ad5-43df-9f80-0e6588fde187.png)

 

总之处理之后：

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729864293551-b1e8811a-d6e8-4680-9a4f-528188da7cbd.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729852068660-5c19e338-8712-4c33-8ee7-306061728dac.png)





（3）其次是要在不同的ZF序列中找到对应的序列特异性位点，可以选出来，也可以直接在整条序列中label出来

如何识别两条互作序列中的互作位点

或者是位点已知：

选取其中的结晶链

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729865111175-dd0c30d7-ee6f-46d8-9381-2d0c9de9f5bd.png)  
![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729865082468-f37b9270-a867-456c-a379-984fc60ed32a.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729871277519-c4aa4b30-4a46-40b2-bdaf-a34b386f40c5.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729869996623-f1ccb6d1-7ba7-4f1d-831e-61a1907bf55a.png)

具体自动化label的话，也是和开始一样，先选中氨基酸还是DNA，然后使用占位符

再create一个ZF7，也就是互作的对象要分离，然后互作的部分要select选中再as sticks

或者直接鼠标点击选中几个互作残基，然后sele上进行show，注意要as（如何只展示一种效果）

从文献中获取已知信息：  
![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730173162309-65518e77-0452-478e-b624-694ec8f658ec.png)

ZF1_7 

ZF7：

V454、D451、R448

cry_strand

2C/3C/4A



所以其实只要ZF1_7以及DNA的结晶单链即可

所有对象都可以直接选择sele之后再as sticks再color

然后label的话其实是先选中DNA以及蛋白质对象，再使用

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729955195529-c8349904-0c07-45fa-b394-4bb504a8b176.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729955233237-bd334d74-db09-489f-91a0-5fdafb8aaf5f.png)

但是所有的原子都会显示

不选原子而是选择整个残基

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729955391515-8f96a3e3-7176-409b-b566-76fbd9cbeb82.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729957907505-e41c0e94-c9a6-4162-b8bc-2244c46148b2.png)

（注意seq要对应上，别标错）

然后再是measurement

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729955747932-1dd16c44-d42b-4241-a74f-bdf14b2d8102.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729955754253-0629c12d-8a53-4805-860d-4dcd5b4436e6.png)

但是这样是3 vs 3的，如果要1vs1的话，只能使用1个残基1个残基的使用并标注

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729956493234-c64c7842-fd01-4af7-922b-bece033d6aac.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729956590718-a83d0132-3b28-4902-9288-9fb359b7872c.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729958008368-f989ed0a-d28f-41bd-95aa-551ef95585f7.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729958267631-07177ec9-8ace-4515-a65f-13cd2d20d0e1.png)



问题在于如何摆放：

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730024027103-1423fa72-ef6b-47f3-8f81-59133c5aaf71.png)

还是靠不断移动，以显示数字效果

主要是残基背景的透明效果：  
![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730023056510-1835fdca-f3f3-4271-9fbc-bc76684f1d6d.png)

可以是选定残基之后的透明效果设置，也可以是是针对不同的show或者是as来设置对应的透明效果，

比如说上面是cartoon就是除了互作碱基之后的背景残基的透明效果，然后针对sticks的互作碱基的效果可以是设置为其他的透明效果；

当然作为背景的其他残基效果没必要更改，主要是修改在互作碱基之后的透明效果即可

也就是选中label的指令部分

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730023240090-2a3ff35c-962c-4d15-9abe-cb9d10a32577.png)

```python
set transparency, 0.5, resi 454+451+448 and chain X and resi 1+2+3 and chain Y
```

但是效果基本没有，可能暂时无法针对集合修改？  
只能先对show/as形式修改



应该是其余的背景设置最透明，然后互作的碱基略不透明，

比如说互作0.5透明，背景0.8

还是主要设置想要观察的互作残基的透明度，

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730023264964-2873d191-0a54-4f9c-be2a-82ef3e69499a.png)

其余的主要是移动label，如果在图上点击就是edit label

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730027638728-859b906f-5100-46f6-a230-b24cbdcd84ff.png)

主要是：  
![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730028088886-8f5a1652-37a4-4b97-87bd-b07988a5745a.png)

再ctrl+鼠标左键移动

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730024027103-1423fa72-ef6b-47f3-8f81-59133c5aaf71.png?x-oss-process=image%2Fformat%2Cwebp)

as和show的区别：  
最好用show，无论是surface还是静电力学

show是显示，as是替换，如果有多种效果就使用show



然后在DNA以及蛋白质的相关选择中，and与&通用，以及选择的关键词是大小写不敏感的

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730033003362-87fac02f-b9fb-47c8-934f-92ec0bfbce26.png)

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1730033117963-02fd1c91-7341-4054-ac7c-b37a2cf5c8ea.png)

上面ZF7处理完了其他的ZF1-6同样处理



ZF6：

M424、T421、Q418

G5/C6/A7



ZF5：

R396、K393、D390

G8/G9/G10/



ZF4：

R368、K365、E362

G11/G12/C13



ZF3：

R339、E336、T333

G14/C15/T16



ZF2：  
N311、L308、T305

A17/G18/T19



ZF1:

R283、N280、R277

G20/A21/G22

（4）除了互作位点的拍照+distance的measurement，还可以做一些其他的操作：  
比如说是静电力学的显示surface，或者是b-factor

![](https://cdn.nlark.com/yuque/0/2024/png/33753661/1729956744678-a6de7841-38ba-4531-83be-150f75426d90.png)

还是放整体的：

DNA作为motif作为配体，在其中，然后显示整个ZF蛋白质的静电

```plain
草稿结束
```

























