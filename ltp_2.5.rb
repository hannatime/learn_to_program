#Hours in a year
hours_in_a_year = 24*7*52
puts hours_in_a_year

#Minutes in a decade
minutes_in_a_decade = hours_in_a_year*10*60
puts minutes_in_a_decade

#Your age in seconds
age = 33
months = 4
days = 13

age_in_seconds = (age * hours_in_a_year *60*60) + (months * 30 * 24 * 60 * 60) + (days * 24 * 60 * 60)
puts age_in_seconds


author_age_in_seconds = 1025000000
author_age_in_years = author_age_in_seconds / 60 / 60 / 24 / 365
age_in_years = age_in_seconds /60 / 60 / 24 / 365

puts author_age_in_years
puts age_in_years