#' Create Pairs Plot and Save Plot
#'
#' Generates a pairs plot for all variables in the dataset using ggpairs and saves it to a file.
#'
#' @param data A data frame containing the variables to plot.
#' @param output_file Path to save the output figure.
#' @param width Width of the plot in inches (default: 16).
#' @param height Height of the plot in inches (default: 12).
#' @return None (saves the plot to a file).
#' @importFrom GGally ggpairs
#' @importFrom ggplot2 ggsave theme ggtitle element_text aes
#' @export
#' @examples
#' data <- data.frame(a = rnorm(10), b = rnorm(10))
#' temp_file <- tempfile(fileext = ".png")
#' on.exit(unlink(temp_file))  # this cleans up the file after the example runs
#' create_pairs_plot(data, temp_file)
create_pairs_plot <- function(data, output_file, width = 16, height = 12) {
  options(repr.plot.width = width, repr.plot.height = height)

  plot <- GGally::ggpairs(data, aes(alpha = 0.5)) +
    ggplot2::theme(text = element_text(size = 13)) +
    ggplot2::ggtitle("Pairs plot for all variables of interest for exploration") +
    ggplot2::theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1))

  ggplot2::ggsave(output_file, plot)
}
