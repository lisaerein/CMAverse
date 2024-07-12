
# custom sampling function for parametric bootstrap:
# we want to resample by MSA clusters (varname msa_name3)

csample <- function(data, mle) {
    
    clusters <- unique(data$msa_name3)
    
    rclusters <- sample(clusters, size = length(clusters), replace = T)
    
    out <- NULL
    for (i in 1:length(rclusters)){
        out <- rbind(out, subset(data, msa_name3 %in% rclusters[i]))
    }
    
    out
}