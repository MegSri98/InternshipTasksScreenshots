# Creating a package on R

Here we will learn how to create a simple R package


## 1) What is R package?
Packages are bundles of code and data that can be written by anyone in the R community. R Packages can be used to serve several purposes.
Here we will create a package whose function will be download data from a table when we enter any given URL.

## 2) Packages needed
Two packages that we need to install before we begin will be

devtools – This contains tools required for development
```
 install.packages("devtools") 
 ```
roxygen – This will help easy documentation of your package
```
 install.packages("roxygen2") 
 ```

## 3) Let’s start creating the package
You must begin by creating a new project in a new directory.
Start your project in a brand-new directory. Create an R package and name it whatever you would like. 
Few folders will be created in your workspace after the above step

Click on the R folder and open the script hello.r. Here you will type in your code(function)

For this example, the code that I have used is
```

get_table <- function(a) {

 my_link = a

 my_df = my_link %>%

 read_html(x = .) %>%

 html_node(., ".wikitable") %>%

 html_table(x = ., fill = TRUE)

 return(my_df)

} 
 ```


After writing the function. You check it for errors and warnings

## 4) Description file
We must update the description file of our package with information required for the user like title, version, author, license.

## 5) Package Documentation
We will use roxygen for this. The documentation can be made simple or complex depending on the developer’s personal preference. For this we will add more details to our original R code.

```
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
```
 With this a simple R package is created