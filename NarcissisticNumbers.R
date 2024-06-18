#Ok so lets start writing some stuff
#make a plan first
#ask for a number and check if its numeric
#break it into digit by keeping it in a string
#Make the list back into a numeric vector 
#cube each digits and sum them up
#if the inserted number is negative, print message 
#if number is not three digits, print a message 
 

number <- readline(prompt = "Enter a Three Digit Positive Number:")
numeric.form <- as.numeric(number)

chr_string <- strsplit(number, split = "")
Numeric_string <- as.numeric(unlist(chr_string))
Sum.cubed.digits <- sum(Numeric_string^3)


if (is.na(numeric.form)){
  print("Input is not a number.")
} else if (numeric.form < 0){
  print(paste(number, "is negative, please try a different number"))
} else if ((0 <= numeric.form & 99 > numeric.form)|numeric.form > 999){
  print(paste(number, "is not three digits, please try a different number."))
} else if (Sum.cubed.digits == numeric.form){
  print(paste(number, "is a Narcissistic Number!"))
} else {
  print(paste(number, "is not a Narcissistic Number!"))
}

