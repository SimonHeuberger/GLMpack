#' @export
glm.summary <- function (in.object, alpha = 0.05)
{
  lo <- in.object$coefficient - qnorm(1-alpha/2) * sqrt(diag(summary(in.object)$cov.unscaled))
  hi <- in.object$coefficient + qnorm(1-alpha/2) * sqrt(diag(summary(in.object)$cov.unscaled))
  out.mat <- round(cbind(in.object$coefficient, sqrt(diag(glm.vc(in.object))), lo, hi),5)
  dimnames(out.mat)[[2]] <- c("Coefficient","Std. Error",
                              paste(1-alpha,"CI Lower"),paste(1-alpha,"CI Upper"))
  out.mat
}
