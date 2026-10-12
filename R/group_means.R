
## average one column within the groups of another
group_means <- function(data, group, value) {
    summarise(group_by(data, .data[[group]]), mean = mean(.data[[value]]))
}

## and draw those averages as bars
plot_group_means <- function(data, group, value) {
    ggplot(group_means(data, group, value), aes(x = factor(.data[[group]]), y = .data$mean)) +
        geom_col() +
        labs(x = group, y = value)
}
