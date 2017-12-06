# batchColourAndSaveJPEG
simple ImageJ script for loading all files from a folder, colourising and saving as JPEG

Developed to colourise .gel images produced by GE Healthcare ImageQuant LAS1000 - Luminescence Image Analyser 

Pretty basic but functional plugin for imageJ:
- Prompts to select directory (will attempt to process all images in that folder so only include the files you want to be processed in there)
- requests JPEG quality
- loads files
- colourises ("Fire")
- prompts to save
- close()

Some comments in plug-in script if you edit how files are saved and the LUTS (colourising) method.

To use: 
- Requires ImageJ (standard installation is enough)
- Copy and paste into your ImageJ/plugins folder 
- Re-start Image
- Run via plugins drop down menu within ImageJ
