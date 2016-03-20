## Changelog for sktemplate-swift

### 03/20/2016
- Updated GameFonts bitmap font to include @3x size.
- Added GameTextures singleton class for loading the SKTextureAtlas and returning SKTextures and SKSpriteNodes.
- Added the SoundNames class with string constants for Music and Sound Effect string names.
- Added the SpriteNames class with strong constants for Image string names.
- Added documentation comments to functions in Utilities. View these with alt+left click in Xcode.
- Added "Pop" sound effect on tap in GameScene.
- Updated all OALSimpleAudio code to use SoundNames class vars instead of strings.
- Updated all SKSpriteNode and SKTexture code to use the GameTextures singleton and SpriteNames class. 
- Included renameProject.sh script to rename the temmplate project.
- Changed included music file to "Pinecones.mp3" by Wontolla.