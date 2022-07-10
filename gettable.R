#'Gets table from url
#'@export
#'@param a URL of the required table
get_table <- function(a) {
  my_link = a
  my_df = my_link %>%
    read_html(x = .) %>%
    html_node(., ".wikitable") %>%
    html_table(x = ., fill = TRUE)
  return(my_df)
}
