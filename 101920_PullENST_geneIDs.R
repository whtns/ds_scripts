library(EnsDb.Hsapiens.v86)

ensembl.genes <- read.csv2("~/src/101920_7seq-final_transcript_markers_list.csv", header=T)
glist<-as.character(ensembl.genes[,1])
glis<-gsub(",","",glist)
test<-c("ENST00000563709","ENST00000617575")
geneIDs1 <- ensembldb::select(EnsDb.Hsapiens.v86, keys= glis, keytype = "TXID", columns = c("SYMBOL","TXID"))
write.csv(geneIDs1,"~/src/101920_res1-6_markerGene_Transc_geneNames.csv")
