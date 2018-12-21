
ViewForShortKey <- function()
{
  context <- rstudioapi::getActiveDocumentContext()
  text <- context$selection[[1]]$text

  if (nchar(text) == 0) {

    column <- context[["selection"]][[1]][["range"]][["end"]][["column"]]
    row <- context[["selection"]][[1]][["range"]][["end"]][["row"]]
    row_text <- context[["contents"]][row]

    if(nchar(row_text) == 0)
      stop("Nothing is highlighted", call. = FALSE)

    # unlist(gregexpr("[\\s\\(\\)]", row_text, perl=TRUE))
    ind <-c(0, unlist(gregexpr("[\\s\\(\\),]", row_text, perl=TRUE)), nchar(row_text)+1)
    start_select <- max(ind[ind<column]) + 1
    end_select <- min(ind[ind>=column]) - 1

    text <- substr(row_text,start_select,end_select)
  }
  print(paste0('View(',text,")"))
  eval(parse(text = paste0('View(',text,")")))
}
