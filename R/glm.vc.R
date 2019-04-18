#' @export
glm.vc <- function(obj){summary(obj)$dispersion * summary(obj)$cov.unscaled}