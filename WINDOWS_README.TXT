# Author: Rogério Santos

First of all, you will need Mingw gcc properly installed on your PC, for
more information about it, visit http://www.mingw.org.
To compile on Windows is necessary the Lualib and LibUsb in their
respective Windows versions, lualib-win and libusb-win.

The LuaLib for Windows can be found on:
http://code.google.com/p/luaforwindows

And LibUsb for Windows on:
http://sourceforge.net/projects/libusb-win32/

The command line for make the module is:
mingw32-make -f Makefile.win
To clean the generated files:
mingw32-make -f Makefile.win clean

The make process will create a DLL file named libusb.dll, this file
must be copied to the Lua modules directory, commonly the bin directory.

To test the module run:

lua.exe

This will open the Lua prompt.
In the Lua prompt run:
require('libusb')

If no error occur it's all right.
