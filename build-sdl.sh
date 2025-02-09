#/bin/sh

rm -fr dhewm3

# get linuxdeploy-x86_64.AppImage
wget -nv -c https://github.com/linuxdeploy/linuxdeploy/releases/download/continuous/linuxdeploy-x86_64.AppImage
chmod +x linuxdeploy-x86_64.AppImage

# get source code
git clone https://github.com/dhewm/dhewm3.git

# apply appimage patch and compile
cd dhewm3
patch -p1 < ../patches/0001-dhewm3-AppImage.patch
cd neo
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ..
make -j4

cd ..
cd ..
cd ..

# copy files
cp -fr dhewm3/neo/build/dhewm3 AppDir/usr/bin
cp -fr dhewm3/neo/build/base.so AppDir/usr/bin
cp -fr dhewm3/neo/build/d3xp.so AppDir/usr/bin
cp -fr Img/dhewm3.bmp AppDir/usr/bin

# create appimage
SIGN=1 ./linuxdeploy-x86_64.AppImage --executable AppDir/usr/bin/dhewm3 --desktop-file AppDir/usr/share/applications/org.dhewm3.Dhewm3.desktop --icon-file AppDir/usr/share/icons/hicolor/128x128/apps/org.dhewm3.Dhewm3.png --appdir AppDir --output appimage

# rename appimage
mv Dhewm3-x86_64.AppImage Dhewm3-1.5.5pre-x86_64.AppImage
chmod +x Dhewm3-1.5.5pre-x86_64.AppImage
