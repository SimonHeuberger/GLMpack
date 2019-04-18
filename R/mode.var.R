#' @export
mode.var <- function(var){
  tab = table(var)
  return(names(tab)[which(tab==max(tab))])
}