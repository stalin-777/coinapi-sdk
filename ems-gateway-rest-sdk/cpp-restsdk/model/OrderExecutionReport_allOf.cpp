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



#include "OrderExecutionReport_allOf.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {




OrderExecutionReport_allOf::OrderExecutionReport_allOf()
{
    m_Client_order_id_format_exchange = utility::conversions::to_string_t("");
    m_Client_order_id_format_exchangeIsSet = false;
    m_Exchange_order_id = utility::conversions::to_string_t("");
    m_Exchange_order_idIsSet = false;
    m_Amount_open = 0.0;
    m_Amount_openIsSet = false;
    m_Amount_filled = 0.0;
    m_Amount_filledIsSet = false;
    m_Avg_px = 0.0;
    m_Avg_pxIsSet = false;
    m_StatusIsSet = false;
    m_Status_historyIsSet = false;
    m_Error_message = utility::conversions::to_string_t("");
    m_Error_messageIsSet = false;
    m_FillsIsSet = false;
}

OrderExecutionReport_allOf::~OrderExecutionReport_allOf()
{
}

void OrderExecutionReport_allOf::validate()
{
    // TODO: implement validation
}

web::json::value OrderExecutionReport_allOf::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_Client_order_id_format_exchangeIsSet)
    {
        val[utility::conversions::to_string_t(U("client_order_id_format_exchange"))] = ModelBase::toJson(m_Client_order_id_format_exchange);
    }
    if(m_Exchange_order_idIsSet)
    {
        val[utility::conversions::to_string_t(U("exchange_order_id"))] = ModelBase::toJson(m_Exchange_order_id);
    }
    if(m_Amount_openIsSet)
    {
        val[utility::conversions::to_string_t(U("amount_open"))] = ModelBase::toJson(m_Amount_open);
    }
    if(m_Amount_filledIsSet)
    {
        val[utility::conversions::to_string_t(U("amount_filled"))] = ModelBase::toJson(m_Amount_filled);
    }
    if(m_Avg_pxIsSet)
    {
        val[utility::conversions::to_string_t(U("avg_px"))] = ModelBase::toJson(m_Avg_px);
    }
    if(m_StatusIsSet)
    {
        val[utility::conversions::to_string_t(U("status"))] = ModelBase::toJson(m_Status);
    }
    if(m_Status_historyIsSet)
    {
        val[utility::conversions::to_string_t(U("status_history"))] = ModelBase::toJson(m_Status_history);
    }
    if(m_Error_messageIsSet)
    {
        val[utility::conversions::to_string_t(U("error_message"))] = ModelBase::toJson(m_Error_message);
    }
    if(m_FillsIsSet)
    {
        val[utility::conversions::to_string_t(U("fills"))] = ModelBase::toJson(m_Fills);
    }

    return val;
}

bool OrderExecutionReport_allOf::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t(U("client_order_id_format_exchange"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("client_order_id_format_exchange")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_client_order_id_format_exchange;
            ok &= ModelBase::fromJson(fieldValue, refVal_client_order_id_format_exchange);
            setClientOrderIdFormatExchange(refVal_client_order_id_format_exchange);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("exchange_order_id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("exchange_order_id")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_exchange_order_id;
            ok &= ModelBase::fromJson(fieldValue, refVal_exchange_order_id);
            setExchangeOrderId(refVal_exchange_order_id);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("amount_open"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("amount_open")));
        if(!fieldValue.is_null())
        {
            double refVal_amount_open;
            ok &= ModelBase::fromJson(fieldValue, refVal_amount_open);
            setAmountOpen(refVal_amount_open);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("amount_filled"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("amount_filled")));
        if(!fieldValue.is_null())
        {
            double refVal_amount_filled;
            ok &= ModelBase::fromJson(fieldValue, refVal_amount_filled);
            setAmountFilled(refVal_amount_filled);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("avg_px"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("avg_px")));
        if(!fieldValue.is_null())
        {
            double refVal_avg_px;
            ok &= ModelBase::fromJson(fieldValue, refVal_avg_px);
            setAvgPx(refVal_avg_px);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("status"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("status")));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<OrdStatus> refVal_status;
            ok &= ModelBase::fromJson(fieldValue, refVal_status);
            setStatus(refVal_status);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("status_history"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("status_history")));
        if(!fieldValue.is_null())
        {
            std::vector<std::vector<utility::string_t>> refVal_status_history;
            ok &= ModelBase::fromJson(fieldValue, refVal_status_history);
            setStatusHistory(refVal_status_history);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("error_message"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("error_message")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_error_message;
            ok &= ModelBase::fromJson(fieldValue, refVal_error_message);
            setErrorMessage(refVal_error_message);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("fills"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("fills")));
        if(!fieldValue.is_null())
        {
            std::vector<std::shared_ptr<Fills>> refVal_fills;
            ok &= ModelBase::fromJson(fieldValue, refVal_fills);
            setFills(refVal_fills);
        }
    }
    return ok;
}

