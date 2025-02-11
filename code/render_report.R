library(rmarkdown)
render(snakemake@input[["rmd"]],
       output_file = snakemake@output[[1]],
       params = list(csv_file = snakemake@input[["csv"]],
                     plot_code = snakemake@input[["plotr"]],
                     start_year = snakemake@params[["start_year"]],
                     end_year = snakemake@params[["end_year"]]
                    )
      )
