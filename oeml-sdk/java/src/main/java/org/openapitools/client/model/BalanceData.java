/*
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

/**
 * BalanceData
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2021-06-07T10:57:36.922505Z[Etc/UTC]")
public class BalanceData {
  public static final String SERIALIZED_NAME_ASSET_ID_EXCHANGE = "asset_id_exchange";
  @SerializedName(SERIALIZED_NAME_ASSET_ID_EXCHANGE)
  private String assetIdExchange;

  public static final String SERIALIZED_NAME_ASSET_ID_COINAPI = "asset_id_coinapi";
  @SerializedName(SERIALIZED_NAME_ASSET_ID_COINAPI)
  private String assetIdCoinapi;

  public static final String SERIALIZED_NAME_BALANCE = "balance";
  @SerializedName(SERIALIZED_NAME_BALANCE)
  private Float balance;

  public static final String SERIALIZED_NAME_AVAILABLE = "available";
  @SerializedName(SERIALIZED_NAME_AVAILABLE)
  private Float available;

  public static final String SERIALIZED_NAME_LOCKED = "locked";
  @SerializedName(SERIALIZED_NAME_LOCKED)
  private Float locked;

  /**
   * Source of the last modification. 
   */
  @JsonAdapter(LastUpdatedByEnum.Adapter.class)
  public enum LastUpdatedByEnum {
    INITIALIZATION("INITIALIZATION"),
    
    BALANCE_MANAGER("BALANCE_MANAGER"),
    
    EXCHANGE("EXCHANGE");

    private String value;

    LastUpdatedByEnum(String value) {
      this.value = value;
    }

    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    public static LastUpdatedByEnum fromValue(String value) {
      for (LastUpdatedByEnum b : LastUpdatedByEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }

    public static class Adapter extends TypeAdapter<LastUpdatedByEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final LastUpdatedByEnum enumeration) throws IOException {
        jsonWriter.value(enumeration.getValue());
      }

      @Override
      public LastUpdatedByEnum read(final JsonReader jsonReader) throws IOException {
        String value =  jsonReader.nextString();
        return LastUpdatedByEnum.fromValue(value);
      }
    }
  }

  public static final String SERIALIZED_NAME_LAST_UPDATED_BY = "last_updated_by";
  @SerializedName(SERIALIZED_NAME_LAST_UPDATED_BY)
  private LastUpdatedByEnum lastUpdatedBy;

  public static final String SERIALIZED_NAME_RATE_USD = "rate_usd";
  @SerializedName(SERIALIZED_NAME_RATE_USD)
  private Float rateUsd;

  public static final String SERIALIZED_NAME_TRADED = "traded";
  @SerializedName(SERIALIZED_NAME_TRADED)
  private Float traded;


  public BalanceData assetIdExchange(String assetIdExchange) {
    
    this.assetIdExchange = assetIdExchange;
    return this;
  }

   /**
   * Exchange currency code.
   * @return assetIdExchange
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "XBT", value = "Exchange currency code.")

  public String getAssetIdExchange() {
    return assetIdExchange;
  }


  public void setAssetIdExchange(String assetIdExchange) {
    this.assetIdExchange = assetIdExchange;
  }


  public BalanceData assetIdCoinapi(String assetIdCoinapi) {
    
    this.assetIdCoinapi = assetIdCoinapi;
    return this;
  }

   /**
   * CoinAPI currency code.
   * @return assetIdCoinapi
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "BTC", value = "CoinAPI currency code.")

  public String getAssetIdCoinapi() {
    return assetIdCoinapi;
  }


  public void setAssetIdCoinapi(String assetIdCoinapi) {
    this.assetIdCoinapi = assetIdCoinapi;
  }


  public BalanceData balance(Float balance) {
    
    this.balance = balance;
    return this;
  }

   /**
   * Value of the current total currency balance on the exchange.
   * @return balance
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.00134444", value = "Value of the current total currency balance on the exchange.")

  public Float getBalance() {
    return balance;
  }


  public void setBalance(Float balance) {
    this.balance = balance;
  }


  public BalanceData available(Float available) {
    
    this.available = available;
    return this;
  }

   /**
   * Value of the current available currency balance on the exchange that can be used as collateral.
   * @return available
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.00134444", value = "Value of the current available currency balance on the exchange that can be used as collateral.")

  public Float getAvailable() {
    return available;
  }


  public void setAvailable(Float available) {
    this.available = available;
  }


  public BalanceData locked(Float locked) {
    
    this.locked = locked;
    return this;
  }

   /**
   * Value of the current locked currency balance by the exchange.
   * @return locked
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.0", value = "Value of the current locked currency balance by the exchange.")

  public Float getLocked() {
    return locked;
  }


  public void setLocked(Float locked) {
    this.locked = locked;
  }


  public BalanceData lastUpdatedBy(LastUpdatedByEnum lastUpdatedBy) {
    
    this.lastUpdatedBy = lastUpdatedBy;
    return this;
  }

   /**
   * Source of the last modification. 
   * @return lastUpdatedBy
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "EXCHANGE", value = "Source of the last modification. ")

  public LastUpdatedByEnum getLastUpdatedBy() {
    return lastUpdatedBy;
  }


  public void setLastUpdatedBy(LastUpdatedByEnum lastUpdatedBy) {
    this.lastUpdatedBy = lastUpdatedBy;
  }


  public BalanceData rateUsd(Float rateUsd) {
    
    this.rateUsd = rateUsd;
    return this;
  }

   /**
   * Current exchange rate to the USD for the single unit of the currency. 
   * @return rateUsd
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "1355.12", value = "Current exchange rate to the USD for the single unit of the currency. ")

  public Float getRateUsd() {
    return rateUsd;
  }


  public void setRateUsd(Float rateUsd) {
    this.rateUsd = rateUsd;
  }


  public BalanceData traded(Float traded) {
    
    this.traded = traded;
    return this;
  }

   /**
   * Value of the current total traded.
   * @return traded
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.007", value = "Value of the current total traded.")

  public Float getTraded() {
    return traded;
  }


  public void setTraded(Float traded) {
    this.traded = traded;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BalanceData balanceData = (BalanceData) o;
    return Objects.equals(this.assetIdExchange, balanceData.assetIdExchange) &&
        Objects.equals(this.assetIdCoinapi, balanceData.assetIdCoinapi) &&
        Objects.equals(this.balance, balanceData.balance) &&
        Objects.equals(this.available, balanceData.available) &&
        Objects.equals(this.locked, balanceData.locked) &&
        Objects.equals(this.lastUpdatedBy, balanceData.lastUpdatedBy) &&
        Objects.equals(this.rateUsd, balanceData.rateUsd) &&
        Objects.equals(this.traded, balanceData.traded);
  }

  @Override
  public int hashCode() {
    return Objects.hash(assetIdExchange, assetIdCoinapi, balance, available, locked, lastUpdatedBy, rateUsd, traded);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class BalanceData {\n");
    sb.append("    assetIdExchange: ").append(toIndentedString(assetIdExchange)).append("\n");
    sb.append("    assetIdCoinapi: ").append(toIndentedString(assetIdCoinapi)).append("\n");
    sb.append("    balance: ").append(toIndentedString(balance)).append("\n");
    sb.append("    available: ").append(toIndentedString(available)).append("\n");
    sb.append("    locked: ").append(toIndentedString(locked)).append("\n");
    sb.append("    lastUpdatedBy: ").append(toIndentedString(lastUpdatedBy)).append("\n");
    sb.append("    rateUsd: ").append(toIndentedString(rateUsd)).append("\n");
    sb.append("    traded: ").append(toIndentedString(traded)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

