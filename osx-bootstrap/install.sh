dir="$HOME/REPOS/"
mkdir -p $dir
cd $dir
git clone --recursive https://github.com/secfigo/dotfiles.git
cd dotfiles/osx-bootstrap
bash bootstrap.sh
