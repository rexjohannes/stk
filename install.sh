sudo apt update
sudo apt upgrade -y
sudo apt update
sudo apt install subversion git unzip -y
sudo apt-get install build-essential cmake libbluetooth-dev libsdl2-dev \
libcurl4-openssl-dev libenet-dev libfreetype6-dev libharfbuzz-dev \
libjpeg-dev libogg-dev libopenal-dev libpng-dev \
libssl-dev libvorbis-dev nettle-dev pkg-config zlib1g-dev -y
cd
rm -rf stk
mkdir stk
cd stk
wget https://github.com/rexjohannes/stk/releases/download/assets/stk-assets.tar.xz
tar -vxf stk-assets.tar.xz
rm stk-assets.tar.xz
#svn co https://svn.code.sf.net/p/supertuxkart/code/stk-assets stk-assets
git clone https://github.com/supertuxkart/stk-code.git
#wget https://github.com/supertuxkart/stk-code/archive/refs/heads/master.zip
#unzip master.zip
#rm master.zip
#wget https://github.com/supertuxkart/stk-code/releases/download/1.2/SuperTuxKart-1.2-src.tar.xz
#tar -vxf SuperTuxKart-1.2-src.tar.xz
#rm SuperTuxKart-1.2-src.tar.xz
#mv SuperTuxKart-1.2-src stk-code
cd stk-code
mkdir cmake_build
cd cmake_build
cmake .. -DBUILD_RECORDER=off
make -j$(nproc)
#bin/supertuxkart
#sudo make install
#cd
#rm -rf stk
