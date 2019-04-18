#' @export
glm.summary.multinom <- function (in.object, alpha = 0.05) 
{
  numcats <- length(in.object$lev)-1
  coefs <- round(summary(in.object)$coefficients,3)
  std.errors <- round(summary(in.object)$standard.errors,3)
  lo <- round(coefs - qnorm(1-alpha/2) * std.errors,3)
  hi <- round(coefs + qnorm(1-alpha/2) * std.errors,3)
  out.ls <- lapply(1:numcats, function(x) cbind(coefs[x,], std.errors[x,], lo[x,], hi[x,]))
  out.ls <- lapply(out.ls, function(x){colnames(x) = c("Coefficient","Std. Error",
                                                       paste(1-alpha,"CI Lower"),
                                                       paste(1-alpha,"CI Upper"));return(x)})
  names(out.ls) <- in.object$lev[-1]
  return(out.ls)
}