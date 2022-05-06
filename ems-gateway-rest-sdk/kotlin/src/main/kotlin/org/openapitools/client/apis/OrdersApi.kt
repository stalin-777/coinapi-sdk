/**
 * EMS - REST API
 *
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a href=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package org.openapitools.client.apis

import java.io.IOException

import org.openapitools.client.models.MessageReject
import org.openapitools.client.models.OrderCancelAllRequest
import org.openapitools.client.models.OrderCancelSingleRequest
import org.openapitools.client.models.OrderExecutionReport
import org.openapitools.client.models.OrderNewSingleRequest
import org.openapitools.client.models.ValidationError

import com.squareup.moshi.Json

import org.openapitools.client.infrastructure.ApiClient
import org.openapitools.client.infrastructure.ApiResponse
import org.openapitools.client.infrastructure.ClientException
import org.openapitools.client.infrastructure.ClientError
import org.openapitools.client.infrastructure.ServerException
import org.openapitools.client.infrastructure.ServerError
import org.openapitools.client.infrastructure.MultiValueMap
import org.openapitools.client.infrastructure.RequestConfig
import org.openapitools.client.infrastructure.RequestMethod
import org.openapitools.client.infrastructure.ResponseType
import org.openapitools.client.infrastructure.Success
import org.openapitools.client.infrastructure.toMultiValue

class OrdersApi(basePath: kotlin.String = defaultBasePath) : ApiClient(basePath) {
    companion object {
        @JvmStatic
        val defaultBasePath: String by lazy {
            System.getProperties().getProperty(ApiClient.baseUrlKey, "https://ems-gateway-aws-eu-central-1-dev.coinapi.io")
        }
    }

    /**
    * Cancel all orders request
    * This request cancels all open orders on single specified exchange.
    * @param orderCancelAllRequest OrderCancelAllRequest object. 
    * @return MessageReject
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    * @throws UnsupportedOperationException If the API returns an informational or redirection response
    * @throws ClientException If the API returns a client error response
    * @throws ServerException If the API returns a server error response
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun v1OrdersCancelAllPost(orderCancelAllRequest: OrderCancelAllRequest) : MessageReject {
        val localVarResponse = v1OrdersCancelAllPostWithHttpInfo(orderCancelAllRequest = orderCancelAllRequest)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as MessageReject
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
    * Cancel all orders request
    * This request cancels all open orders on single specified exchange.
    * @param orderCancelAllRequest OrderCancelAllRequest object. 
    * @return ApiResponse<MessageReject?>
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun v1OrdersCancelAllPostWithHttpInfo(orderCancelAllRequest: OrderCancelAllRequest) : ApiResponse<MessageReject?> {
        val localVariableConfig = v1OrdersCancelAllPostRequestConfig(orderCancelAllRequest = orderCancelAllRequest)

        return request<OrderCancelAllRequest, MessageReject>(
            localVariableConfig
        )
    }

    /**
    * To obtain the request config of the operation v1OrdersCancelAllPost
    *
    * @param orderCancelAllRequest OrderCancelAllRequest object. 
    * @return RequestConfig
    */
    fun v1OrdersCancelAllPostRequestConfig(orderCancelAllRequest: OrderCancelAllRequest) : RequestConfig<OrderCancelAllRequest> {
        val localVariableBody = orderCancelAllRequest
        val localVariableQuery: MultiValueMap = mutableMapOf()
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Content-Type"] = "application/json"
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.POST,
            path = "/v1/orders/cancel/all",
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

    /**
    * Cancel order request
    * Request cancel for an existing order. The order can be canceled using the &#x60;client_order_id&#x60; or &#x60;exchange_order_id&#x60;.
    * @param orderCancelSingleRequest OrderCancelSingleRequest object. 
    * @return OrderExecutionReport
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    * @throws UnsupportedOperationException If the API returns an informational or redirection response
    * @throws ClientException If the API returns a client error response
    * @throws ServerException If the API returns a server error response
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun v1OrdersCancelPost(orderCancelSingleRequest: OrderCancelSingleRequest) : OrderExecutionReport {
        val localVarResponse = v1OrdersCancelPostWithHttpInfo(orderCancelSingleRequest = orderCancelSingleRequest)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as OrderExecutionReport
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
    * Cancel order request
    * Request cancel for an existing order. The order can be canceled using the &#x60;client_order_id&#x60; or &#x60;exchange_order_id&#x60;.
    * @param orderCancelSingleRequest OrderCancelSingleRequest object. 
    * @return ApiResponse<OrderExecutionReport?>
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun v1OrdersCancelPostWithHttpInfo(orderCancelSingleRequest: OrderCancelSingleRequest) : ApiResponse<OrderExecutionReport?> {
        val localVariableConfig = v1OrdersCancelPostRequestConfig(orderCancelSingleRequest = orderCancelSingleRequest)

        return request<OrderCancelSingleRequest, OrderExecutionReport>(
            localVariableConfig
        )
    }

    /**
    * To obtain the request config of the operation v1OrdersCancelPost
    *
    * @param orderCancelSingleRequest OrderCancelSingleRequest object. 
    * @return RequestConfig
    */
    fun v1OrdersCancelPostRequestConfig(orderCancelSingleRequest: OrderCancelSingleRequest) : RequestConfig<OrderCancelSingleRequest> {
        val localVariableBody = orderCancelSingleRequest
        val localVariableQuery: MultiValueMap = mutableMapOf()
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Content-Type"] = "application/json"
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.POST,
            path = "/v1/orders/cancel",
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

    /**
    * Get open orders
    * Get last execution reports for open orders across all or single exchange.
    * @param exchangeId Filter the open orders to the specific exchange. (optional)
    * @return kotlin.collections.List<OrderExecutionReport>
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    * @throws UnsupportedOperationException If the API returns an informational or redirection response
    * @throws ClientException If the API returns a client error response
    * @throws ServerException If the API returns a server error response
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun v1OrdersGet(exchangeId: kotlin.String?) : kotlin.collections.List<OrderExecutionReport> {
        val localVarResponse = v1OrdersGetWithHttpInfo(exchangeId = exchangeId)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as kotlin.collections.List<OrderExecutionReport>
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
    * Get open orders
    * Get last execution reports for open orders across all or single exchange.
    * @param exchangeId Filter the open orders to the specific exchange. (optional)
    * @return ApiResponse<kotlin.collections.List<OrderExecutionReport>?>
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun v1OrdersGetWithHttpInfo(exchangeId: kotlin.String?) : ApiResponse<kotlin.collections.List<OrderExecutionReport>?> {
        val localVariableConfig = v1OrdersGetRequestConfig(exchangeId = exchangeId)

        return request<Unit, kotlin.collections.List<OrderExecutionReport>>(
            localVariableConfig
        )
    }

    /**
    * To obtain the request config of the operation v1OrdersGet
    *
    * @param exchangeId Filter the open orders to the specific exchange. (optional)
    * @return RequestConfig
    */
    fun v1OrdersGetRequestConfig(exchangeId: kotlin.String?) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                if (exchangeId != null) {
                    put("exchange_id", listOf(exchangeId.toString()))
                }
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/v1/orders",
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

    /**
    * Send new order
    * This request creating new order for the specific exchange.
    * @param orderNewSingleRequest OrderNewSingleRequest object. 
    * @return OrderExecutionReport
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    * @throws UnsupportedOperationException If the API returns an informational or redirection response
    * @throws ClientException If the API returns a client error response
    * @throws ServerException If the API returns a server error response
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun v1OrdersPost(orderNewSingleRequest: OrderNewSingleRequest) : OrderExecutionReport {
        val localVarResponse = v1OrdersPostWithHttpInfo(orderNewSingleRequest = orderNewSingleRequest)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as OrderExecutionReport
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
    * Send new order
    * This request creating new order for the specific exchange.
    * @param orderNewSingleRequest OrderNewSingleRequest object. 
    * @return ApiResponse<OrderExecutionReport?>
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun v1OrdersPostWithHttpInfo(orderNewSingleRequest: OrderNewSingleRequest) : ApiResponse<OrderExecutionReport?> {
        val localVariableConfig = v1OrdersPostRequestConfig(orderNewSingleRequest = orderNewSingleRequest)

        return request<OrderNewSingleRequest, OrderExecutionReport>(
            localVariableConfig
        )
    }

    /**
    * To obtain the request config of the operation v1OrdersPost
    *
    * @param orderNewSingleRequest OrderNewSingleRequest object. 
    * @return RequestConfig
    */
    fun v1OrdersPostRequestConfig(orderNewSingleRequest: OrderNewSingleRequest) : RequestConfig<OrderNewSingleRequest> {
        val localVariableBody = orderNewSingleRequest
        val localVariableQuery: MultiValueMap = mutableMapOf()
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Content-Type"] = "application/json"
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.POST,
            path = "/v1/orders",
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

    /**
    * Get order execution report
    * Get the last order execution report for the specified order. The requested order does not need to be active or opened.
    * @param clientOrderId The unique identifier of the order assigned by the client. 
    * @return OrderExecutionReport
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    * @throws UnsupportedOperationException If the API returns an informational or redirection response
    * @throws ClientException If the API returns a client error response
    * @throws ServerException If the API returns a server error response
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun v1OrdersStatusClientOrderIdGet(clientOrderId: kotlin.String) : OrderExecutionReport {
        val localVarResponse = v1OrdersStatusClientOrderIdGetWithHttpInfo(clientOrderId = clientOrderId)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as OrderExecutionReport
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
    * Get order execution report
    * Get the last order execution report for the specified order. The requested order does not need to be active or opened.
    * @param clientOrderId The unique identifier of the order assigned by the client. 
    * @return ApiResponse<OrderExecutionReport?>
    * @throws IllegalStateException If the request is not correctly configured
    * @throws IOException Rethrows the OkHttp execute method exception
    */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun v1OrdersStatusClientOrderIdGetWithHttpInfo(clientOrderId: kotlin.String) : ApiResponse<OrderExecutionReport?> {
        val localVariableConfig = v1OrdersStatusClientOrderIdGetRequestConfig(clientOrderId = clientOrderId)

        return request<Unit, OrderExecutionReport>(
            localVariableConfig
        )
    }

    /**
    * To obtain the request config of the operation v1OrdersStatusClientOrderIdGet
    *
    * @param clientOrderId The unique identifier of the order assigned by the client. 
    * @return RequestConfig
    */
    fun v1OrdersStatusClientOrderIdGetRequestConfig(clientOrderId: kotlin.String) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf()
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/v1/orders/status/{client_order_id}".replace("{"+"client_order_id"+"}", "$clientOrderId"),
            query = localVariableQuery,
            headers = localVariableHeaders,
            body = localVariableBody
        )
    }

}
