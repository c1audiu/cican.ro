#bassed on https://www.pyimagesearch.com/2017/09/04/raspbian-stretch-install-opencv-3-python-on-your-raspberry-pi/

apt-get update && sudo apt-get upgrade -y
apt-get install build-essential cmake pkg-config -y
apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev -y
apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev -y
apt-get install libxvidcore-dev libx264-dev -y
apt-get install libgtk2.0-dev libgtk-3-dev -y 
apt-get install libatlas-base-dev gfortran -y
apt-get install python2.7-dev python3-dev -y
cd ~ && wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.4.1.zip 
unzip opencv.zip
wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.4.1.zip 
unzip opencv_contrib.zip
wget https://bootstrap.pypa.io/get-pip.py 
python get-pip.py 
python3 get-pip.py
pip2.7 install virtualenv virtualenvwrapper 
rm -rf ~/.cache/pip
echo -e "\n# virtualenv and virtualenvwrapper" >> ~/.profile 
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.profile 
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.profile 
source ~/.profile
mkvirtualenv cv -p python3
workon cv
pip install numpy
cd ~/opencv-3.4.1/
