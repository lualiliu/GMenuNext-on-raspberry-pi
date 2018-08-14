# GMenuNext on raspberry pi

[GMenuNext](https://github.com/pingflood/GMenuNext/) is a fork of [GMenu2X](http://mtorromeo.github.com/gmenu2x) developed to Retrogame RS-97, released under the GNU GPL license v2.

And This project is a fork of GMenuNext. based on raspbian and raspberry pi.

# 编译(Compile And Build)

在raspberry pi中安装libsdl包(sudo apt-get install libsdl...)

make dist

编译后的文件在dist文件夹中。

# 映射到fb1（如TFT屏幕）
安装屏幕驱动（install screen driver）

In gmenu2x.cpp(lines 367)

putenv((char*)"FRAMEBUFFER=/dev/fb0");

putenv((char*)"SDL_FBDEV=/dev/fb0");

to

putenv((char*)"FRAMEBUFFER=/dev/fb1");

putenv((char*)"SDL_FBDEV=/dev/fb1");


## Contacts

GMenu2X Copyright (c) 2006-2010 [Massimiliano Torromeo](mailto:massimiliano.torromeo@gmail.com); GMenuNext 2018 by [@pingflood](https://boards.dingoonity.org/profile/pingflood/); Skin PS4, PSNext, PSNextDark and Zelda by [@m1024x](https://github.com/m1024x/retrogame-skin-pack)

Visit the [Dingoonity thread](https://boards.dingoonity.org/ingenic-jz4760-devices/gmenunext-let's-make-gmenu-great-again!/) and the [Discord channel](https://discord.gg/hvR5vK6)!

[GMenu2X](http://mtorromeo.github.com/gmenu2x) homepage for more info.
