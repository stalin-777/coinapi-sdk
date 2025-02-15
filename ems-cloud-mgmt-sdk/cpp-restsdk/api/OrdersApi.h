/**
 * EMS - REST API
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a href=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OrdersApi.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_API_OrdersApi_H_
#define ORG_OPENAPITOOLS_CLIENT_API_OrdersApi_H_



#include "ApiClient.h"

#include "model/MessageReject.h"
#include "model/OrderCancelAllRequest.h"
#include "model/OrderCancelSingleRequest.h"
#include "model/OrderExecutionReport.h"
#include "model/OrderNewSingleRequest.h"
#include "model/ValidationError.h"
#include <cpprest/details/basic_types.h>
#include <boost/optional.hpp>

namespace org {
namespace openapitools {
namespace client {
namespace api {

using namespace org::openapitools::client::model;



class  OrdersApi 
{
public:

    explicit OrdersApi( std::shared_ptr<const ApiClient> apiClient );

    virtual ~OrdersApi();

    /// <summary>
    /// Cancel all orders request
    /// </summary>
    /// <remarks>
    /// This request cancels all open orders on single specified exchange.
    /// </remarks>
    /// <param name="orderCancelAllRequest">OrderCancelAllRequest object.</param>
    pplx::task<std::shared_ptr<MessageReject>> v1OrdersCancelAllPost(
        std::shared_ptr<OrderCancelAllRequest> orderCancelAllRequest
    ) const;
    /// <summary>
    /// Cancel order request
    /// </summary>
    /// <remarks>
    /// Request cancel for an existing order. The order can be canceled using the &#x60;client_order_id&#x60; or &#x60;exchange_order_id&#x60;.
    /// </remarks>
    /// <param name="orderCancelSingleRequest">OrderCancelSingleRequest object.</param>
    pplx::task<std::shared_ptr<OrderExecutionReport>> v1OrdersCancelPost(
        std::shared_ptr<OrderCancelSingleRequest> orderCancelSingleRequest
    ) const;
    /// <summary>
    /// Get open orders
    /// </summary>
    /// <remarks>
    /// Get last execution reports for open orders across all or single exchange.
    /// </remarks>
    /// <param name="exchangeId">Filter the open orders to the specific exchange. (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::vector<std::shared_ptr<OrderExecutionReport>>> v1OrdersGet(
        boost::optional<utility::string_t> exchangeId
    ) const;
    /// <summary>
    /// Send new order
    /// </summary>
    /// <remarks>
    /// This request creating new order for the specific exchange.
    /// </remarks>
    /// <param name="orderNewSingleRequest">OrderNewSingleRequest object.</param>
    pplx::task<std::shared_ptr<OrderExecutionReport>> v1OrdersPost(
        std::shared_ptr<OrderNewSingleRequest> orderNewSingleRequest
    ) const;
    /// <summary>
    /// Get order execution report
    /// </summary>
    /// <remarks>
    /// Get the last order execution report for the specified order. The requested order does not need to be active or opened.
    /// </remarks>
    /// <param name="clientOrderId">The unique identifier of the order assigned by the client.</param>
    pplx::task<std::shared_ptr<OrderExecutionReport>> v1OrdersStatusClientOrderIdGet(
        utility::string_t clientOrderId
    ) const;

protected:
    std::shared_ptr<const ApiClient> m_ApiClient;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_API_OrdersApi_H_ */

