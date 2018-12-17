
beforeSpace <- function() {

  current_context <- rstudioapi::getSourceEditorContext()
  end_row <-
    as.integer(unlist(current_context$selection)["range.end.row"])
  end_column <-
    as.integer(unlist(current_context$selection)["range.end.column"])
  # browser()
  curren_row = current_context$contents[end_row]
  last_character <- ""

  if(end_column > 1)
  {
  last_character <-
    substr(
      curren_row,
      end_column-1,
      end_column-1)
  }

  return(ifelse(grepl("^\\s+$", last_character),""," "))
}

afterSpace <- function() {

  current_context <- rstudioapi::getSourceEditorContext()
  end_row <-
    as.integer(unlist(current_context$selection)["range.end.row"])
  end_column <-
    as.integer(unlist(current_context$selection)["range.end.column"])

  curren_row = current_context$contents[end_row]
  last_character <- ""

  if(end_column <= nchar(curren_row))
  {
    last_character <-
      substr(
        curren_row,
        end_column,
        end_column)
  }

  return(ifelse(grepl("^\\s+$", last_character),""," "))
}