void OrderExecutionReport_allOf::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m_Client_order_id_format_exchangeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("client_order_id_format_exchange")), m_Client_order_id_format_exchange));
    }
    if(m_Exchange_order_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("exchange_order_id")), m_Exchange_order_id));
    }
    if(m_Amount_openIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("amount_open")), m_Amount_open));
    }
    if(m_Amount_filledIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("amount_filled")), m_Amount_filled));
    }
    if(m_Avg_pxIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("avg_px")), m_Avg_px));
    }
    if(m_StatusIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("status")), m_Status));
    }
    if(m_Status_historyIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("status_history")), m_Status_history));
    }
    if(m_Error_messageIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("error_message")), m_Error_message));
    }
    if(m_FillsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("fills")), m_Fills));
    }
}

bool OrderExecutionReport_allOf::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("client_order_id_format_exchange"))))
    {
        utility::string_t refVal_client_order_id_format_exchange;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("client_order_id_format_exchange"))), refVal_client_order_id_format_exchange );
        setClientOrderIdFormatExchange(refVal_client_order_id_format_exchange);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("exchange_order_id"))))
    {
        utility::string_t refVal_exchange_order_id;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("exchange_order_id"))), refVal_exchange_order_id );
        setExchangeOrderId(refVal_exchange_order_id);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("amount_open"))))
    {
        double refVal_amount_open;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("amount_open"))), refVal_amount_open );
        setAmountOpen(refVal_amount_open);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("amount_filled"))))
    {
        double refVal_amount_filled;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("amount_filled"))), refVal_amount_filled );
        setAmountFilled(refVal_amount_filled);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("avg_px"))))
    {
        double refVal_avg_px;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("avg_px"))), refVal_avg_px );
        setAvgPx(refVal_avg_px);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("status"))))
    {
        std::shared_ptr<OrdStatus> refVal_status;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("status"))), refVal_status );
        setStatus(refVal_status);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("status_history"))))
    {
        std::vector<std::vector<utility::string_t>> refVal_status_history;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("status_history"))), refVal_status_history );
        setStatusHistory(refVal_status_history);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("error_message"))))
    {
        utility::string_t refVal_error_message;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("error_message"))), refVal_error_message );
        setErrorMessage(refVal_error_message);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("fills"))))
    {
        std::vector<std::shared_ptr<Fills>> refVal_fills;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("fills"))), refVal_fills );
        setFills(refVal_fills);
    }
    return ok;
}

utility::string_t OrderExecutionReport_allOf::getClientOrderIdFormatExchange() const
{
    return m_Client_order_id_format_exchange;
}

void OrderExecutionReport_allOf::setClientOrderIdFormatExchange(const utility::string_t& value)
{
    m_Client_order_id_format_exchange = value;
    m_Client_order_id_format_exchangeIsSet = true;
}

bool OrderExecutionReport_allOf::clientOrderIdFormatExchangeIsSet() const
{
    return m_Client_order_id_format_exchangeIsSet;
}

void OrderExecutionReport_allOf::unsetClient_order_id_format_exchange()
{
    m_Client_order_id_format_exchangeIsSet = false;
}
utility::string_t OrderExecutionReport_allOf::getExchangeOrderId() const
{
    return m_Exchange_order_id;
}

