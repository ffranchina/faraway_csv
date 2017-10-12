#!/usr/bin/Rscript

args <- commandArgs(trailingOnly=TRUE)

rda_filename <- args[1]
data_name <- load(rda_filename)
csv_filename <- paste(c(data_name, 'csv'), collapse='.')

write.csv(get(data_name), csv_filename)
