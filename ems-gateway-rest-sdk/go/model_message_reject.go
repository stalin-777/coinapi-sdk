/*
EMS - REST API

This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a href=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 

API version: v1
Contact: support@coinapi.io
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package openapi

import (
	"encoding/json"
)

// MessageReject struct for MessageReject
type MessageReject struct {
	// Message type, constant.
	Type *string `json:"type,omitempty"`
	RejectReason *RejectReason `json:"reject_reason,omitempty"`
	// If the message related to exchange, then the identifier of the exchange will be provided.
	ExchangeId *string `json:"exchange_id,omitempty"`
	// Message text.
	Message *string `json:"message,omitempty"`
	// Value of rejected request, if available.
	RejectedMessage *string `json:"rejected_message,omitempty"`
}

// NewMessageReject instantiates a new MessageReject object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewMessageReject() *MessageReject {
	this := MessageReject{}
	return &this
}

// NewMessageRejectWithDefaults instantiates a new MessageReject object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewMessageRejectWithDefaults() *MessageReject {
	this := MessageReject{}
	return &this
}

// GetType returns the Type field value if set, zero value otherwise.
func (o *MessageReject) GetType() string {
	if o == nil || o.Type == nil {
		var ret string
		return ret
	}
	return *o.Type
}

// GetTypeOk returns a tuple with the Type field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *MessageReject) GetTypeOk() (*string, bool) {
	if o == nil || o.Type == nil {
		return nil, false
	}
	return o.Type, true
}

// HasType returns a boolean if a field has been set.
func (o *MessageReject) HasType() bool {
	if o != nil && o.Type != nil {
		return true
	}

	return false
}

// SetType gets a reference to the given string and assigns it to the Type field.
func (o *MessageReject) SetType(v string) {
	o.Type = &v
}

// GetRejectReason returns the RejectReason field value if set, zero value otherwise.
func (o *MessageReject) GetRejectReason() RejectReason {
	if o == nil || o.RejectReason == nil {
		var ret RejectReason
		return ret
	}
	return *o.RejectReason
}

// GetRejectReasonOk returns a tuple with the RejectReason field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *MessageReject) GetRejectReasonOk() (*RejectReason, bool) {
	if o == nil || o.RejectReason == nil {
		return nil, false
	}
	return o.RejectReason, true
}

// HasRejectReason returns a boolean if a field has been set.
func (o *MessageReject) HasRejectReason() bool {
	if o != nil && o.RejectReason != nil {
		return true
	}

	return false
}

// SetRejectReason gets a reference to the given RejectReason and assigns it to the RejectReason field.
func (o *MessageReject) SetRejectReason(v RejectReason) {
	o.RejectReason = &v
}

// GetExchangeId returns the ExchangeId field value if set, zero value otherwise.
func (o *MessageReject) GetExchangeId() string {
	if o == nil || o.ExchangeId == nil {
		var ret string
		return ret
	}
	return *o.ExchangeId
}

// GetExchangeIdOk returns a tuple with the ExchangeId field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *MessageReject) GetExchangeIdOk() (*string, bool) {
	if o == nil || o.ExchangeId == nil {
		return nil, false
	}
	return o.ExchangeId, true
}

// HasExchangeId returns a boolean if a field has been set.
func (o *MessageReject) HasExchangeId() bool {
	if o != nil && o.ExchangeId != nil {
		return true
	}

	return false
}

// SetExchangeId gets a reference to the given string and assigns it to the ExchangeId field.
func (o *MessageReject) SetExchangeId(v string) {
	o.ExchangeId = &v
}

// GetMessage returns the Message field value if set, zero value otherwise.
func (o *MessageReject) GetMessage() string {
	if o == nil || o.Message == nil {
		var ret string
		return ret
	}
	return *o.Message
}

// GetMessageOk returns a tuple with the Message field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *MessageReject) GetMessageOk() (*string, bool) {
	if o == nil || o.Message == nil {
		return nil, false
	}
	return o.Message, true
}

// HasMessage returns a boolean if a field has been set.
func (o *MessageReject) HasMessage() bool {
	if o != nil && o.Message != nil {
		return true
	}

	return false
}

// SetMessage gets a reference to the given string and assigns it to the Message field.
func (o *MessageReject) SetMessage(v string) {
	o.Message = &v
}

// GetRejectedMessage returns the RejectedMessage field value if set, zero value otherwise.
func (o *MessageReject) GetRejectedMessage() string {
	if o == nil || o.RejectedMessage == nil {
		var ret string
		return ret
	}
	return *o.RejectedMessage
}

// GetRejectedMessageOk returns a tuple with the RejectedMessage field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *MessageReject) GetRejectedMessageOk() (*string, bool) {
	if o == nil || o.RejectedMessage == nil {
		return nil, false
	}
	return o.RejectedMessage, true
}

// HasRejectedMessage returns a boolean if a field has been set.
func (o *MessageReject) HasRejectedMessage() bool {
	if o != nil && o.RejectedMessage != nil {
		return true
	}

	return false
}

// SetRejectedMessage gets a reference to the given string and assigns it to the RejectedMessage field.
func (o *MessageReject) SetRejectedMessage(v string) {
	o.RejectedMessage = &v
}

func (o MessageReject) MarshalJSON() ([]byte, error) {
	toSerialize := map[string]interface{}{}
	if o.Type != nil {
		toSerialize["type"] = o.Type
	}
	if o.RejectReason != nil {
		toSerialize["reject_reason"] = o.RejectReason
	}
	if o.ExchangeId != nil {
		toSerialize["exchange_id"] = o.ExchangeId
	}
	if o.Message != nil {
		toSerialize["message"] = o.Message
	}
	if o.RejectedMessage != nil {
		toSerialize["rejected_message"] = o.RejectedMessage
	}
	return json.Marshal(toSerialize)
}

type NullableMessageReject struct {
	value *MessageReject
	isSet bool
}

func (v NullableMessageReject) Get() *MessageReject {
	return v.value
}

func (v *NullableMessageReject) Set(val *MessageReject) {
	v.value = val
	v.isSet = true
}

func (v NullableMessageReject) IsSet() bool {
	return v.isSet
}

func (v *NullableMessageReject) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableMessageReject(val *MessageReject) *NullableMessageReject {
	return &NullableMessageReject{value: val, isSet: true}
}

func (v NullableMessageReject) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableMessageReject) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


