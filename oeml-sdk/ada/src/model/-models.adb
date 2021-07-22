--  OEML _ REST API
--  This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       
--
--  The version of the OpenAPI document: v1
--  Contact: support@coinapi.io
--
--  NOTE: This package is auto generated by OpenAPI-Generator 5.2.0.
--  https://openapi-generator.tech
--  Do not edit the class manually.


package body .Models is
   pragma Style_Checks ("-mr");

   pragma Warnings (Off, "*use clause for package*");

   use Swagger.Streams;



   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in RejectReason_Type) is
   begin
      Into.Start_Entity (Name);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in RejectReason_Type_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out RejectReason_Type) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out RejectReason_Type_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : RejectReason_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in MessageReject_Type) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("type", Value.P_Type);
      Serialize (Into, "reject_reason", Value.Reject_Reason);
      Into.Write_Entity ("exchange_id", Value.Exchange_Id);
      Into.Write_Entity ("message", Value.Message);
      Into.Write_Entity ("rejected_message", Value.Rejected_Message);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in MessageReject_Type_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out MessageReject_Type) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "type", Value.P_Type);
      Deserialize (Object, "reject_reason", Value.Reject_Reason);
      Swagger.Streams.Deserialize (Object, "exchange_id", Value.Exchange_Id);
      Swagger.Streams.Deserialize (Object, "message", Value.Message);
      Swagger.Streams.Deserialize (Object, "rejected_message", Value.Rejected_Message);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out MessageReject_Type_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : MessageReject_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ValidationError_Type) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("type", Value.P_Type);
      Into.Write_Entity ("title", Value.Title);
      Serialize (Into, "status", Value.Status);
      Into.Write_Entity ("traceId", Value.Trace_Id);
      Into.Write_Entity ("errors", Value.Errors);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in ValidationError_Type_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ValidationError_Type) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "type", Value.P_Type);
      Swagger.Streams.Deserialize (Object, "title", Value.Title);
      Swagger.Streams.Deserialize (Object, "status", Value.Status);
      Swagger.Streams.Deserialize (Object, "traceId", Value.Trace_Id);
      Swagger.Streams.Deserialize (Object, "errors", Value.Errors);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out ValidationError_Type_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : ValidationError_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdType_Type) is
   begin
      Into.Start_Entity (Name);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdType_Type_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdType_Type) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdType_Type_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : OrdType_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdStatus_Type) is
   begin
      Into.Start_Entity (Name);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdStatus_Type_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdStatus_Type) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdStatus_Type_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : OrdStatus_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderCancelAllRequest_Type) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("exchange_id", Value.Exchange_Id);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderCancelAllRequest_Type_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderCancelAllRequest_Type) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "exchange_id", Value.Exchange_Id);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderCancelAllRequest_Type_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : OrderCancelAllRequest_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderCancelSingleRequest_Type) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("exchange_id", Value.Exchange_Id);
      Into.Write_Entity ("exchange_order_id", Value.Exchange_Order_Id);
      Into.Write_Entity ("client_order_id", Value.Client_Order_Id);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderCancelSingleRequest_Type_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderCancelSingleRequest_Type) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "exchange_id", Value.Exchange_Id);
      Swagger.Streams.Deserialize (Object, "exchange_order_id", Value.Exchange_Order_Id);
      Swagger.Streams.Deserialize (Object, "client_order_id", Value.Client_Order_Id);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderCancelSingleRequest_Type_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : OrderCancelSingleRequest_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdSide_Type) is
   begin
      Into.Start_Entity (Name);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrdSide_Type_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdSide_Type) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrdSide_Type_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : OrdSide_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in TimeInForce_Type) is
   begin
      Into.Start_Entity (Name);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in TimeInForce_Type_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out TimeInForce_Type) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out TimeInForce_Type_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : TimeInForce_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderNewSingleRequest_Type) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("exchange_id", Value.Exchange_Id);
      Into.Write_Entity ("client_order_id", Value.Client_Order_Id);
      Into.Write_Entity ("symbol_id_exchange", Value.Symbol_Id_Exchange);
      Into.Write_Entity ("symbol_id_coinapi", Value.Symbol_Id_Coinapi);
      Serialize (Into, "amount_order", Value.Amount_Order);
      Serialize (Into, "price", Value.Price);
      Serialize (Into, "side", Value.Side);
      Serialize (Into, "order_type", Value.Order_Type);
      Serialize (Into, "time_in_force", Value.Time_In_Force);
      Serialize (Into, "expire_time", Value.Expire_Time);
      Serialize (Into, "exec_inst", Value.Exec_Inst);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderNewSingleRequest_Type_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderNewSingleRequest_Type) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "exchange_id", Value.Exchange_Id);
      Swagger.Streams.Deserialize (Object, "client_order_id", Value.Client_Order_Id);
      Swagger.Streams.Deserialize (Object, "symbol_id_exchange", Value.Symbol_Id_Exchange);
      Swagger.Streams.Deserialize (Object, "symbol_id_coinapi", Value.Symbol_Id_Coinapi);
      Swagger.Streams.Deserialize (Object, "amount_order", Value.Amount_Order);
      Swagger.Streams.Deserialize (Object, "price", Value.Price);
      Deserialize (Object, "side", Value.Side);
      Deserialize (Object, "order_type", Value.Order_Type);
      Deserialize (Object, "time_in_force", Value.Time_In_Force);
      Swagger.Streams.Deserialize (Object, "expire_time", Value.Expire_Time);
      Swagger.Streams.Deserialize (Object, "exec_inst", Value.Exec_Inst);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderNewSingleRequest_Type_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : OrderNewSingleRequest_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Fills_Type) is
   begin
      Into.Start_Entity (Name);
      Serialize (Into, "time", Value.Time);
      Serialize (Into, "price", Value.Price);
      Serialize (Into, "amount", Value.Amount);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Fills_Type_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Fills_Type) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "time", Value.Time);
      Swagger.Streams.Deserialize (Object, "price", Value.Price);
      Swagger.Streams.Deserialize (Object, "amount", Value.Amount);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Fills_Type_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : Fills_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderExecutionReport_Type) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("exchange_id", Value.Exchange_Id);
      Into.Write_Entity ("client_order_id", Value.Client_Order_Id);
      Into.Write_Entity ("symbol_id_exchange", Value.Symbol_Id_Exchange);
      Into.Write_Entity ("symbol_id_coinapi", Value.Symbol_Id_Coinapi);
      Serialize (Into, "amount_order", Value.Amount_Order);
      Serialize (Into, "price", Value.Price);
      Serialize (Into, "side", Value.Side);
      Serialize (Into, "order_type", Value.Order_Type);
      Serialize (Into, "time_in_force", Value.Time_In_Force);
      Serialize (Into, "expire_time", Value.Expire_Time);
      Serialize (Into, "exec_inst", Value.Exec_Inst);
      Into.Write_Entity ("client_order_id_format_exchange", Value.Client_Order_Id_Format_Exchange);
      Into.Write_Entity ("exchange_order_id", Value.Exchange_Order_Id);
      Serialize (Into, "amount_open", Value.Amount_Open);
      Serialize (Into, "amount_filled", Value.Amount_Filled);
      Serialize (Into, "avg_px", Value.Avg_Px);
      Serialize (Into, "status", Value.Status);
      Serialize (Into, "status_history", Value.Status_History);
      Into.Write_Entity ("error_message", Value.Error_Message);
      Serialize (Into, "fills", Value.Fills);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderExecutionReport_Type_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderExecutionReport_Type) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "exchange_id", Value.Exchange_Id);
      Swagger.Streams.Deserialize (Object, "client_order_id", Value.Client_Order_Id);
      Swagger.Streams.Deserialize (Object, "symbol_id_exchange", Value.Symbol_Id_Exchange);
      Swagger.Streams.Deserialize (Object, "symbol_id_coinapi", Value.Symbol_Id_Coinapi);
      Swagger.Streams.Deserialize (Object, "amount_order", Value.Amount_Order);
      Swagger.Streams.Deserialize (Object, "price", Value.Price);
      Deserialize (Object, "side", Value.Side);
      Deserialize (Object, "order_type", Value.Order_Type);
      Deserialize (Object, "time_in_force", Value.Time_In_Force);
      Swagger.Streams.Deserialize (Object, "expire_time", Value.Expire_Time);
      Swagger.Streams.Deserialize (Object, "exec_inst", Value.Exec_Inst);
      Swagger.Streams.Deserialize (Object, "client_order_id_format_exchange", Value.Client_Order_Id_Format_Exchange);
      Swagger.Streams.Deserialize (Object, "exchange_order_id", Value.Exchange_Order_Id);
      Swagger.Streams.Deserialize (Object, "amount_open", Value.Amount_Open);
      Swagger.Streams.Deserialize (Object, "amount_filled", Value.Amount_Filled);
      Swagger.Streams.Deserialize (Object, "avg_px", Value.Avg_Px);
      Deserialize (Object, "status", Value.Status);
      Swagger.Streams.Deserialize (Object, "status_history", Value.Status_History);
      Swagger.Streams.Deserialize (Object, "error_message", Value.Error_Message);
      Deserialize (Object, "fills", Value.Fills);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderExecutionReport_Type_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : OrderExecutionReport_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderExecutionReportAllOf_Type) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("client_order_id_format_exchange", Value.Client_Order_Id_Format_Exchange);
      Into.Write_Entity ("exchange_order_id", Value.Exchange_Order_Id);
      Serialize (Into, "amount_open", Value.Amount_Open);
      Serialize (Into, "amount_filled", Value.Amount_Filled);
      Serialize (Into, "avg_px", Value.Avg_Px);
      Serialize (Into, "status", Value.Status);
      Serialize (Into, "status_history", Value.Status_History);
      Into.Write_Entity ("error_message", Value.Error_Message);
      Serialize (Into, "fills", Value.Fills);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in OrderExecutionReportAllOf_Type_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderExecutionReportAllOf_Type) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "client_order_id_format_exchange", Value.Client_Order_Id_Format_Exchange);
      Swagger.Streams.Deserialize (Object, "exchange_order_id", Value.Exchange_Order_Id);
      Swagger.Streams.Deserialize (Object, "amount_open", Value.Amount_Open);
      Swagger.Streams.Deserialize (Object, "amount_filled", Value.Amount_Filled);
      Swagger.Streams.Deserialize (Object, "avg_px", Value.Avg_Px);
      Deserialize (Object, "status", Value.Status);
      Swagger.Streams.Deserialize (Object, "status_history", Value.Status_History);
      Swagger.Streams.Deserialize (Object, "error_message", Value.Error_Message);
      Deserialize (Object, "fills", Value.Fills);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out OrderExecutionReportAllOf_Type_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : OrderExecutionReportAllOf_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in BalanceData_Type) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("asset_id_exchange", Value.Asset_Id_Exchange);
      Into.Write_Entity ("asset_id_coinapi", Value.Asset_Id_Coinapi);
      Serialize (Into, "balance", Value.Balance);
      Serialize (Into, "available", Value.Available);
      Serialize (Into, "locked", Value.Locked);
      Into.Write_Entity ("last_updated_by", Value.Last_Updated_By);
      Serialize (Into, "rate_usd", Value.Rate_Usd);
      Serialize (Into, "traded", Value.Traded);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in BalanceData_Type_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out BalanceData_Type) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "asset_id_exchange", Value.Asset_Id_Exchange);
      Swagger.Streams.Deserialize (Object, "asset_id_coinapi", Value.Asset_Id_Coinapi);
      Swagger.Streams.Deserialize (Object, "balance", Value.Balance);
      Swagger.Streams.Deserialize (Object, "available", Value.Available);
      Swagger.Streams.Deserialize (Object, "locked", Value.Locked);
      Swagger.Streams.Deserialize (Object, "last_updated_by", Value.Last_Updated_By);
      Swagger.Streams.Deserialize (Object, "rate_usd", Value.Rate_Usd);
      Swagger.Streams.Deserialize (Object, "traded", Value.Traded);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out BalanceData_Type_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : BalanceData_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Balance_Type) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("exchange_id", Value.Exchange_Id);
      Serialize (Into, "data", Value.Data);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Balance_Type_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Balance_Type) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "exchange_id", Value.Exchange_Id);
      Deserialize (Object, "data", Value.Data);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Balance_Type_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : Balance_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Position_Type) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("exchange_id", Value.Exchange_Id);
      Serialize (Into, "data", Value.Data);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in Position_Type_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Position_Type) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "exchange_id", Value.Exchange_Id);
      Deserialize (Object, "data", Value.Data);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out Position_Type_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : Position_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;




   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in PositionData_Type) is
   begin
      Into.Start_Entity (Name);
      Into.Write_Entity ("symbol_id_exchange", Value.Symbol_Id_Exchange);
      Into.Write_Entity ("symbol_id_coinapi", Value.Symbol_Id_Coinapi);
      Serialize (Into, "avg_entry_price", Value.Avg_Entry_Price);
      Serialize (Into, "quantity", Value.Quantity);
      Serialize (Into, "side", Value.Side);
      Serialize (Into, "unrealized_pnl", Value.Unrealized_Pnl);
      Serialize (Into, "leverage", Value.Leverage);
      Into.Write_Entity ("cross_margin", Value.Cross_Margin);
      Serialize (Into, "liquidation_price", Value.Liquidation_Price);
      Into.Write_Entity ("raw_data", Value.Raw_Data);
      Into.End_Entity (Name);
   end Serialize;

   procedure Serialize (Into  : in out Swagger.Streams.Output_Stream'Class;
                        Name  : in String;
                        Value : in PositionData_Type_Vectors.Vector) is
   begin
      Into.Start_Array (Name);
      for Item of Value loop
         Serialize (Into, "", Item);
      end loop;
      Into.End_Array (Name);
   end Serialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out PositionData_Type) is
      Object : Swagger.Value_Type;
   begin
      Swagger.Streams.Deserialize (From, Name, Object);
      Swagger.Streams.Deserialize (Object, "symbol_id_exchange", Value.Symbol_Id_Exchange);
      Swagger.Streams.Deserialize (Object, "symbol_id_coinapi", Value.Symbol_Id_Coinapi);
      Swagger.Streams.Deserialize (Object, "avg_entry_price", Value.Avg_Entry_Price);
      Swagger.Streams.Deserialize (Object, "quantity", Value.Quantity);
      Deserialize (Object, "side", Value.Side);
      Swagger.Streams.Deserialize (Object, "unrealized_pnl", Value.Unrealized_Pnl);
      Swagger.Streams.Deserialize (Object, "leverage", Value.Leverage);
      Swagger.Streams.Deserialize (Object, "cross_margin", Value.Cross_Margin);
      Swagger.Streams.Deserialize (Object, "liquidation_price", Value.Liquidation_Price);
      Deserialize (Object, "raw_data", Value.Raw_Data);
   end Deserialize;

   procedure Deserialize (From  : in Swagger.Value_Type;
                          Name  : in String;
                          Value : out PositionData_Type_Vectors.Vector) is
      List : Swagger.Value_Array_Type;
      Item : PositionData_Type;
   begin
      Value.Clear;
      Swagger.Streams.Deserialize (From, Name, List);
      for Data of List loop
         Deserialize (Data, "", Item);
         Value.Append (Item);
      end loop;
   end Deserialize;



end .Models;
