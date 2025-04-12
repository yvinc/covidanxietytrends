#' Clean and select variables from COVID dataset
#'
#' This function selects relevant columns and removes rows with missing values.
#'
#' @param df A data frame containing the raw COVID dataset
#' @return A cleaned data frame
#' @importFrom dplyr select
#' @importFrom tidyr drop_na
#' @export
clean_covid_data <- function(df) {
  df |>
    dplyr::select(
      dplyr::all_of(c(
        "date",
        "search_trends_anxiety",
        "new_persons_vaccinated",
        "new_hospitalized_patients",
        "new_confirmed",
        "new_intensive_care_patients"
      ))
    ) |>
    tidyr::drop_na()
}
