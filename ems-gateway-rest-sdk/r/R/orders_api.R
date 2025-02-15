# EMS - REST API
#
# This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a href=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 
#
# The version of the OpenAPI document: v1
# Contact: support@coinapi.io
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title Orders operations
#' @description openapi.Orders
#' @format An \code{R6Class} generator object
#' @field apiClient Handles the client-server communication.
#'
#' @section Methods:
#' \describe{
#' \strong{ V1OrdersCancelAllPost } \emph{ Cancel all orders request }
#' This request cancels all open orders on single specified exchange.
#'
#' \itemize{
#' \item \emph{ @param } order.cancel.all.request \link{OrderCancelAllRequest}
#' \item \emph{ @returnType } \link{MessageReject} \cr
#'
#'
#' \item status code : 200 | Result
#'
#' \item return type : MessageReject 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 400 | Input model validation errors.
#'
#' \item return type : ValidationError 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 490 | Exchange is unreachable.
#'
#' \item return type : MessageReject 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ V1OrdersCancelPost } \emph{ Cancel order request }
#' Request cancel for an existing order. The order can be canceled using the &#x60;client_order_id&#x60; or &#x60;exchange_order_id&#x60;.
#'
#' \itemize{
#' \item \emph{ @param } order.cancel.single.request \link{OrderCancelSingleRequest}
#' \item \emph{ @returnType } \link{OrderExecutionReport} \cr
#'
#'
#' \item status code : 200 | The last execution report for the order for which cancelation was requested.
#'
#' \item return type : OrderExecutionReport 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 400 | Input model validation errors.
#'
#' \item return type : ValidationError 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 490 | Exchange is unreachable.
#'
#' \item return type : MessageReject 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ V1OrdersGet } \emph{ Get open orders }
#' Get last execution reports for open orders across all or single exchange.
#'
#' \itemize{
#' \item \emph{ @param } exchange.id character
#' \item \emph{ @returnType } list( \link{OrderExecutionReport} ) \cr
#'
#'
#' \item status code : 200 | Collection of order execution reports.
#'
#' \item return type : array[OrderExecutionReport] 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 490 | Filtered exchange is unreachable.
#'
#' \item return type : MessageReject 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ V1OrdersPost } \emph{ Send new order }
#' This request creating new order for the specific exchange.
#'
#' \itemize{
#' \item \emph{ @param } order.new.single.request \link{OrderNewSingleRequest}
#' \item \emph{ @returnType } \link{OrderExecutionReport} \cr
#'
#'
#' \item status code : 200 | Created
#'
#' \item return type : OrderExecutionReport 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 400 | Input model validation errors.
#'
#' \item return type : ValidationError 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 490 | Exchange is unreachable.
#'
#' \item return type : MessageReject 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 504 | Exchange didn&#39;t responded in the defined timeout.
#'
#' \item return type : MessageReject 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ V1OrdersStatusClientOrderIdGet } \emph{ Get order execution report }
#' Get the last order execution report for the specified order. The requested order does not need to be active or opened.
#'
#' \itemize{
#' \item \emph{ @param } client.order.id character
#' \item \emph{ @returnType } \link{OrderExecutionReport} \cr
#'
#'
#' \item status code : 200 | The last execution report of the requested order.
#'
#' \item return type : OrderExecutionReport 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' \item status code : 404 | The requested order was not found.
#'
#' \item return type : MessageReject 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' }
#'
#'
#' @examples
#' \dontrun{
#' ####################  V1OrdersCancelAllPost  ####################
#'
#' library(openapi)
#' var.order.cancel.all.request <- OrderCancelAllRequest$new() # OrderCancelAllRequest | OrderCancelAllRequest object.
#'
#' #Cancel all orders request
#' api.instance <- OrdersApi$new()
#'
#' result <- api.instance$V1OrdersCancelAllPost(var.order.cancel.all.request)
#'
#'
#' ####################  V1OrdersCancelPost  ####################
#'
#' library(openapi)
#' var.order.cancel.single.request <- OrderCancelSingleRequest$new() # OrderCancelSingleRequest | OrderCancelSingleRequest object.
#'
#' #Cancel order request
#' api.instance <- OrdersApi$new()
#'
#' result <- api.instance$V1OrdersCancelPost(var.order.cancel.single.request)
#'
#'
#' ####################  V1OrdersGet  ####################
#'
#' library(openapi)
#' var.exchange.id <- 'KRAKEN' # character | Filter the open orders to the specific exchange.
#'
#' #Get open orders
#' api.instance <- OrdersApi$new()
#'
#' result <- api.instance$V1OrdersGet(exchange.id=var.exchange.id)
#'
#'
#' ####################  V1OrdersPost  ####################
#'
#' library(openapi)
#' var.order.new.single.request <- OrderNewSingleRequest$new() # OrderNewSingleRequest | OrderNewSingleRequest object.
#'
#' #Send new order
#' api.instance <- OrdersApi$new()
#'
#' result <- api.instance$V1OrdersPost(var.order.new.single.request)
#'
#'
#' ####################  V1OrdersStatusClientOrderIdGet  ####################
#'
#' library(openapi)
#' var.client.order.id <- '6ab36bc1-344d-432e-ac6d-0bf44ee64c2b' # character | The unique identifier of the order assigned by the client.
#'
#' #Get order execution report
#' api.instance <- OrdersApi$new()
#'
#' result <- api.instance$V1OrdersStatusClientOrderIdGet(var.client.order.id)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
OrdersApi <- R6::R6Class(
  'OrdersApi',
  public = list(
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    V1OrdersCancelAllPost = function(order.cancel.all.request, ...){
      apiResponse <- self$V1OrdersCancelAllPostWithHttpInfo(order.cancel.all.request, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    V1OrdersCancelAllPostWithHttpInfo = function(order.cancel.all.request, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`order.cancel.all.request`)) {
        stop("Missing required parameter `order.cancel.all.request`.")
      }

      if (!missing(`order.cancel.all.request`)) {
        body <- `order.cancel.all.request`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/v1/orders/cancel/all"

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "MessageReject", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    V1OrdersCancelPost = function(order.cancel.single.request, ...){
      apiResponse <- self$V1OrdersCancelPostWithHttpInfo(order.cancel.single.request, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    V1OrdersCancelPostWithHttpInfo = function(order.cancel.single.request, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`order.cancel.single.request`)) {
        stop("Missing required parameter `order.cancel.single.request`.")
      }

      if (!missing(`order.cancel.single.request`)) {
        body <- `order.cancel.single.request`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/v1/orders/cancel"

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "OrderExecutionReport", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    V1OrdersGet = function(exchange.id=NULL, ...){
      apiResponse <- self$V1OrdersGetWithHttpInfo(exchange.id, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    V1OrdersGetWithHttpInfo = function(exchange.id=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      queryParams['exchange_id'] <- exchange.id

      body <- NULL
      urlPath <- "/v1/orders"

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "array[OrderExecutionReport]", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    V1OrdersPost = function(order.new.single.request, ...){
      apiResponse <- self$V1OrdersPostWithHttpInfo(order.new.single.request, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    V1OrdersPostWithHttpInfo = function(order.new.single.request, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`order.new.single.request`)) {
        stop("Missing required parameter `order.new.single.request`.")
      }

      if (!missing(`order.new.single.request`)) {
        body <- `order.new.single.request`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/v1/orders"

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "OrderExecutionReport", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    V1OrdersStatusClientOrderIdGet = function(client.order.id, ...){
      apiResponse <- self$V1OrdersStatusClientOrderIdGetWithHttpInfo(client.order.id, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    V1OrdersStatusClientOrderIdGetWithHttpInfo = function(client.order.id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`client.order.id`)) {
        stop("Missing required parameter `client.order.id`.")
      }

      body <- NULL
      urlPath <- "/v1/orders/status/{client_order_id}"
      if (!missing(`client.order.id`)) {
        urlPath <- gsub(paste0("\\{", "client_order_id", "\\}"), URLencode(as.character(`client.order.id`), reserved = TRUE), urlPath)
      }


      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "OrderExecutionReport", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    }
  )
)
