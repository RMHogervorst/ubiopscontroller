# utilities

base="https://api.ubiops.com/v2.1"

#' @noRd
check_ubiobstoken <- function(UBIOPS_TOKEN=NULL){
    if(is.null(UBIOPS_TOKEN)){
        UBIOPS_TOKEN <- Sys.getenv("UBIOPS_TOKEN", unset=NA)
    }
    UBIOPS_TOKEN
}

create_headers <- function(UBIOPS_TOKEN=NULL){
    httr::add_headers("Authorization"= UBIOPS_TOKEN)
}

valid_fields <- function(object){
    if(!is.data.frame(object))stop('Supply a dataframe with columns name and data_type',call. = FALSE)
    if(!all(colnames(object) == c("name","data_type")))stop("colnames should be name & data_type",call. = FALSE)
    allowed_data_types = c("int","string","double","bool","timestamp","array_int","array_double","array_string","blob")
    if(any(object$data_type %in% allowed_data_types))stop(paste0("one of the data types is not: ",paste(allowed_data_types, collapse = ", ")),call. = FALSE)
    object
}

## a function to remove fields that have value NULL from a list.
remove_nulls_from_list <- function(list){
    list[!lengths(list)==0]
}
