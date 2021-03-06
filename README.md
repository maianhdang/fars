# fars
### Functions of Analyze Fatality Accidents Data
##### Author: "Anh Dang (assignment from Coursera)"
#### Travis Badge
# [![Build Status](https://travis-ci.org/maianhdang/fars.svg?branch=master)](https://travis-ci.org/maianhdang/fars)

## Package Info
This is the instruction for all related functions included in `fars` package to
assess and analyze the data from the US National Highway Traffic Safety Administration's
Data, including:

- `fars_read`: to take the table format data and create a data frame
- `make_filename`: to create a valid name of data by inputed year
- `fars_read_years`: to months having fatal accidents by months
- `fars_summarize_years`: to summarize the number of fatal accidents by months and years
- `fars_map_state`: to plots the locations of accidents of a state in a specific year by longtitude and latitude

## Data Info
The functions applied to the data from using data from the US National Highway Traffic Safety Administration's Fatality Analysis Reporting System, which is a nationwide census providing the American public yearly data regarding fatal injuries suffered in motor vehicle traffic crashes. 

The package includes the data in 2013, 2014, 2015, named `accident_2013.csv.bz2`, `accident_2014.csv.bz2`, `accident_2015.csv.bz2` respectively 


## (1) fars_read

Functions `fars_read` reads a file with `filename` in table format to create the data frame.

```{r warning = FALSE, message = FALSE}
fars::fars_read("accident_2013.csv.bz2")
```

## (2) make_filename

Function `make_filename` takes an `year` and create a filename in the format of `"accident_year.csv.bz2"`

```{r warning = FALSE, message = FALSE}
fars::make_filename(2014)
```

## (3) fars_read_years

Function `fars_read_years` takes a list of years and return the data of specific years, which only remains the variables of `MONTH` and `year`. It returns `NULL` if inputing invalid years.

```{r warning = FALSE, message = FALSE, eval=FALSE}
library(dplyr)
fars::fars_read_years(c(2012, 2013))
```

## (4) fars_summarize_years

Function `fars_summarize_years` summarizes the number of fatal accidents in each `year` by `MONTH`.


## (5) fars_map_state

The figure sizes have been customised so that you can easily put two images side-by-side. 

```{r warning = FALSE, message = FALSE, fig.show='hold'}
library(graphics)
library(maps)
fars::fars_map_state(1,2014)
```
