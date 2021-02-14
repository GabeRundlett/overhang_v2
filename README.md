# Overhang v2
### A CS:GO map made by me and Anders.

This repository just holds the version history for our map in the cloud so that
 * we can download the latest map files from each other in order to easily collaborate
 * go back to older revisions and compare changes if we change our minds
 * we can easily share assets and share scripts to have them placed in the correct folder

One problem we had before the creation of this solution was that sharing models was not
just terribly tedious, but also confusing. Because of this, we can create scripts that allow
for us to compile and or move the model files to the correct folders

![Custom model in the editor](/screenshots/editor_custom_model.png)

## The folder structure

Most mappers will create their maps in a single file, and this is definitely the easiest
way to get started, however it brings in a few issues. 
 * When creating a 3dskybox, one needs to MANUALLY do math to figure out the relative coordinates of objects.
 * cluttered workspace (can partially be solved by visgroups)
 * changing one part of the map, with version history, updates the whole map file
 
These issues are mitigated by separating the map into multiple files. Now, if we have a 3d skybox, it can
be in a different place in the level than where it appears in the main editor by moving the func_instance. 
This means that the only math that needs to be done to place things correctly is scale by the factor of the
skybox cam