void OrderExecutionReport_allOf::setExchangeOrderId(const utility::string_t& value)
{
    m_Exchange_order_id = value;
    m_Exchange_order_idIsSet = true;
}

bool OrderExecutionReport_allOf::exchangeOrderIdIsSet() const
{
    return m_Exchange_order_idIsSet;
}

void OrderExecutionReport_allOf::unsetExchange_order_id()
{
    m_Exchange_order_idIsSet = false;
}
double OrderExecutionReport_allOf::getAmountOpen() const
{
    return m_Amount_open;
}

void OrderExecutionReport_allOf::setAmountOpen(double value)
{
    m_Amount_open = value;
    m_Amount_openIsSet = true;
}

bool OrderExecutionReport_allOf::amountOpenIsSet() const
{
    return m_Amount_openIsSet;
}

void OrderExecutionReport_allOf::unsetAmount_open()
{
    m_Amount_openIsSet = false;
}
double OrderExecutionReport_allOf::getAmountFilled() const
{
    return m_Amount_filled;
}

void OrderExecutionReport_allOf::setAmountFilled(double value)
{
    m_Amount_filled = value;
    m_Amount_filledIsSet = true;
}

bool OrderExecutionReport_allOf::amountFilledIsSet() const
{
    return m_Amount_filledIsSet;
}

void OrderExecutionReport_allOf::unsetAmount_filled()
{
    m_Amount_filledIsSet = false;
}
double OrderExecutionReport_allOf::getAvgPx() const
{
    return m_Avg_px;
}

void OrderExecutionReport_allOf::setAvgPx(double value)
{
    m_Avg_px = value;
    m_Avg_pxIsSet = true;
}

bool OrderExecutionReport_allOf::avgPxIsSet() const
{
    return m_Avg_pxIsSet;
}

void OrderExecutionReport_allOf::unsetAvg_px()
{
    m_Avg_pxIsSet = false;
}
std::shared_ptr<OrdStatus> OrderExecutionReport_allOf::getStatus() const
{
    return m_Status;
}

void OrderExecutionReport_allOf::setStatus(const std::shared_ptr<OrdStatus>& value)
{
    m_Status = value;
    m_StatusIsSet = true;
}

bool OrderExecutionReport_allOf::statusIsSet() const
{
    return m_StatusIsSet;
}

void OrderExecutionReport_allOf::unsetStatus()
{
    m_StatusIsSet = false;
}
std::vector<std::vector<utility::string_t>>& OrderExecutionReport_allOf::getStatusHistory()
{
    return m_Status_history;
}

void OrderExecutionReport_allOf::setStatusHistory(const std::vector<std::vector<utility::string_t>>& value)
{
    m_Status_history = value;
    m_Status_historyIsSet = true;
}

bool OrderExecutionReport_allOf::statusHistoryIsSet() const
{
    return m_Status_historyIsSet;
}

void OrderExecutionReport_allOf::unsetStatus_history()
{
    m_Status_historyIsSet = false;
}
utility::string_t OrderExecutionReport_allOf::getErrorMessage() const
{
    return m_Error_message;
}

void OrderExecutionReport_allOf::setErrorMessage(const utility::string_t& value)
{
    m_Error_message = value;
    m_Error_messageIsSet = true;
}

bool OrderExecutionReport_allOf::errorMessageIsSet() const
{
    return m_Error_messageIsSet;
}

void OrderExecutionReport_allOf::unsetError_message()
{
    m_Error_messageIsSet = false;
}
std::vector<std::shared_ptr<Fills>>& OrderExecutionReport_allOf::getFills()
{
    return m_Fills;
}

void OrderExecutionReport_allOf::setFills(const std::vector<std::shared_ptr<Fills>>& value)
{
    m_Fills = value;
    m_FillsIsSet = true;
}

bool OrderExecutionReport_allOf::fillsIsSet() const
{
    return m_FillsIsSet;
}

void OrderExecutionReport_allOf::unsetFills()
{
    m_FillsIsSet = false;
}
}
}
}
}


