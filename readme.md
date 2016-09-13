##### This script is to process images shot when in RAW + JPG mode (God forbid you find yourself shooting this).

###### Usage

`$ ruby photo_script.rb <path_to_dir_containing_images> <raw_file_extension_of_your_camera>`

It will loop through all pictures in a given directory.  
If the picture is RAW, it will check to see if there exists a JPG with the same name. If so, it deletes the RAW file. If not, it uses imageMagick to convert the RAW to JPG, then deletes the RAW file. This will leave only unique JPGs.

This requires ruby, imageMagick, and ufraw-batch dependency for imageMagick. Depending on the specific extension of RAW file you have, you may need to install another delegate for imageMagick to convert the file correctly.

TODO
* Let user specify multiple formats of RAW to search for within the directory
* Create justification for writing this script, which took 4x longer than doing it manually in Lightroom
