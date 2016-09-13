##### This script is to process images shot when in RAW + JPG mode (God forbid you find yourself shooting this).

###### Usage

`$ ruby photo_script.rb <path_to_dir_containing_images>`

It will loop through all pictures in a given directory.  
If it is a JPG, it will check to see if there exists a RAW with the same name. If there is, it deletes it. If the picture is RAW, it will check to see if there exists a JPG with the same name. If so, it deletes the RAW file. If not, it uses imageMagick to convert the RAW to JPG, then deletes the RAW file.  

This requires ruby, imageMagick, and ufraw-batch dependency for imageMagick. Depending on the specific extension of RAW file you have, you may need to install another delegate for imageMagick to convert the file correctly.

TODO

* Add additional flag to control which format of
 RAW will be searched for (currently hardcoded to DNGs)
* Let user specify multiple formats of RAW to search for within the directory
