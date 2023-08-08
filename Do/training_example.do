use https://github.com/scunning1975/mixtape/raw/master/training_example.dta, clear
histogram age_treat, bin(10) frequency
histogram age_control, bin(10) frequency
su age_treat age_control
drop in -5/-1 /* to drop the observations in the source file I don't know to amend the file*/
destring earnings_treat, replace /*the variable contain the integers values as string; this would convert*/
su earnings_treat earnings_control

histogram age_treat, bin(10) frequency
histogram age_matched, bin(10) frequency
su age_treat age_control
su earnings_matched earnings_treat /*this needs to be comparison with the matched control and the treatment mean*/
