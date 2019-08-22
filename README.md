# archivedir
This repository contains DOS batch scripts to help you back up your files. The scripts use the great programs [7-Zip](https://www.7-zip.org/) and [Unison](https://www.cis.upenn.edu/~bcpierce/unison/).

# What is it for?
`archivedir.bat` takes a folder, compresses it using 7-Zip, attaches a datestamp, and puts it in a folder of your choosing. `mirror.bat` mirrors (i.e. backs up) a folder to a second one.

# Prerequisites
You need 7-Zip and Unison on your Windows machine. Go to [7-Zip.org](https://www.7-zip.org/) to install 7-Zip, if it is not already installed on your computer. Please specify the location of the executable in the script under `Location of 7zip` in file [archivedir.bat](archivedir.bat). To install [Unison](https://www.cis.upenn.edu/~bcpierce/unison/), download the [Windows binaries](https://www.irif.fr/~vouillon/unison/) and extract only the text version (e.g. `unison X.XX.X text.exe`) to a location of your choosing. Then, specify latter location in file [mirror.bat](mirror.bat) under `Location of unison`.

# Usage
Type `archivedir.bat [Source directory] [Target directory]` to take contents of `[Source directory]`, compress them, and put the compressed file into `[Target directory]`. Similarly, enter `mirror.bat [Source directory] [Target directory]` to mirror (i.e. back up) `[Source directory]` into `[Target directory]`.
