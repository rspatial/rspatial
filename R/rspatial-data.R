# Author: Robert J. Hijmans
# Sept 2018
# version 1
# license GPL3


sp_data <- function(name) {
	
	name <- name[1]
	raster::extension(name) <- '.rds'
	fn <- system.file(file.path("rds", name), package="rspatial")
	if (!(file.exists(fn))) {
		stop(paste(name, 'is not a valid data set name.'))
	}
	readRDS(fn)
	
}



sp_download <- function(files, path='data', url='https://biogeo.ucdavis.edu/data/rspatial/') {
	dir.create(path, showWarnings = FALSE)
	for (filename in files) {
		localfile <- file.path(path, filename)
		if (!file.exists(localfile)) {
			utils::download.file(paste0(url, filename), dest=localfile)
		}
		if (tolower(raster::extension(filename)) == '.zip') {
			utils::unzip('data/rsdata.zip', exdir=path)
		}
	}
}

