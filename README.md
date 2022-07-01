# gkmSVM for salmon genome
This repo contains all customized scripts to run gkmSVM on atlantic salmon (non-model genome with no BSgenome package available)

## Installation

Simply clone this repo, create the environment, and add 'bin' to `PATH` variable.
```
git clone https://github.com/datngu/gkmsvm-salmon.git
cd gkmsvm-salmon
export PATH=$PWD/bin:$PATH
conda env create -f environment.yml
conda activate gkmsvm-salmon
```

## Prepare the BSgenome standard package and tandem repeat finder bed file.