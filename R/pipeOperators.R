insertAssignmentOperator <- function() {
  rstudioapi::insertText(
    paste0(beforeSpace(),"<-", afterSpace())
  )
}

insertMagrittrCompoundAssignmentOperator <- function() {
  rstudioapi::insertText(
    paste0(beforeSpace(),"%<>%", afterSpace())
    )
}

insertMagrittrTeeOperator <- function() {
  rstudioapi::insertText(
    paste0(beforeSpace(),"%T>%", afterSpace())
    )
}

insertConcatinateOperator <- function() {
  rstudioapi::insertText(
    paste0(beforeSpace(),"%+%", afterSpace())
    )
}

insertInOperator <- function() {
  rstudioapi::insertText(
    paste0(beforeSpace(),"%in%", afterSpace())
    )
}

insertExpositionOperator <- function() {
  rstudioapi::insertText(
    paste0(beforeSpace(),"%$%", afterSpace())
    )
}
