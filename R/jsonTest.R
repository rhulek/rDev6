jsonTest <- function(records, aggType)
{
  # pouze testovaci vystup
  if(aggType == "mean") {
    return(mean(records$values[[1]]$value));
  } else if(aggType == "median") {
    return(median(records$values[[1]]$value));
  } else {
    return(NULL);
  }
}