library(Seurat)
library(seuratTools)
library(tidyverse)

seu <- readRDS("~/single_cell_projects/integrated_projects/7-seq_050120/output/seurat/Final_dataset_duplicate_070320.rds")
seu <- map(seu, SetDefaultAssay, "RNA")
seu <- map(seu, Seurat:::CalcN)
seu <- map(seu, SetDefaultAssay, "integrated")
