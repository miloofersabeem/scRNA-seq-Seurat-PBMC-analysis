# Single-cell RNA-seq analysis using Seurat (PBMC dataset)

This repository contains an end-to-end single-cell RNA-seq analysis workflow using the Seurat package in R on a PBMC dataset. The project was developed to build practical single-cell analysis skills starting from a transcriptomics and functional genomics background.

## Project overview

The workflow includes:

- Quality control and filtering
- Normalization and identification of variable features
- PCA and dimensionality reduction
- Clustering and UMAP visualization
- Cell type annotation using canonical marker genes
- Differential expression analysis between T cells and monocytes
- Functional enrichment analysis of marker genes using Enrichr

## Dataset

- PBMC single-cell RNA-seq dataset
- Processed in Seurat using a lightweight workflow suitable for a low-resource laptop

## Main analysis steps

1. Loaded and inspected the Seurat object  
2. Calculated mitochondrial percentage and performed QC filtering  
3. Normalized expression data  
4. Selected highly variable genes  
5. Performed PCA  
6. Built nearest-neighbor graph and clusters  
7. Generated UMAP visualization  
8. Identified marker genes for major immune cell populations  
9. Removed ambiguous low-confidence rare cluster  
10. Compared T cells vs monocytes using differential expression  
11. Interpreted enriched biological processes using Enrichr  

## Major cell populations identified

- T cells
- Monocytes
- Platelets
- B cells
- NK cells

## Key results

### Cell type annotation
Canonical marker genes supported cluster identities:

- **T cells**: CD3D, CD2, CCR7
- **Monocytes**: LYZ, S100A8, CD14
- **NK cells**: GNLY
- **B cells**: MS4A1
- **Platelets**: PPBP

### Differential expression
Differential expression analysis between T cells and monocytes identified strong lineage-specific markers:

- **T cell-enriched genes**: IL32, CD2, LAT, CD3D, CD27, CCR7
- **Monocyte-enriched genes**: TYROBP, S100A8, S100A9, LYZ, FCN1, CD14

### Functional enrichment
Functional interpretation of differential expression results showed:

- **T cells**: T cell activation, positive regulation of T cell activation, lymphocyte differentiation, cytokine production
- **Monocytes**: Toll-like receptor signaling pathway, pattern recognition receptor signaling, leukocyte chemotaxis, innate immune response

## Files in this repository

- `scRNA_pipeline.R` — main Seurat workflow script
- `umap.png` — UMAP visualization of clustered cell populations
- `featureplot.png` — marker gene expression visualization
- `heatmap.png` — heatmap of selected marker genes
- enrichment plots for T cells and monocytes

## Tools used

- R
- Seurat
- dplyr
- tibble
- Enrichr

## Learning goal

This project was developed as a structured transition from bulk RNA-seq and functional genomics into single-cell transcriptomics analysis, with emphasis on biological interpretation, clean workflow design, and reproducible visualization.
