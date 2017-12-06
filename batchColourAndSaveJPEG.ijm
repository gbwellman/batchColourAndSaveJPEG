
macro "batchColourAndSaveJPEG" {
	dirIn = getDirectory("Choose a directory...");

	quality = call("ij.plugin.JpegWriter.getQuality");
	quality = getNumber("JPEG quality (0-100):", quality);
	run("Input/Output...", "jpeg="+quality);

	files = getFileList(dirIn);

	for (i=0; i< files.length ; i++) {
		file = dirIn + files[i];
		open(file);
		rename(file);
		//several other colourising options avaliable - check out Image -> lookup tables
		run("Fire");
		
		run("Input/Output...", "jpeg="+quality);
		
		//If you don't want to prompt for save as use
		saveAs("Jpeg",getTitle());
		//if you want to rename manually use: 
		//saveAs("Jpeg",getTitle());
		close();
	}	
  }
