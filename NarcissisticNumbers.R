## review

#Ok so lets start writing some stuff
## good start

#make a plan first
#ask for a number and check if its numeric
#break it into digit by keeping it in a string
#Make the list back into a numeric vector 
#cube each digits and sum them up
#if the inserted number is negative, print message 
#if number is not three digits, print a message 

## good plan but lacking some details and ordering
##' line 7 says to ask for a number and check if its a number but the first thing you did was ask for a number
##' which follows the plan, however it wasn't checked until later in the if else statement
##' any changes to the plan or its order were not mentioned if the original plan wasn't followed (ie line 23 was not mentioned in the plan)

## commenting could have been improved on. Line 23 was not in the plan. 
##' lines 22-27 followed plan lines 8-10 but it would have been helpful to specify that or include a breif reason for creating "chr_string", "Numeric_string", and "Sum.cubed.digits:

number <- readline(prompt = "Enter a Three Digit Positive Number:")
numeric.form <- as.numeric(number)

chr_string <- strsplit(number, split = "")
Numeric_string <- as.numeric(unlist(chr_string))
Sum.cubed.digits <- sum(Numeric_string^3)

## commenting lacking in the if else statement
## comments should be included after each time something is checked explaining what is being checked for

if (is.na(numeric.form)){
  print("Input is not a number.")
## stop() could have been used here as well to print the same message as an error instead of a message
} else if (numeric.form < 0){
  print(paste(number, "is negative, please try a different number"))
## good idea to check this!!
} else if ((0 <= numeric.form & 99 > numeric.form)|numeric.form > 999){
## simpler way could be to check if the length of "Numeric_string" == 3 or != 3
  print(paste(number, "is not three digits, please try a different number."))
} else if (Sum.cubed.digits == numeric.form){
  print(paste(number, "is a Narcissistic Number!"))
} else {
  print(paste(number, "is not a Narcissistic Number!"))
}

##' overall great job, the code worked as expected!
##' my main feedback would be to improve on the clarity of the plan and include more comments about why you are doing what you are doing
##' especially if something you have done (ie line 23) was not included in the plan. 
##' as well, in the "if else" it would be helpful to explain at each line what it is you are checking for like we did in class. 

