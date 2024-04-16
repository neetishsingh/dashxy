# AUTO GENERATED FILE - DO NOT EDIT

#' @export
abc <- function(id=NULL, label=NULL, style=NULL, value=NULL) {
    
    props <- list(id=id, label=label, style=style, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Abc',
        namespace = 'dashxy',
        propNames = c('id', 'label', 'style', 'value'),
        package = 'dashxy'
        )

    structure(component, class = c('dash_component', 'list'))
}
