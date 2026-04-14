# Single-cell RNA-seq analysis using Seurat (PBMC dataset)

# Load libraries
library(Seurat)
library(dplyr)

# Set working directory
setwd("C:/Users/user/Documents/scRNA_project")

# Load cleaned annotated object
pbmc_clean <- readRDS("pbmc_clean.rds")

# Check identities
table(Idents(pbmc_clean))
DimPlot(pbmc_clean, reduction = "umap", label = TRUE)

# Differential expression: T cells vs Monocytes
deg_t_vs_mono <- FindMarkers(
  pbmc_clean,
  ident.1 = "T cells",
  ident.2 = "Monocytes",
  min.pct = 0.3,
  logfc.threshold = 0.5,
  max.cells.per.ident = 500
)

# Inspect differential expression results
head(deg_t_vs_mono)
deg_t_vs_mono[order(-deg_t_vs_mono$avg_log2FC), ][1:10, ]
deg_t_vs_mono[order(deg_t_vs_mono$avg_log2FC), ][1:10, ]

# Selected marker genes for visualization
genes2 <- c("CD3D", "CD2", "CCR7", "LYZ", "S100A8", "CD14")

# Scale selected genes for heatmap
pbmc_clean <- ScaleData(pbmc_clean, features = genes2)

# Plot marker heatmap
DoHeatmap(pbmc_clean, features = genes2)

# Save plots
png("umap.png", width = 2000, height = 1500, res = 200)
DimPlot(pbmc_clean, reduction = "umap", label = TRUE)
dev.off()

png("featureplot.png", width = 2000, height = 1500, res = 200)
FeaturePlot(pbmc_clean, features = c("CD3D", "LYZ"))
dev.off()

png("heatmap.png", width = 2000, height = 1500, res = 200)
DoHeatmap(pbmc_clean, features = genes2)
dev.off()