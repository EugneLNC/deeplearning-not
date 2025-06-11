# 深度学习 & 数值算法演示项目

本项目收集并演示了一系列深度学习与经典数值算法实验，涵盖：

* **图像压缩与降维**：SVD 在灰度图像、任意本地图片上的降维重构
* **PageRank**：Web 链接排名的幂迭代实现
* **特征提取与分类**：ResNet-50 冻结特征 + SAGA 分类头，包含与 SGD/GD 的收敛速度对比
* **目标检测**：YOLOv5 Plate 分类流程示例
* **线性代数基础**：Power Method 主特征值、线性最小二乘（正规方程 vs GD）

# 项目目录与说明

本仓库包含深度学习示例与经典数值算法实验，组织如下：

```
├── data/                        # 通用辅助数据
├── dataset/                     # Plate 检测与其他数据集
├── Dishes-Train/                # 训练用盘子图像及标签
├── best_catdog.pth              # 猫狗分类最佳模型权重
├── clean-jupyter.bat            # 清理临时 Jupyter 文件脚本
├── dataset.tar                  # 数据打包压缩文件
├── Fedavg.ipynb                 # 联邦学习 FedAvg 示例 Notebook
├── jd.png                       # SVD 示例用本地图片
├── ls.png                       # 最小二乘示例用本地图片
├── Pagerank算法实现.ipynb       # PageRank 算法演示 Notebook
├── powermethod计算特征.ipynb    # 幂迭代求特征值 Notebook
├── Saga的2分类验证.ipynb        # SAGA 二分类对比 Notebook
├── start_lab.bat                # 启动 JupyterLab 的脚本
├── Stopping.ipynb               # Early Stopping 示范 Notebook
├── Svd实验实例.ipynb            # 图像 SVD 降维压缩 Notebook
├── 不同数据下的目标收敛对比.ipynb  # 不同规模数据目标/风险对比 Notebook
├── 使用SAGA优化器对比.ipynb      # GD/SGD/SAGA 收敛对比 Notebook
├── 实验old.ipynb                # 旧版实验 Notebook（备份）
├── 成功的猫狗分类实验.ipynb      # ResNet 猫狗分类 Notebook
└── 最小二乘法与梯度下降.ipynb     # 线性最小二乘 Normal vs GD Notebook
```

## 主要内容

* **data/**：通用辅助文件目录，可存放示例图像、配置文件等。
* **dataset/**：各类数据集目录，例如用于目标检测和分类的样本。
* **Dishes-Train/**：包含盘子检测任务的训练图像和标签文件。

### Notebook 概览

* `Pagerank算法实现.ipynb`：PageRank 链接分析与迭代示例。
* `powermethod计算特征.ipynb`：幂迭代求矩阵主要特征值与特征向量。
* `Svd实验实例.ipynb`：对 JD.png 图像进行 SVD 降维压缩重构演示。
* `最小二乘法与梯度下降.ipynb`：正规方程 vs 梯度下降的线性回归对比。
* `Saga的2分类验证.ipynb`：ResNet 特征 + SAGA 头的二分类实验。
* `Fedavg.ipynb`：联邦学习 FedAvg 算法模拟与可视化。
* `不同数据下的目标收敛对比.ipynb`：GD/SGD/SAGA 在 n=1k vs n=10k 上的收敛对比。
* `使用SAGA优化器对比.ipynb`：GD、SGD 与 SAGA 收敛速度实践对比。
* `成功的猫狗分类实验.ipynb`：ResNet-50 在猫狗数据集上的端到端分类。
* `Stopping.ipynb`：Early Stopping 技术示范。
* `clean-jupyter.bat`、`start_lab.bat`：项目环境清理与 Jupyter 启动脚本。

## 运行环境

```bash
# 创建并激活环境
conda env create -f environment.yml
conda activate deep-learning-demo
# 启动 JupyterLab
jupyter lab
```

## 依赖及配置

* Python 3.9+
* numpy, matplotlib, scikit-learn
* jupyterlab, ipywidgets
* pytorch, torchvision



## 使用说明

1. 启动 JupyterLab 并打开对应 Notebook：

   ```bash
   jupyter lab
   ```
2. 依次运行每个 Cell，查看打印与可视化结果
3. 如需保存图像，可在 Notebook 中使用 `plt.savefig(...)`

## 贡献与许可

* 欢迎提交 Issue / PR 以改进示例或添加新实验
* 本项目遵循 MIT 许可证，详见 LICENSE

---

*作者：EugenLNC*
*日期：2025-06-11*
