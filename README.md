dhewm3-appimage
---------------
[![Build status](https://github.com/tx00100xt/dhewm3-appimage/actions/workflows/cibuild.yml/badge.svg)](https://github.com/tx00100xt//dhewm3-appimage/actions/)
[![License: GPL v2](https://img.shields.io/badge/License-GPL_v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.html)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/tx00100xt/dhewm3-appimage)](https://github.com/tx00100xt/dhewm3-appimage/releases/tag/1.3.5rc1)
[![Github downloads](https://img.shields.io/github/downloads/tx00100xt/dhewm3-appimage/total.svg?logo=github&logoColor=white&style=flat-square&color=E75776)](https://github.com/tx00100xt/dhewm3-appimage/releases/)

<h1 align="center">
  <img src="https://raw.githubusercontent.com/tx00100xt/dhewm3-appimage/main/AppDir/usr/share/icons/hicolor/128x128/apps/org.dhewm3.Dhewm3.png" alt="AppImage for Dhewm3">
  <br/>
</h1>
<p align="center"><b>This is a AppImage for Dhewm3</b>

## Upstream
All credits here:  
https://dhewm3.org/  
https://github.com/dhewm/dhewm3

## Running
Download the AppImages from the release page! Then, make the AppImage an executable by entering `chmod +x $FILE` in a terminal or by right-clicking the file then selecting "Properties" then "Permissions", and checking the executable checkbox. Then, double-`click the AppImage to run Dhewm3. To launch d3xp, use the game menu or enter in the terminal:
```
./Dhewm3-1.5.3rc1-x86_64.AppImage +set fs_game d3xp
```

## Game data
This package only provides the engine, you need a valid copy of the (proprietary) game data to launch the game.
When you first start the game, you will be asked to place your game data along the following paths:
```
    ~/.local/share/dhewm3/base
```
```
    ~/.local/share/dhewm3/d3xp
```
You can place game data in these paths before starting the game. Then the game will start immediately.

## Verify
You can check the application signature by running the command in the terminal:
```
./Dhewm3-1.5.3rc1-x86_64.AppImage --appimage-signature
```
Note: the application compiled using Github Action does not have a signature.

### Build status
|CI|Platform|Compiler|Configurations|Platforms|Status|
|---|---|---|---|---|---|
|GitHub Actions|Ubuntu|GCC|Release|x64|![GitHub Actions Build Status](https://github.com/tx00100xt/dhewm3-appimage/actions/workflows/cibuild.yml/badge.svg)

You can download a the automatically build based on the latest commit.  
To do this, go to the [Actions tab], select the top workflows, and then Artifacts.

License
-------

* dhewm3 is licensed under the GNU GPL v3 (see LICENSE file).

[Actions tab]: https://github.com/tx00100xt//dhewm3-appimage/actions "Download Artifacts"
