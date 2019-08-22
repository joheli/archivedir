# archivedir
This repository contains DOS batch scripts to help you back up your files.

# What is it for?
`archivedir.bat` takes a folder, compresses it using 7-Zip, attaches a datestamp, and puts it in a folder of your choosing. `mirror.bat` mirrors (i.e. backs up) a folder to a second one.

# Prerequisites
Go to [7-Zip.org](https://www.7-zip.org/) to install 7-Zip, if it is not already installed on your computer. Please specify the location of the executable in the script under `Location of 7zip` in [archivedir.bat](archivedir.bat).

# Usage
Type ```archivedir.bat [Source Folder] [Target Folder]``` to take contents of ```[Source Folder]```, compress them, and put the compressed file into ```[Target folder]```.
