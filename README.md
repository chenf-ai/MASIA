# MASIA: Efficient Communication via Self-supervised Information Aggregation

This is the official code release for the paper: [Efficient Communication via Self-supervised Information Aggregation](https://proceedings.neurips.cc/paper_files/paper/2022/file/075b2875e2b671ddd74aeec0ac9f0357-Paper-Conference.pdf).

## 🚀 Installation

### 1. Set up the Python Environment

First, create and activate the `conda` environment.

```shell
conda create -n masia python==3.7.13
conda activate masia
```

Next, install PyTorch and the remaining dependencies from `requirements.txt`.

```shell
pip install torch==1.10.1+cu111 torchvision==0.11.2+cu111 torchaudio==0.10.1 -f https://download.pytorch.org/whl/cu111/torch_stable.html
pip install -r requirements.txt
```

### 2. Install Task Environments

To run experiments, you must first install the required task environments: StarCraft II and Traffic Junction.

**StarCraft II (SC2)**

Follow these steps to set up the SC2 environment and the required SMAC maps.

```sh
# Step 1: Download and install StarCraft II
bash install_sc2.sh

# Step 2: Unzip and move the custom maps to the SC2 Maps directory
unzip maps.zip
mv ./maps/* ~/pymarl/3rdparty/StarCraftII/Maps/

# Step 3: Install the QPLEX-SMAC environment dependency
cd deps/qplex_smac && pip install -e .
```

**Traffic Junction**

Navigate to the environment's directory and install it in editable mode.

```sh
cd deps/ic3net-envs
pip install -e .
```

## 🧪 Running Experiments

The commands for running experiments on various tasks are available in the `train.sh` script.

For example, to run an experiment on the Traffic Junction (medium) scenario, use the following command:

```sh
python3 src/main.py --config=masia --env-config=traffic_junction
```

By default, models and TensorBoard logs will be saved to the `./results/` directory.

## Acknowledgement
This code is implemented based on the excellent [EPyMARL](https://github.com/uoe-agents/epymarl) framework.

## 📜 Citation
If you use this code in your research, please consider citing the original paper:

```
@inproceedings{
    guan2022efficient,
    title={Efficient Multi-agent Communication via Self-supervised Information Aggregation},
    author={Cong Guan and Feng Chen and Lei Yuan and Chenghe Wang and Hao Yin and Zongzhang Zhang and Yang Yu},
    booktitle={Advances in Neural Information Processing Systems},
    pages={1020--1033},
    year={2022}
}
```