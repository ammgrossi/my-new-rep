**Regression Methods 2020**
**Problem Set 2**
**Ariana Grossi**
**Due Date: 01-29-20**

*	Wooldridge Chapter 2 Problem C6

*(iii) Use the data in MEAP93.RAW to estimate the model from part (ii). Report the estimated equation in the usual way, including the sample size and R-squared.

use "C:\Users\gross\Desktop\GU\0. Spring 2020\1. Regressions methods for dev\PS\PS2\Data sets\MEAP93.DTA"

regress math10 lexpend

*(v)	One might worry that regression analysis can produce fitted values for math10 that are greater than 100. Why is this not much of a worry in this data set?

summ math10

clear all

*2.	Wooldridge Chapter 3 Problem 4

use "C:\Users\gross\Desktop\GU\0. Spring 2020\1. Regressions methods for dev\PS\PS2\Data sets\LAWSCH85.DTA"

*(iii)	Using the data in LAWSCH85.RAW, the estimated equation is

regress lsalary LSAT GPA llibvol lcost rank

clear all

* Wooldridge Chapter 3 Problem C1

*(iii)Now, estimate the equation with and without faminc, using the data in BWGHT.RAW. Report the results in equation form, including the sample size and R-squared. Discuss your results, focusing on whether adding faminc substantially changes the estimated effect of cigs on bwght.

use "C:\Users\gross\Desktop\GU\0. Spring 2020\1. Regressions methods for dev\PS\PS2\Data sets\BWGHT.DTA"

regress bwght cigs faminc
regress bwght cigs 

clear all
	
*4. You have been asked to study the effect of attractiveness on wages by a consulting firm covering the market for alternative reproductive options. Assume that they will provide you with an exclusive dataset that includes measures of attractiveness and other factors. The measure of attractiveness is a ranking that ranges from 1 (not so attractive) to 5 (very attractive). The functional form of your dependent variable is Log(wage).

*Using the Wooldridge dataset BEAUTY.DTA run the unrestricted, restricted and the auxiliary models. 

use "C:\Users\gross\Desktop\GU\0. Spring 2020\1. Regressions methods for dev\PS\PS2\Data sets\beauty.DTA"

regress lwage educ looks

regress lwage educ

regress educ looks

clear all

*5. Wooldridge Chapter 3 Problem C6 

*Use the data set in WAGE2.RAW for this problem. As usual, be sure all of the following regressions contain an intercept.

use "C:\Users\gross\Desktop\GU\0. Spring 2020\1. Regressions methods for dev\PS\PS2\Data sets\WAGE2.DTA"

*Run a simple regression of IQ on educ to obtain the slope coefficient, say, (δ_1 ) ̃

regress IQ educ

*Run the simple regression of log(wage) on educ, and obtain the slope coefficient, (β_1 ) ̃

regress lwage educ

*Run the multiple regression of log(wage) on educ and IQ, and obtain the slope coefficients, β ̂_1 and β ̂_2 , respectively.

regress lwage educ IQ 

clear all

*6. Wooldridge Chapter 3 Problem C8 

use "C:\Users\gross\Desktop\GU\0. Spring 2020\1. Regressions methods for dev\PS\PS2\Data sets\DISCRIM.DTA"

*(i)Find the average values of prpblck and income in the sample, along with their standard deviations. What are the units of measurement of prpblck and income?
	
summ prpblck income

*(ii)Consider a model to explain the price of soda, psoda, in terms of the proportion of the population that is black and median income:

regress psoda prpblck income

*(iii) Compare the estimate from part (ii) with the simple regression estimate from psoda on prpblck. Is the discrimination effect larger or smaller when you control for income?

regress psoda prpblck 

*(iv)A model with a constant price elasticity with respect to income may be more appropriate. Report estimates of the model

regress lpsoda prpblck lincome

*(v)Now add the variable prppov to the regression in part (iv). What happens to β ̂_prpblck?

regress lpsoda prpblck lincome prppov
	
*(vi)Find the correlation between log(income) and prppov. Is it roughly what you expected?

corr lincome prppov

clear all
