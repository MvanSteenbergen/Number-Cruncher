# Number cruncher!
#
# Crunches numbers (no further questions asked)
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

#' Crunches numbers
#' @returns Nothing. No questions asked.
#' @author Maas van Steenbergen \email{mvansteenbergen@proton.me}

numbercruncher <- function() {
  cat("Welcome to number cruncher. Which number would you like to crunch?\n")
  toCrunch <- readline(prompt = "Enter number to crunch:")
  if (grepl("\\D", toCrunch)) {
    cat("Nice try! That's not a number.\n")
    return(invisible())
  }
  if (nchar(toCrunch) > 10) {
    cat("That's a lot of digits to crunch! I'll try my best...\n")
  } else if (nchar(toCrunch) > 3) {
    cat("Excellent choice. Commence crunching!\n")
  }  else {
    cat("Really, that's all? Child's play!\n")
  }
  while(nchar(toCrunch) != 0){
    cat("om nom nom nom... Crunching...\n")
    toCrunch = substr(toCrunch, 1, nchar(toCrunch)-1)
    cat(toCrunch, "\n")
  }
  cat("Number successfully crunched!\n")
}

