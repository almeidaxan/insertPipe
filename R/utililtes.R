after_space <- function() {
  context_info <- get_context_info()
  current_row <- context_info$current_row
  end_column <- context_info$end_column

  if (end_column <= nchar(current_row)) {
    last_character <- substr(
      current_row,
      end_column,
      end_column
    )
  } else {
    last_character <- ""
  }

  ifelse(grepl("^\\s+$", last_character), "", " ")
}

before_space <- function() {
  context_info <- get_context_info()
  current_row <- context_info$current_row
  end_column <- context_info$end_column

  if (end_column > 1) {
    last_character <- substr(
      current_row,
      end_column - 1,
      end_column - 1
    )
  } else {
    last_character <- ""
  }

  ifelse(grepl("^\\s+$", last_character), "", " ")
}

get_context_info <- function() {
  current_context <- rstudioapi::getActiveDocumentContext()

  end_row <- as.integer(
    unlist(current_context$selection)["range.end.row"]
  )

  end_column <- as.integer(
    unlist(current_context$selection)["range.end.column"]
  )

  list(
    current_row = current_context$contents[end_row],
    end_column = end_column
  )
}
