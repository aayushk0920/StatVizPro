library(StatVizPro)

result <- analyze_data(iris)
print(result)


visualize_data(iris, type = "scatter", options = list(x = "Sepal.Length", y = "Sepal.Width"))


generate_report(iris, output_file = "report.html")


model_result <- model_data(iris, formula = Sepal.Length ~ Sepal.Width, model_type = "lm")
print(model_result)


large_data_summary <- handle_large_data(iris, chunk_size = 50)
print(large_data_summary)
