#Install
if (!requireNamespace('BiocManager', quietly = TRUE))
    install.packages('BiocManager')

BiocManager::install('EnhancedVolcano')

#Load package
library(EnhancedVolcano)

#CONVERT logFC from Seurat output (natural log) to Log2 value
#Read in CSV
DEdata<-read.csv("Z:/Documents/Grad School/Data/Sequencing Projects/Fetal Retina/7_seq_May2020/DE_results/051620_noLR_ActD_Dup_nonPR(otx2-)_no1085_noSHL_noOpsinOutlier_0-4res_rod1vscone0_DE_tTest.csv", head = TRUE, sep=",")

#convert symbols from Factor to Character
DEdata$symbol <- as.character(DEdata$symbol)
#basic volcano plot. Label has to be column identity not just name of column like X and Y
EnhancedVolcano(DEdata,
                lab = DEdata$symbol,
                x = 'log2FC',
                y = 'p_val_adj',
                xlim = c(-5,4),
                title='0.4 Rod Cluster 0 vs Cone Cluster 1 TTest')

#Save and output 
