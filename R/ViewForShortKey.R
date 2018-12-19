
ViewForShortKey <- function()
{
  context <- rstudioapi::getActiveDocumentContext()
  text <- context$selection[[1]]$text

  if (nchar(text) == 0) {
    stop("Nothing is highlighted",
         call. = FALSE)
  }

  eval(parse(text = paste0('View(',text,")")))
}
