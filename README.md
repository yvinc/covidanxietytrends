# covidanxietytrends <img src="https://img.shields.io/badge/version-0.0.0.9000-blue" align="right" />

![R-CMD-check](https://github.com/DSCI-310-2025/covidanxietytrends/workflows/R-CMD-check/badge.svg) 
[![codecov](https://codecov.io/gh/DSCI-310-2025/covidanxietytrends/branch/main/graph/badge.svg)](https://codecov.io/gh/DSCI-310-2025/covidanxietytrends)

## An analysis package for COVID-19 and anxiety trends correlation

The `covidanxietytrends` R package provides tools to analyze relationships between COVID-19 public health metrics (hospitalizations, vaccinations) and anxiety-related Google search trends. It includes functions for data cleaning, visualization, and statistical modeling. Originally designed for the [Google COVID-19 Open Data](https://github.com/GoogleCloudPlatform/covid-19-open-data/blob/main/docs/table-vaccinations.md) vaccination dataset, its modular design allows for extension to other pandemic-related datasets.

## Installation
Install the development version from GitHub:
> **Dependency** package `devtools` is required to use `install_github()`.
> Please use `install.packages("devtools")` to first install the `devtools` library, then run the following code in R:

``` r
# install.packages("devtools")
devtools::install_github("DSCI-310-2025/covidanxietytrends")
```

## Main Functionality
Key features include:

- `clean_covid_data()` - Prepares raw COVID-19/anxiety trend data for analysis
- `eda_viz()` - Generates time-series visualizations of anxiety trends vs COVID metrics
- `feature_selection()` - Identifies significant pandemic indicators
- `make_final_lm_model()` - Builds predictive linear models
- `plot_anxiety_time_series()` - Creates publication-ready trend plots
All functions include error handling and automated testing.

## Example Usage

``` r
library(covidanxietytrends)

# Clean sample data
clean_data <- clean_covid_data(covid_df)

# Visualize trends
eda_viz(clean_data)

# Select significant features
selected <- feature_selection(clean_data)

# Build predictive model
model <- make_final_lm_model(clean_data)
```

## Background 
This package was made as a part of the circumlum for the University of British Columbia's Data Science 310 course to support our project on the correleation of COVID-19 hospitalization rates, vaccine numbers and Google search trends with the key term of anxiety. The **project repository** can be found [here](https://github.com/DSCI-310-2025/dsci-310-group-14). The package was developed based on the data found for the [Google COVID-19 Open Data](https://github.com/GoogleCloudPlatform/covid-19-open-data/blob/main/docs/table-vaccinations.md)

## Testing and CI 
- All functions include unit and integration tests using `testthat`.

##  License

This project is licensed under the [MIT License](LICENSE.md).

## Contributors

- Alina Hameed
- Vincy Huang
- Alan Lee
- Charlotte Ren



