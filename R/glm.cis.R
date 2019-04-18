#' @export
glm.cis <- function(preds, ses, alpha, df){
  tval = qt((1-alpha)/2, df, lower.tail = F)
  raw_conf = cbind(preds-(tval*ses), preds+(tval*ses))
  trans_conf = t(apply(raw_conf, 1, exp))
  out <- cbind(preds, raw_conf, exp(preds), trans_conf)
  colnames(out) <- c('eta', 'low.eta', 'hi.eta', 'pred', 'low.pred', 'hi.pred')
  return(out)
}