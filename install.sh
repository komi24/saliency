# Install miniconda
wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda

echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> $HOME/.bashrc
source $HOME/.bashrc

git clone https://gitlab.com/chicham/saliency-salgan-2017/ $HOME/salgan
cd $HOME/salgan
conda -y install theano=0.8 scikit-image=0.13 opencv=3.1 tqdm=4.11 pyzmq=16.0 cudnn=5.1
pip install path.py==10.3 git+git://github.com/Lasagne/Lasagne.git@54e3ae1f1c7b669621efb72f1dd4efce48405cb4

pip install -e .
cd $HOME
