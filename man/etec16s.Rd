\docType{data}
\name{etec16s}
\alias{etec16s}
\title{Curated dataset of many healthy and moderate-to-severe diarretic gut 16s samples on the 454 FLEX platform.}
\description{
 Data used in 'Individual-specific changes in the human gut microbiota after challenge with enterotoxigenic Escherichia coli and subsequent ciprofloxacin treatment'.
  
 DNA was amplified using 'universal' primers targeting the V1-V2 region of the 16S rRNA gene (small subunit of the ribosome) in bacteria - 338R (5'- CATGCTGCCTCCCGTAGGAGT -3') and 27F (5'- AGAGTTTGATCCTGGCTCAG -3').  Both forward and reverse primers had a 5' portion specific for use with 454 GS-FLX Titanium sequencing technology and the forward primers contained a barcode between the Titanium and gene specific region, so that samples could be pooled to a multiplex level of 132 samples per instrument run. 

16S rRNA gene sequencing was performed for all available stool samples.  After sequencing, 124 samples passed quality controls, corresponding to data from 5 volunteers with the most unambiguous cases of diarrhea during the study (54 samples) and 7 volunteers without diarrheal symptoms who had the most stool samples (78 samples). The raw data have been submitted to NCBI under project ID: PRJNA298336.

Briefly, the sequenced reads were filtered for quality and were clustered with DNAclust36 to 99 percent identity clusters that were further annotated with Ribosomal Database (RDP) (rdp.cme.msu.edu, release 10.4). Sequences without a nearly identical match to RDP (> 100 bp perfect match and > 97 percent identity, as defined by BLAST) were marked as having "no genus match" and assigned an operational taxonomic unit (OTU) identifier. Chimera checking was done with Perseus/UCHIME.

Selected OTUs (e.g., OTUs belonging to the pre-infection biomarker) were aligned with Mega BLAST against the NCBI nt database.  Manual inspection of the results based on percent identity and query sequence coverage was used to refine the automatically determined taxonomic classification.  If the best BLAST hit differed by more than 3 percent from the query sequence, or covered less than 95 percent of the query sequence, classification was done at the genus level only based on the taxonomy labels of the top hits.
}
\section{format}{
  Data is stored as an \code{\link{MRexperiment-class}} object. Using \code{MRcounts} one can obtain the 16S count matrix produced using using DNAclust (http://dnaclust.sourceforge.net/). The
  \code{pData} function accesses a data frame with the
  following columns: \describe{
  \item{\code{SubjectID}:}{Subject ID}
  \item{\code{Dose}:}{Quantity of ETEC given}
  \item{\code{Day}:}{Relative Day}
  \item{\code{AnyDayDiarrhea}:}{Did the subject ever get diarrhea during the study}
  \item{\code{Diarrhea}:}{Did subject have diarrhea on day of student}
  \item{\code{AntiGiven}:}{Was antibiotic given on specific day}
  \item{\code{AntibPrev}:}{Was antibiotic given previously}
  }
  The
  \code{fData} function accesses a data frame with the
  following columns: \describe{
  \item{\code{OTU.ID}:}{OTU cluster id}
  \item{\code{Center}:}{Sequencing read center ID}
  \item{\code{Phylum}:}{phylum}
  \item{\code{Class}:}{class}
  \item{\code{Order}:}{order}
  \item{\code{Family}:}{family}
  \item{\code{Genus}:}{genus}
  \item{\code{Strain}:}{Strain}
  \item{\code{clusterCenter}:}{The OTU cluster's representative sequence}
  }
}
\examples{
data(etec16s)
head(pData(etec16s))
head(fData(etec16s))
}
\author{
  Joseph N. Paulson
}
\references{
 'Individual-specific changes in the human gut microbiota after challenge with enterotoxigenic Escherichia coli and subsequent ciprofloxacin treatment'
}
\seealso{
  \code{\link{MRexperiment-class}} for the class definition,
  \code{\link[metagenomeSeq]{cumNorm}} to
  normalize the counts.
}
\keyword{datasets}

