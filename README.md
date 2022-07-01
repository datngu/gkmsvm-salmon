# gkmSVM for salmon genome
This repo contains all customized scripts to run gkmSVM on atlantic salmon (non-model genome with no BSgenome package available)

## Installation

Simply clone this repo, create the environment, and add `bin` to `PATH` variable.

```
git clone https://github.com/datngu/gkmsvm-salmon.git
cd gkmsvm-salmon
export PATH=$PWD/bin:$PATH
conda env create -f environment.yml
conda activate gkmsvm-salmon
```

## Prepare the BSgenome standard package and tandem repeat finder bed file.

Change your working directory to `bsgenome`:

```sh
# change your working directory
cd bsgenome
# forge and install BSgenome of atlantic salmon v3.1
bash install.sh 
# run tandem repeat finder to find tandem repeat regions
bash tandem_repeat_finder.sh
```

**Warning**: If **.TwoBits_export** error happens, please create **extdata** following [the author's suggestion](https://support.bioconductor.org/p/124169/):

```
cd `echo 'cat(system.file(package="BSgenome"))' | R --vanilla --slave`
cd pkgtemplates/BSgenome_datapkg/
mkdir inst
mkdir inst/extdata
```

## Generating negative sequences by bed file input of ATTAC seq

I prepared a testing example with human hg19 and CTCF bed file.

```sh

bed=
trf
genNullSeqs_tfr.R bed=path/to/posSeq.bed trf=path/to/trf.bed out=output_name.txt bsgenome=BSgenome.package.name xfold=n

```