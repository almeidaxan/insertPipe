insertMagrittrCompoundAssignmentOperator <- function() {
  glyph <- paste0("%<>%", " ")
  rstudioapi::insertText(ifelse(nextToSpace(), glyph, prefixSpace(glyph)))
}

insertMagrittrTeeOperator <- function() {
  glyph <- paste0("%T>%", " ")
  rstudioapi::insertText(ifelse(nextToSpace(), glyph, prefixSpace(glyph)))
}

insertConcatinateOperator <- function() {
  rstudioapi::insertText(paste0(beforeSpace(),"%+%", afterSpace()))
}

insertInOperator <- function() {
  glyph <- paste0("%in%", " ")
  rstudioapi::insertText(ifelse(nextToSpace(), glyph, prefixSpace(glyph)))
}

insertExpositionOperator <- function() {
  glyph <- paste0("%$%", " ")
  rstudioapi::insertText(ifelse(nextToSpace(), glyph, prefixSpace(glyph)))
}
