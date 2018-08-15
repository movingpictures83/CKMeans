require(Ckmeans.1d.dp)

input <- function(inputfile) {
  # x contains abundances of ALL nodes across ALL timepoints
  x <<- read.csv(inputfile, header = TRUE);
  cn <<- colnames(x);
  cn <<- cn[2:length(cn)];
}


run <- function() {
  # From the first sample to the last
  for (colnum in 2:length(x)) {
     y <- c(x[,colnum]);
     result <- Ckmeans.1d.dp(y);
     for (rownum in 1:length(result$cluster)) {
        x[rownum,colnum] <<- result$cluster[rownum];
     }
  }  
}

output <- function(outputfile) {
   #write.table(x, file=outputfile, sep=",", append=FALSE, row.names=rownames(x), col.names=colnames(x), na="");
   write.table(x[-1], file=outputfile, sep=",", append=FALSE, row.names=x[,1], col.names=unlist(cn), na="");
}

