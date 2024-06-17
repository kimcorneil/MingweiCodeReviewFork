#Ok so lets start writing some stuff
 

number <- readline(prompt = "Enter a Three Digit Positive Number:")

logical.v <- is.numeric(as.numeric(number))

if (number < 0){
  print(paste(number, "is negative, please try again"))
}

