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
 * Position_data.h
 *
 * The Position object.
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_Position_data_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_Position_data_H_


#include "ModelBase.h"

#include "model/OrdSide.h"
#include <cpprest/details/basic_types.h>
#include "Object.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// The Position object.
/// </summary>
class  Position_data
    : public ModelBase
{
public:
    Position_data();
    virtual ~Position_data();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// Position_data members

    /// <summary>
    /// Exchange symbol.
    /// </summary>
    utility::string_t getSymbolIdExchange() const;
    bool symbolIdExchangeIsSet() const;
    void unsetSymbol_id_exchange();

    void setSymbolIdExchange(const utility::string_t& value);

    /// <summary>
    /// CoinAPI symbol.
    /// </summary>
    utility::string_t getSymbolIdCoinapi() const;
    bool symbolIdCoinapiIsSet() const;
    void unsetSymbol_id_coinapi();

    void setSymbolIdCoinapi(const utility::string_t& value);

    /// <summary>
    /// Calculated average price of all fills on this position.
    /// </summary>
    double getAvgEntryPrice() const;
    bool avgEntryPriceIsSet() const;
    void unsetAvg_entry_price();

    void setAvgEntryPrice(double value);

    /// <summary>
    /// The current position quantity.
    /// </summary>
    double getQuantity() const;
    bool quantityIsSet() const;
    void unsetQuantity();

    void setQuantity(double value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<OrdSide> getSide() const;
    bool sideIsSet() const;
    void unsetSide();

    void setSide(const std::shared_ptr<OrdSide>& value);

    /// <summary>
    /// Unrealised profit or loss (PNL) of this position.
    /// </summary>
    double getUnrealizedPnl() const;
    bool unrealizedPnlIsSet() const;
    void unsetUnrealized_pnl();

    void setUnrealizedPnl(double value);

    /// <summary>
    /// Leverage for this position reported by the exchange.
    /// </summary>
    double getLeverage() const;
    bool leverageIsSet() const;
    void unsetLeverage();

    void setLeverage(double value);

    /// <summary>
    /// Is cross margin mode enable for this position?
    /// </summary>
    bool isCrossMargin() const;
    bool crossMarginIsSet() const;
    void unsetCross_margin();

    void setCrossMargin(bool value);

    /// <summary>
    /// Liquidation price. If mark price will reach this value, the position will be liquidated.
    /// </summary>
    double getLiquidationPrice() const;
    bool liquidationPriceIsSet() const;
    void unsetLiquidation_price();

    void setLiquidationPrice(double value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<Object> getRawData() const;
    bool rawDataIsSet() const;
    void unsetRaw_data();

    void setRawData(const std::shared_ptr<Object>& value);


protected:
    utility::string_t m_Symbol_id_exchange;
    bool m_Symbol_id_exchangeIsSet;
    utility::string_t m_Symbol_id_coinapi;
    bool m_Symbol_id_coinapiIsSet;
    double m_Avg_entry_price;
    bool m_Avg_entry_priceIsSet;
    double m_Quantity;
    bool m_QuantityIsSet;
    std::shared_ptr<OrdSide> m_Side;
    bool m_SideIsSet;
    double m_Unrealized_pnl;
    bool m_Unrealized_pnlIsSet;
    double m_Leverage;
    bool m_LeverageIsSet;
    bool m_Cross_margin;
    bool m_Cross_marginIsSet;
    double m_Liquidation_price;
    bool m_Liquidation_priceIsSet;
    std::shared_ptr<Object> m_Raw_data;
    bool m_Raw_dataIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_Position_data_H_ */
