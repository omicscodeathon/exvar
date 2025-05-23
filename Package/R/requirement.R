#' requirement
#' @return Install required packages
#' @export
#'
#' @examples exvar::requirement()

requirement <- function(all = FALSE){
  
  #species selection
  if (all == FALSE){
    cat(paste0("These are the species currently supported by Exvar, choose the number corresponding to the target specie: \n",
             "[1] Homo sapiens \n",
             "[2] Mus musculus \n",
             "[3] Arabidopsis thaliana \n",
             "[4] Drosophila melanogaster \n",
             "[5] Danio rerio \n",
             "[6] Rattus norvegicus \n",
             "[7] Saccharomyces cerevisiae \n",
             "[8] Caenorhabditis elegans \n"))
  species <- readline("Type the number of the species that you would like to use as a reference: ")
    } else {
    species <- 1:8
    }
  
  # Detect operating system
  switch(Sys.info()[['sysname']],
         "Linux"={
           message("Detected operating system: Linux")
           #for all species
           message("Checking BiocManager")
           if (!require("BiocManager")) install.packages("BiocManager")
           if (require("BiocManager")) message("BiocManager installed")
           message("Checking shiny")
           if (!require("shiny")) install.packages("shiny")
           if (require("shiny")) message("shiny installed")
           message("Checking shinydashboard")
           if (!require("shinydashboard")) install.packages("shinydashboard")
           if (require("shinydashboard")) message("shinydashboard installed")
           message("Checking DT")
           if (!require("DT")) install.packages("DT")
           if (require("DT")) message("DT installed")
           message("Checking shinyWidgets")
           if (!require("shinyWidgets")) install.packages("shinyWidgets")
           if (require("shinyWidgets")) message("shinyWidgets installed")
           message("Checking shinythemes")
           if (!require("shinythemes")) install.packages("shinythemes")
           if (require("shinythemes")) message("shinythemes installed")
           message("Checking dplyr")
           if (!require("dplyr")) install.packages("dplyr")
           if (require("dplyr")) message("dplyr installed")
           message("Checking BiocParallel")
           if (!require("BiocParallel")) BiocManager::install("BiocParallel")
           if (require("BiocParallel")) message("BiocParallel installed")
           message("Checking GenomeInfoDb")
           if (!require("GenomeInfoDb")) BiocManager::install("GenomeInfoDb")
           if (require("GenomeInfoDb")) message("GenomeInfoDb installed")
           message("Checking GenomicAlignments")
           if (!require("GenomicAlignments")) BiocManager::install("GenomicAlignments")
           if (require("GenomicAlignments")) message("GenomicAlignments installed")
           message("Checking gmapR")
           if (!require("gmapR")) BiocManager::install("gmapR")
           if (require("gmapR")) message("gmapR installed")
           message("Checking panelcn.mops")
           if (!require("panelcn.mops")) BiocManager::install("panelcn.mops")
           if (require("panelcn.mops")) message("panelcn.mops installed")
           message("Checking R.utils")
           if (!require("R.utils")) install.packages("R.utils")
           if (require("R.utils")) message("R.utils installed")
           message("Checking Rfastp")
           if (!require("Rfastp")) BiocManager::install("Rfastp")
           if (require("Rfastp")) message("Rfastp installed")
           message("Checking Rsamtools")
           if (!require("Rsamtools"))  BiocManager::install("Rsamtools")
           if (require("Rsamtools")) message("Rsamtools installed")
           message("Checking VariantTools")
           if (!require("VariantTools"))  BiocManager::install("VariantTools")
           if (require("VariantTools")) message("VariantTools installed")
           message("Checking tools")
           if (!require("tools")) install.packages("tools")
           if (require("tools")) message("tools installed")
           message("Checking data.table")
           if (!require("data.table")) install.packages("data.table")
           if (require("data.table")) message("data.table installed")
           message("Checking readr")
           if (!require("readr")) install.packages("readr")
           if (require("readr")) message("readr installed")
           message("Checking DESeq2")
           if (!require("DESeq2")) BiocManager::install("DESeq2")
           if (require("DESeq2")) message("DESeq2 installed")
           message("Checking ggplot2")
           if (!require("ggplot2")) install.packages("ggplot2")
           if (require("ggplot2")) message("ggplot2 installed")
           message("Checking ComplexHeatmap")
           if (!require("ComplexHeatmap")) BiocManager::install("ComplexHeatmap")
           if (require("ComplexHeatmap")) message("ComplexHeatmap installed")
           message("Checking clusterProfiler")
           if (!require("clusterProfiler")) BiocManager::install("clusterProfiler")
           if (require("clusterProfiler")) message("clusterProfiler installed")
           message("Checking AnnotationDbi")
           if (!require("AnnotationDbi")) BiocManager::install("AnnotationDbi")
           if (require("AnnotationDbi")) message("AnnotationDbi installed")
           message("Checking enrichplot")
           if (!require("enrichplot")) BiocManager::install("enrichplot")
           if (require("enrichplot")) message("enrichplot installed")
           message("Checking GenomicFeatures")
           if (!require("GenomicFeatures"))  BiocManager::install("GenomicFeatures")
           if (require("GenomicFeatures")) message("GenomicFeatures installed")
           message("Checking stringr")
           if (!require("stringr")) install.packages("stringr")
           if (require("stringr")) message("stringr installed")
           message("Checking VariantAnnotation")
           if (!require("VariantAnnotation"))  BiocManager::install("VariantAnnotation")
           if (require("VariantAnnotation")) message("VariantAnnotation installed")
           message("Checking CNVRanger")
           if (!require("CNVRanger")) BiocManager::install("CNVRanger")
           if (require("CNVRanger")) message("CNVRanger installed")
           message("Checking Gviz")
           if (!require("Gviz")) BiocManager::install("Gviz")
           if (require("Gviz")) message("Gviz installed")
           message("Checking AnnotationHub")
           if (!require("AnnotationHub")) BiocManager::install("AnnotationHub")
           if (require("AnnotationHub")) message("AnnotationHub installed")
           message("Checking regioneR")
           if (!require("regioneR")) BiocManager::install("regioneR")
           if (require("regioneR")) message("regioneR installed")
           message("Checking ggnewscale")
           if (!require("ggnewscale")) install.packages("ggnewscale")
           if (require("ggnewscale")) message("ggnewscale installed")
           message("Checking tibble")
           if (!require("tibble")) install.packages("tibble")
           if (require("tibble")) message("tibble installed")
           ########
         },
         "Windows"={
           message("Detected operating system: Windows")
           message("Checking BiocManager")
           if (!require("BiocManager")) install.packages("BiocManager")
           if (require("BiocManager")) message("BiocManager installed")
           message("Checking shiny")
           if (!require("shiny")) install.packages("shiny")
           if (require("shiny")) message("shiny installed")
           message("Checking shinydashboard")
           if (!require("shinydashboard")) install.packages("shinydashboard")
           if (require("shinydashboard")) message("shinydashboard installed")
           message("Checking DT")
           if (!require("DT")) install.packages("DT")
           if (require("DT")) message("DT installed")
           message("Checking shinyWidgets")
           if (!require("shinyWidgets")) install.packages("shinyWidgets")
           if (require("shinyWidgets")) message("shinyWidgets installed")
           message("Checking shinythemes")
           if (!require("shinythemes")) install.packages("shinythemes")
           if (require("shinythemes")) message("shinythemes installed")
           message("Checking dplyr")
           if (!require("dplyr")) install.packages("dplyr")
           if (require("dplyr")) message("dplyr installed")
           message("Checking GenomeInfoDb")
           if (!require("GenomeInfoDb")) BiocManager::install("GenomeInfoDb")
           if (require("GenomeInfoDb")) message("GenomeInfoDb installed")
           message("Checking tools")
           if (!require("tools")) install.packages("tools")
           if (require("tools")) message("tools installed")
           message("Checking data.table")
           if (!require("data.table")) install.packages("data.table")
           if (require("data.table")) message("data.table installed")
           message("Checking readr")
           if (!require("readr")) install.packages("readr")
           if (require("readr")) message("readr installed")
           message("Checking DESeq2")
           if (!require("DESeq2")) BiocManager::install("DESeq2")
           if (require("DESeq2")) message("DESeq2 installed")
           message("Checking ggplot2")
           if (!require("ggplot2")) install.packages("ggplot2")
           if (require("ggplot2")) message("ggplot2 installed")
           message("Checking ComplexHeatmap")
           if (!require("ComplexHeatmap")) BiocManager::install("ComplexHeatmap")
           if (require("ComplexHeatmap")) message("ComplexHeatmap installed")
           message("Checking clusterProfiler")
           if (!require("clusterProfiler")) BiocManager::install("clusterProfiler")
           if (require("clusterProfiler")) message("clusterProfiler installed")
           message("Checking AnnotationDbi")
           if (!require("AnnotationDbi")) BiocManager::install("AnnotationDbi")
           if (require("AnnotationDbi")) message("AnnotationDbi installed")
           message("Checking enrichplot")
           if (!require("enrichplot")) BiocManager::install("enrichplot")
           if (require("enrichplot")) message("enrichplot installed")
           message("Checking stringr")
           if (!require("stringr")) install.packages("stringr")
           if (require("stringr")) message("stringr installed")
           message("Checking CNVRanger")
           if (!require("CNVRanger")) BiocManager::install("CNVRanger")
           if (require("CNVRanger")) message("CNVRanger installed")
           message("Checking Gviz")
           if (!require("Gviz")) BiocManager::install("Gviz")
           if (require("Gviz")) message("Gviz installed")
           message("Checking AnnotationHub")
           if (!require("AnnotationHub")) BiocManager::install("AnnotationHub")
           if (require("AnnotationHub")) message("AnnotationHub installed")
           message("Checking regioneR")
           if (!require("regioneR")) BiocManager::install("regioneR")
           if (require("regioneR")) message("regioneR installed")
           message("Checking ggnewscale")
           if (!require("ggnewscale")) install.packages("ggnewscale")
           if (require("ggnewscale")) message("ggnewscale installed")
           message("Checking tibble")
           if (!require("tibble")) install.packages("tibble")
           if (require("tibble")) message("tibble installed")
           message("Only packages related to visualisation functions are available for Windows. For full Exvar functionality, a Linux operating system is required.")
         },
         "Darwin"={
           message("The package require a Linux or Windows system")
         }) # is Darwin correct ?
  
  #species specific
  for (species in species){
    switch(species,
         "1"={
           message("Checking BSgenome.Hsapiens.UCSC.hg19")
           if (!require("BSgenome.Hsapiens.UCSC.hg19")) BiocManager::install("BSgenome.Hsapiens.UCSC.hg19")
           if (require("BSgenome.Hsapiens.UCSC.hg19")) message("BSgenome.Hsapiens.UCSC.hg19 installed")
           message("Checking BSgenome.Hsapiens.UCSC.hg38")
           if (!require("BSgenome.Hsapiens.UCSC.hg38")) BiocManager::install("BSgenome.Hsapiens.UCSC.hg38")
           if (require("BSgenome.Hsapiens.UCSC.hg38")) message("BSgenome.Hsapiens.UCSC.hg38 installed")
           message("Checking org.Hs.eg.db")
           if (!require("org.Hs.eg.db")) BiocManager::install("org.Hs.eg.db")
           if (require("org.Hs.eg.db")) message("org.Hs.eg.db installed")
           message("Checking TxDb.Hsapiens.UCSC.hg19.knownGene")
           if (!require("TxDb.Hsapiens.UCSC.hg19.knownGene")) BiocManager::install("TxDb.Hsapiens.UCSC.hg19.knownGene")
           if (require("TxDb.Hsapiens.UCSC.hg19.knownGene")) message("TxDb.Hsapiens.UCSC.hg19.knownGene installed")
           message("Checking TxDb.Hsapiens.UCSC.hg38.knownGene")
           if (!require("TxDb.Hsapiens.UCSC.hg38.knownGene")) BiocManager::install("TxDb.Hsapiens.UCSC.hg38.knownGene")
           if (require("TxDb.Hsapiens.UCSC.hg38.knownGene")) message("TxDb.Hsapiens.UCSC.hg38.knownGene installed")
           message("Checking SNPlocs.Hsapiens.dbSNP144.GRCh37")
           if (!require("SNPlocs.Hsapiens.dbSNP144.GRCh37")) BiocManager::install("SNPlocs.Hsapiens.dbSNP144.GRCh37")
           if (require("SNPlocs.Hsapiens.dbSNP144.GRCh37")) message("SNPlocs.Hsapiens.dbSNP144.GRCh37 installed")
           message("Checking XtraSNPlocs.Hsapiens.dbSNP144.GRCh37")
           if (!require("XtraSNPlocs.Hsapiens.dbSNP144.GRCh37")) BiocManager::install("XtraSNPlocs.Hsapiens.dbSNP144.GRCh37")
           if (require("XtraSNPlocs.Hsapiens.dbSNP144.GRCh37")) message("XtraSNPlocs.Hsapiens.dbSNP144.GRCh37 installed")
           message("Checking SNPlocs.Hsapiens.dbSNP151.GRCh38")
           if (!require("SNPlocs.Hsapiens.dbSNP151.GRCh38")) BiocManager::install("SNPlocs.Hsapiens.dbSNP151.GRCh38")
           if (require("SNPlocs.Hsapiens.dbSNP151.GRCh38")) message("SNPlocs.Hsapiens.dbSNP151.GRCh38 installed")
           message("Checking XtraSNPlocs.Hsapiens.dbSNP144.GRCh38")
           if (!require("XtraSNPlocs.Hsapiens.dbSNP144.GRCh38")) BiocManager::install("XtraSNPlocs.Hsapiens.dbSNP144.GRCh38")
           if (require("XtraSNPlocs.Hsapiens.dbSNP144.GRCh38")) message("XtraSNPlocs.Hsapiens.dbSNP144.GRCh38 installed")
           
         },
         "2"={
           message("Checking BSgenome.Mmusculus.UCSC.mm10")
           if (!require("BSgenome.Mmusculus.UCSC.mm10")) BiocManager::install("BSgenome.Mmusculus.UCSC.mm10")
           if (require("BSgenome.Mmusculus.UCSC.mm10")) message("BSgenome.Mmusculus.UCSC.mm10 installed")
           message("Checking org.Mm.eg.db")
           if (!require("org.Mm.eg.db")) BiocManager::install("org.Mm.eg.db")
           if (require("org.Mm.eg.db")) message("org.Mm.eg.db installed")
           message("Checking TxDb.Mmusculus.UCSC.mm10.knownGene")
           if (!require("TxDb.Mmusculus.UCSC.mm10.knownGene")) BiocManager::install("TxDb.Mmusculus.UCSC.mm10.knownGene")
           if (require("TxDb.Mmusculus.UCSC.mm10.knownGene")) message("TxDb.Mmusculus.UCSC.mm10.knownGene installed")
           
         },
         "3"={
           message("Checking BSgenome.Athaliana.TAIR.TAIR9")
           if (!require("BSgenome.Athaliana.TAIR.TAIR9")) BiocManager::install("BSgenome.Athaliana.TAIR.TAIR9")
           if (require("BSgenome.Athaliana.TAIR.TAIR9")) message("BSgenome.Athaliana.TAIR.TAIR9 installed")
           message("Checking org.At.tair.db")
           if (!require("org.At.tair.db")) BiocManager::install("org.At.tair.db")
           if (require("org.At.tair.db")) message("org.At.tair.db installed")
           message("Checking TxDb.Athaliana.BioMart.plantsmart28")
           if (!require("TxDb.Athaliana.BioMart.plantsmart28")) BiocManager::install("TxDb.Athaliana.BioMart.plantsmart28")
           if (require("TxDb.Athaliana.BioMart.plantsmart28")) message("TxDb.Athaliana.BioMart.plantsmart28 installed")
           
         },
         "4"={
           message("Checking BSgenome.Dmelanogaster.UCSC.dm6")
           if (!require("BSgenome.Dmelanogaster.UCSC.dm6")) BiocManager::install("BSgenome.Dmelanogaster.UCSC.dm6")
           if (require("BSgenome.Dmelanogaster.UCSC.dm6")) message("BSgenome.Dmelanogaster.UCSC.dm6 installed")
           message("Checking org.Dm.eg.db")
           if (!require("org.Dm.eg.db")) BiocManager::install("org.Dm.eg.db")
           if (require("org.Dm.eg.db")) message("org.Dm.eg.db installed")
           message("Checking TxDb.Dmelanogaster.UCSC.dm6.ensGene")
           if (!require("TxDb.Dmelanogaster.UCSC.dm6.ensGene")) BiocManager::install("TxDb.Dmelanogaster.UCSC.dm6.ensGene")
           if (require("TxDb.Dmelanogaster.UCSC.dm6.ensGene")) message("TxDb.Dmelanogaster.UCSC.dm6.ensGene installed")
           
         },
         "5"={
           message("Checking BSgenome.Drerio.UCSC.danRer11")
           if (!require("BSgenome.Drerio.UCSC.danRer11")) BiocManager::install("BSgenome.Drerio.UCSC.danRer11")
           if (require("BSgenome.Drerio.UCSC.danRer11")) message("BSgenome.Drerio.UCSC.danRer11 installed")
           message("Checking org.Dr.eg.db")
           if (!require("org.Dr.eg.db")) BiocManager::install("org.Dr.eg.db")
           if (require("org.Dr.eg.db")) message("org.Dr.eg.db installed")
           message("Checking TxDb.Drerio.UCSC.danRer11.refGene")
           if (!require("TxDb.Drerio.UCSC.danRer11.refGene")) BiocManager::install("TxDb.Drerio.UCSC.danRer11.refGene")
           if (require("TxDb.Drerio.UCSC.danRer11.refGene")) message("TxDb.Drerio.UCSC.danRer11.refGene installed")
           
         },
         "6"={ # rat
           message("Checking BSgenome.Rnorvegicus.UCSC.rn5")
           if (!require("BSgenome.Rnorvegicus.UCSC.rn5")) BiocManager::install("BSgenome.Rnorvegicus.UCSC.rn5")
           if (require("BSgenome.Rnorvegicus.UCSC.rn5")) message("BSgenome.Rnorvegicus.UCSC.rn5 installed")
           message("Checking org.Rn.eg.db")
           if (!require("org.Rn.eg.db")) BiocManager::install("org.Rn.eg.db")
           if (require("org.Rn.eg.db")) message("org.Rn.eg.db installed")
           message("Checking TxDb.Rnorvegicus.UCSC.rn5.refGene")
           if (!require("TxDb.Rnorvegicus.UCSC.rn5.refGene"))BiocManager::install("TxDb.Rnorvegicus.UCSC.rn5.refGene")
           if (require("TxDb.Rnorvegicus.UCSC.rn5.refGene")) message("TxDb.Rnorvegicus.UCSC.rn5.refGene installed")
           
         },
         "7"={
           message("Checking BSgenome.Scerevisiae.UCSC.sacCer3")
           if (!require("BSgenome.Scerevisiae.UCSC.sacCer3")) BiocManager::install("BSgenome.Scerevisiae.UCSC.sacCer3")
           if (require("BSgenome.Scerevisiae.UCSC.sacCer3")) message("BSgenome.Scerevisiae.UCSC.sacCer3 installed")
           message("Checking org.Sc.sgd.db")
           if (!require("org.Sc.sgd.db")) BiocManager::install("org.Sc.sgd.db")
           if (require("org.Sc.sgd.db")) message("org.Sc.sgd.db installed")
           message("Checking TxDb.Scerevisiae.UCSC.sacCer3.sgdGene")
           if (!require("TxDb.Scerevisiae.UCSC.sacCer3.sgdGene")) BiocManager::install("TxDb.Scerevisiae.UCSC.sacCer3.sgdGene")
           if (require("TxDb.Scerevisiae.UCSC.sacCer3.sgdGene")) message("TxDb.Scerevisiae.UCSC.sacCer3.sgdGene installed")
           
         },
         "8"={
           message("Checking BSgenome.Celegans.UCSC.ce11")
           if (!require("BSgenome.Celegans.UCSC.ce11")) BiocManager::install("BSgenome.Celegans.UCSC.ce11")
           if (require("BSgenome.Celegans.UCSC.ce11")) message("BSgenome.Celegans.UCSC.ce11 installed")
           message("Checking org.Ce.eg.db")
           if (!require("org.Ce.eg.db")) BiocManager::install("org.Ce.eg.db")
           if (require("org.Ce.eg.db")) message("org.Ce.eg.db installed")
           message("Checking TxDb.Celegans.UCSC.ce11.refGene")
           if (!require("TxDb.Celegans.UCSC.ce11.refGene")) BiocManager::install("TxDb.Celegans.UCSC.ce11.refGene")
           if (require("TxDb.Celegans.UCSC.ce11.refGene")) message("TxDb.Celegans.UCSC.ce11.refGene installed")
           
         }
  )
  }
}
