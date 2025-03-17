import numpy as np
import matplotlib.pyplot as plt
import MDAnalysis as mda
plt.rcParams['font.sans-serif'] = ['SimHei']


def calculate_forces(positions, box_length):
   forces = np.zeros_like(positions)

   # 计算势能和力
   for i in range(len(positions)):
       for j in range(i + 1, len(positions)):
           # 计算粒子间距离
           r = positions[j] - positions[i]
           r -= np.round(r / box_length) * box_length
           dist_squared = np.sum(r ** 2)

           # 避免除以零或无效值
           if dist_squared != 0:
               # Lennard-Jones势能和力
               r_6 = dist_squared ** 3
               r_12 = r_6 ** 2
               potential = 4 * (1 / r_12 - 1 / r_6)
               force = 48 * (1 / r_12 - 0.5 / r_6) * r

               # 更新总力
               forces[i] += force
               forces[j] -= force

   return forces


def simulate_dynamics(positions, velocities, box_length, num_steps, dt, temperature):
   num_particles = len(positions)
   masses = np.ones(num_particles)  # 假设所有粒子质量相同

   # 初始化动能和势能数组
   kinetic_energies = np.zeros(num_steps)
   potential_energies = np.zeros(num_steps)

   for step in range(num_steps):
       # 计算力
       forces = calculate_forces(positions, box_length)

       # 更新速度
       velocities += forces / masses[:, np.newaxis] * dt

       # 随机力
       random_forces = np.random.randn(num_particles, 3) * np.sqrt(2 * temperature / dt)
       velocities += random_forces / np.sqrt(masses[:, np.newaxis])

       # 更新位置
       positions += velocities * dt

       # 边界条件：周期性边界条件
       positions -= np.floor(positions / box_length) * box_length

       # 计算动能
       kinetic_energies[step] = 0.5 * np.sum(masses * np.sum(velocities ** 2, axis=1))

       # 计算势能
       norm_positions = np.linalg.norm(positions, axis=1)
       valid_indices = np.where(norm_positions != 0)  # 排除为零的情况
       potential_energies[step] = np.sum(
           4 * ((1 / (norm_positions[valid_indices] ** 12)) - (1 / (norm_positions[valid_indices] ** 6))))

   return positions, velocities, kinetic_energies, potential_energies


# 定义粒子位置
num_particles = 100
box_length = 10.0
positions = np.random.uniform(low=0.0, high=box_length, size=(num_particles, 3))

# 初始化速度
velocities = np.random.randn(num_particles, 3)  # 高斯分布随机速度

# 模拟参数
num_steps = 1000
dt = 0.001
temperature = 300  # 模拟温度，单位：K

# 进行模拟
final_positions, final_velocities, kinetic_energies, potential_energies = simulate_dynamics(positions, velocities,
                                                                                           box_length, num_steps, dt,
                                                                                           temperature)

# 绘制能量变化
total_energies = kinetic_energies + potential_energies
time = np.arange(num_steps) * dt

plt.figure()
plt.plot(time, kinetic_energies, label='动能')
plt.plot(time, potential_energies, label='势能')
plt.plot(time, total_energies, label='总能量')
plt.xlabel('时间')
plt.ylabel('能量')
plt.title('能量变化')
plt.legend()
plt.show()

# 绘制粒子轨迹
plt.figure()
plt.plot(final_positions[:, 0], final_positions[:, 1], 'b-', label='粒子轨迹')
plt.xlabel('X')
plt.ylabel('Y')
plt.title('粒子轨迹')
plt.legend()
plt.show()
