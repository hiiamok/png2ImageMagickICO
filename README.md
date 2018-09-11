# png2ImageMagickICO

[png2ico](https://www.winterdrache.de/freeware/png2ico) is widely used in open source projects.
Sadly, it does not support input files >= 256x256 pixels. According to the [Icon Handbook](http://iconhandbook.co.uk/reference/chart/windows) 256x256pixel icons are used in Windows since Vista.

One option is to use the provided convert tool by [ImageMagick](http://iconhandbook.co.uk/reference/chart/windows).
The problem with this is, the references in open source projects have to be changed, which sometimes is not quite that easy.
This is where png2ImageMagickICO kicks in.

It is a simple script, which takes the input syntax of png2ico, converts it to the onput syntax of ImageMagick and passes it over. Therefore, the only thing that has to be exchanged is the png2ico.exe itself.

# Tutorial

To keep things simple, the source file is an ordinary Windows batch file.
There are several ways to convert a .bat file into a Windows executable, for example the [Bat To Exe Converter](http://www.f2ko.de/en/b2e.php)

To avoid PATH bindings, it is possible to include ImageMagick's convert.exe into the generated executable.
convert.exe of ImageMagick version 7.0.8-11 Q16 is available within this repo. It can, of course, easily exchanged.

1. Download/Install the Bat To Exe Converter
2. Download/Clone this repo
3. Start the Bat To Exe Converter
4. Open the png2ImageMagickICO.bat
5. Click on "Embed" on the right side and add the ImageMagick files
6. Optionally: Set Version Information or other Options
7. Click convert
8. Replace the original png2ico.exe

# Further Information

This solution was tested and is working with [Nextcloud](https://github.com/nextcloud/desktop)