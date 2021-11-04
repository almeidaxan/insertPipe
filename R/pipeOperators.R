insertAssignmentOperator <- function() {
  rstudioapi::insertText(
    paste0(before_space(), "<-", after_space())
  )
}

insertBaseOperator <- function() {
  rstudioapi::insertText(
    paste0(before_space(), "|>", after_space())
    )
}
