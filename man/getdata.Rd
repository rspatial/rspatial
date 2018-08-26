\name{sp_data}

\Rdversion{1.1}

 
\alias{sp_data}
\alias{sp_download}


\title{
Get exampled data
}

\description{
Get and example data set
}

\usage{
sp_data(name)
sp_download(files, path='data', url='https://biogeo.ucdavis.edu/data/rspatial/')
}

\arguments{
 \item{name}{data set name}
 \item{files}{filenames to download}
 \item{path}{path (folder) to save the data to}
 \item{url}{url where the data is downloaded from}
}

\value{
A data set. Often a Spatial* object or a data.frame
}



\examples{
auctb <- sp_data('auctb')
crime <- sp_data('crime')
}


\keyword{ spatial }

