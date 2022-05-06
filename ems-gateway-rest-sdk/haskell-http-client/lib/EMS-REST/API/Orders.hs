{-
   EMS - REST API

   This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a href=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 

   OpenAPI Version: 3.0.0
   EMS - REST API API version: v1
   Contact: support@coinapi.io
   Generated by OpenAPI Generator (https://openapi-generator.tech)
-}

{-|
Module : EMS-REST.API.Orders
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module EMS-REST.API.Orders where

import EMS-REST.Core
import EMS-REST.MimeTypes
import EMS-REST.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** Orders

-- *** v1OrdersCancelAllPost

-- | @POST \/v1\/orders\/cancel\/all@
-- 
-- Cancel all orders request
-- 
-- This request cancels all open orders on single specified exchange.
-- 
v1OrdersCancelAllPost
  :: (Consumes V1OrdersCancelAllPost MimeJSON, MimeRender MimeJSON OrderCancelAllRequest)
  => Accept accept -- ^ request accept ('MimeType')
  -> OrderCancelAllRequest -- ^ "orderCancelAllRequest" -  OrderCancelAllRequest object.
  -> EMS-RESTRequest V1OrdersCancelAllPost MimeJSON MessageReject accept
v1OrdersCancelAllPost  _ orderCancelAllRequest =
  _mkRequest "POST" ["/v1/orders/cancel/all"]
    `setBodyParam` orderCancelAllRequest

data V1OrdersCancelAllPost 

-- | /Body Param/ "OrderCancelAllRequest" - OrderCancelAllRequest object.
instance HasBodyParam V1OrdersCancelAllPost OrderCancelAllRequest 

-- | @application/json@
instance Consumes V1OrdersCancelAllPost MimeJSON

-- | @application/json@
instance Produces V1OrdersCancelAllPost MimeJSON
-- | @appliction/json@
instance Produces V1OrdersCancelAllPost MimeApplictionJson


-- *** v1OrdersCancelPost

-- | @POST \/v1\/orders\/cancel@
-- 
-- Cancel order request
-- 
-- Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.
-- 
v1OrdersCancelPost
  :: (Consumes V1OrdersCancelPost MimeJSON, MimeRender MimeJSON OrderCancelSingleRequest)
  => Accept accept -- ^ request accept ('MimeType')
  -> OrderCancelSingleRequest -- ^ "orderCancelSingleRequest" -  OrderCancelSingleRequest object.
  -> EMS-RESTRequest V1OrdersCancelPost MimeJSON OrderExecutionReport accept
v1OrdersCancelPost  _ orderCancelSingleRequest =
  _mkRequest "POST" ["/v1/orders/cancel"]
    `setBodyParam` orderCancelSingleRequest

data V1OrdersCancelPost 

-- | /Body Param/ "OrderCancelSingleRequest" - OrderCancelSingleRequest object.
instance HasBodyParam V1OrdersCancelPost OrderCancelSingleRequest 

-- | @application/json@
instance Consumes V1OrdersCancelPost MimeJSON

-- | @application/json@
instance Produces V1OrdersCancelPost MimeJSON
-- | @appliction/json@
instance Produces V1OrdersCancelPost MimeApplictionJson


-- *** v1OrdersGet

-- | @GET \/v1\/orders@
-- 
-- Get open orders
-- 
-- Get last execution reports for open orders across all or single exchange.
-- 
v1OrdersGet
  :: Accept accept -- ^ request accept ('MimeType')
  -> EMS-RESTRequest V1OrdersGet MimeNoContent [OrderExecutionReport] accept
v1OrdersGet  _ =
  _mkRequest "GET" ["/v1/orders"]

data V1OrdersGet  

-- | /Optional Param/ "exchange_id" - Filter the open orders to the specific exchange.
instance HasOptionalParam V1OrdersGet ExchangeId where
  applyOptionalParam req (ExchangeId xs) =
    req `addQuery` toQuery ("exchange_id", Just xs)
-- | @application/json@
instance Produces V1OrdersGet MimeJSON
-- | @appliction/json@
instance Produces V1OrdersGet MimeApplictionJson


-- *** v1OrdersPost

-- | @POST \/v1\/orders@
-- 
-- Send new order
-- 
-- This request creating new order for the specific exchange.
-- 
v1OrdersPost
  :: (Consumes V1OrdersPost MimeJSON, MimeRender MimeJSON OrderNewSingleRequest)
  => Accept accept -- ^ request accept ('MimeType')
  -> OrderNewSingleRequest -- ^ "orderNewSingleRequest" -  OrderNewSingleRequest object.
  -> EMS-RESTRequest V1OrdersPost MimeJSON OrderExecutionReport accept
v1OrdersPost  _ orderNewSingleRequest =
  _mkRequest "POST" ["/v1/orders"]
    `setBodyParam` orderNewSingleRequest

data V1OrdersPost 

-- | /Body Param/ "OrderNewSingleRequest" - OrderNewSingleRequest object.
instance HasBodyParam V1OrdersPost OrderNewSingleRequest 

-- | @application/json@
instance Consumes V1OrdersPost MimeJSON

-- | @application/json@
instance Produces V1OrdersPost MimeJSON
-- | @appliction/json@
instance Produces V1OrdersPost MimeApplictionJson


-- *** v1OrdersStatusClientOrderIdGet

-- | @GET \/v1\/orders\/status\/{client_order_id}@
-- 
-- Get order execution report
-- 
-- Get the last order execution report for the specified order. The requested order does not need to be active or opened.
-- 
v1OrdersStatusClientOrderIdGet
  :: ClientOrderId -- ^ "clientOrderId" -  The unique identifier of the order assigned by the client.
  -> EMS-RESTRequest V1OrdersStatusClientOrderIdGet MimeNoContent OrderExecutionReport MimeJSON
v1OrdersStatusClientOrderIdGet (ClientOrderId clientOrderId) =
  _mkRequest "GET" ["/v1/orders/status/",toPath clientOrderId]

data V1OrdersStatusClientOrderIdGet  
-- | @application/json@
instance Produces V1OrdersStatusClientOrderIdGet MimeJSON

