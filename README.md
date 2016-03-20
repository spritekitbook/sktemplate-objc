## sktemplate-swift

This is a template project you can use as an alternative to the Xcode SpriteKit template for Swift.

### sktemplate-swift Features
* ObjectAL. Includes [ObjectAL](http://kstenerud.github.io/ObjectAL-for-iPhone/) for *really* easy audio play back in your games.
* Bitmap Font Support. Includes the required libraries to use Bitmap Font labels generated from [bmglyph](http://www.bmglyph.com) created Bitmap Fonts. 
* Animated Character. Example animated character that flies to the location tapped on screen.
* Handy Functions. My most used super handy functions are included in Utilities.h. 

### Renaming your project
1 - Clone the project some place temporary, like your Downloads folder.
```bash
cd ~/Downloads && git clone https://github.com/spritekitbook/sktemplate-swift.git
```

2 - Copy renameProject.sh from the root of the project some place handy, like bin.
```bash
mkdir ~/bin && cp ~/Downloads/sktemplate-swift/renameProject.sh ~/bin
```

3 - Make the script executable.
```bash
chmod +x ~/bin/renameProject.sh
```

4 - Rename the project using the renameProject.sh script.
```bash
~/bin/renameProject.sh sktemplate-swift MyCoolGame
```


### Screenshot
<p align="center">
  <img src="https://github.com/spritekitbook/spritekitbook.github.io/blob/master/images/sktemplate-swift.png" width="40%">
</p>
