
cd /mnt/users/ngda/projects/paper_1

#module load Anaconda3/2021.11
module load git

git clone https://github.com/datngu/gkmsvm-salmon.git
cd gkmsvm-salmon
conda env create -f environment.yml
conda activate gkmsvm-salmon

