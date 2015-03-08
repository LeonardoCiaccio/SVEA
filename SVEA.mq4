//+------------------------------------------------------------------+
//|                                                         SVEA.mq4 |
//|                               Copyright © 2015, Leonardo Ciaccio |
//|                          https://github.com/LeonardoCiaccio/SVEA |
//|                                                                  |
//|             Donate Bitcoins : 1KHSR2S58y8WV6o3zRYeD5fBApvfTMtj8B |
//|             Donate PayPal   : microlabs@altervista.org           |
//+------------------------------------------------------------------+


#property copyright "Copyright © 2015, Leonardo Ciaccio"
#property link      "https://github.com/LeonardoCiaccio/SVEA"

extern string  Name                    =  "SVEA (Super Visor EA)";
extern string  Version                 =  "v.1.0.4";
extern string  Contact                 =  "leonardo.ciaccio@gmail.com";
extern string  Web                     =  "https://github.com/LeonardoCiaccio/SVEA";
extern string  Donate_Bitcoins         =  "1KHSR2S58y8WV6o3zRYeD5fBApvfTMtj8B";
extern string  Donate_PayPal           =  "microlabs@altervista.org";
extern string  Common_start            =  "[ Commons Options ]";
extern int     Magic_Number            =  173;
extern bool    Stealth_Mode            =  true;
extern double  Max_Spread              =  2.5;
extern double  Default_Lot             =  0.01;
extern int     Slippage                =  3;
extern double  Take_Profit             =  30.0;
extern double  Stop_Loss               =  30.0;
extern bool    Show_Box_Information    =  true;
extern int     Box_X                   =  70;
extern int     Box_Y                   =  70;
extern color   Color_Title_font        =  Red;
extern color   Color_Box_font          =  White;
extern color   Color_Box_font_value    =  Lime;
extern string  Safe_Trailing_start     =  "[ Safe/Trailing Options ]";
extern bool    Use_Safe_Trade          =  true;
extern double  Safe_Trade_On           =  10.0;                                  
extern double  Safe_Trade_At           =  0.0;
extern bool    Use_Trailing            =  true;
extern double  Trailing_Start          =  20.0;
extern double  Trailing_For            =  5.0;
extern bool    Trailing_Ignore_TP      =  true;                    
extern string  Open_Manual_start       =  "[ Open/Close Manual with Horizontal Line ]";
extern bool    Ignore_Max_Spread       =  false;
extern string  HL_BUY_OVER_Name        =  "BUYOVER";
extern string  HL_BUY_UNDER_Name       =  "BUYUNDER";
extern string  HL_SELL_OVER_Name       =  "SELLOVER";
extern string  HL_SELL_UNDER_Name      =  "SELLUNDER";
extern string  HL_CLOSE_OVER_Name      =  "CLOSEOVER";
extern string  HL_CLOSE_UNDER_Name     =  "CLOSEUNDER";
extern string  Open_Automatic_start    =  "[ Open Automatic ]";
extern bool    Open_Automatic          =  true;
extern bool    Auto_Ignore_Max_Spread  =  false;
extern bool    Signal_In_Combo         =  false;
extern string  Open_Automatic_1        =  "-------------------------------------";
extern bool    Trade_In_Friday         =  true;
extern string  Open_Automatic_2        =  "-------------------------------------";
extern bool    Use_Trade_Time          =  true;
extern int     Trade_Time_H_Start      =  9;
extern int     Trade_Time_m_Start      =  0;
extern int     Trade_Time_H_Stop       =  11;
extern int     Trade_Time_m_Stop       =  0;
extern string  Open_Automatic_3        =  "-------------------------------------";
extern bool    Use_Force_Index         =  false;
extern bool    IForce_logic_reverse    =  false;
extern int     IForce_TimeFrame        =  1;
extern int     IForce_Period           =  1;
extern int     IForce_Method           =  0;
extern int     IForce_Price            =  0;
extern int     IForce_Shift            =  0;
extern double  IForce_level_BUY        =  0.1;
extern double  IForce_level_SELL       =  -0.1;
extern string  Open_Automatic_4        =  "-------------------------------------";
extern bool    Use_RSI                 =  true;
extern bool    IRSI_logic_reverse      =  false;
extern int     IRSI_TimeFrame          =  5;
extern int     IRSI_Period             =  3;
extern int     IRSI_Price              =  0;
extern int     IRSI_Shift              =  1;
extern double  IRSI_level_BUY          =  5.0;
extern double  IRSI_level_SELL         =  95.0;
extern string  Open_Automatic_5        =  "-------------------------------------";
extern bool    Use_Stochastic          =  false;
extern bool    IStoch_logic_reverse    =  false;
extern int     IStochastic_TimeFrame   =  1;
extern int     IStochastic_KPeriod     =  5;
extern int     IStochastic_DPeriod     =  3;
extern int     IStochastic_Slow        =  3;
extern int     IStochastic_Method      =  0;
extern int     IStochastic_Field       =  1;
extern int     IStochastic_Mode        =  1;
extern int     IStochastic_Shift       =  1;
extern double  IStochastic_level_BUY   =  5.0;
extern double  IStochastic_level_SELL  =  95.0;
extern string  Open_Automatic_6        =  "-------------------------------------";
extern bool    Use_Momentum            =  false;                      
extern int     IMOM_TimeFrame          =  1;
extern int     IMOM_Period             =  89;
extern int     IMOM_Price              =  0;
extern int     IMOM_Shift_For_Rising   =  5;
extern string  Close_Strategy_start    =  "[ Close Strategy ]";
extern bool    Use_Positive_Grid       =  false;
extern int     PGrid                   =  25;
extern int     PGrid_Max               =  1;
extern int     PGrid_Stop              =  10;
extern bool    Use_Negative_Grid       =  true;
extern int     NGrid                   =  25;
extern int     NGrid_Max               =  3;
extern int     NGrid_Multiplier        =  2;
extern double  NGrid_Increment         =  0.01;
extern double  NGrid_1_TP_In_Money     =  0.0;
extern double  NGrid_2_TP_In_Money     =  0.0;
extern double  NGrid_3_TP_In_Money     =  0.0;
extern double  NGrid_over_TP_In_Money  =  0.0;

//+------------------------------------------------------------------+
//| Common                                                           |
//+------------------------------------------------------------------+
string RealName_EA         =  "SVEA";
string RealVersion_EA      =  "1.0.4";
string Real_Email          =  "leonardo.ciaccio@gmail.com";
string Comment_Open_Manual =  "SVEA Opened with H. Line";
string Comment_Open_Auto   =  "SVEA Opened with Signal";
string Comment_Open_PGrid  =  "SVEA Opened with PGrid";
string Comment_Open_NGrid  =  "SVEA Opened with NGrid";
double Real_Lot            =  0.0;
double MyPoint             =  0.0;
bool   al_err_1            =  false;
string My_Symbol           =  "";
double My_tt_profit        =  0.0;
int    tt_manual_opened    =  0;
int    tt_auto_opened      =  0;
int    tt_pgrid_opened     =  0;
int    tt_ngrid_opened     =  0;
//+------------------------------------------------------------------+
//| Box - label define name and setting                              |
//+------------------------------------------------------------------+
string lb_title            =  "Box Title";
string lb_1_field          =  "Box 1 field";
string lb_1_value          =  "Box 1 value";
string lb_2_field          =  "Box 2 field";
string lb_2_value          =  "Box 2 value";
string lb_3_field          =  "Box 3 field";
string lb_3_value          =  "Box 3 value";
string lb_5_field          =  "Box 5 field";
string lb_5_value          =  "Box 5 value";
string lb_6_field          =  "Box 6 field";
string lb_6_value          =  "Box 6 value";
string lb_7_field          =  "Box 7 field";
string lb_7_value          =  "Box 7 value";
string lb_8_field          =  "Box 8 field";
string lb_8_value          =  "Box 8 value";
string lb_9_field          =  "Box 9 field";
string lb_9_value          =  "Box 9 value";
string lb_10_field         =  "Box 10 field";
string lb_10_value         =  "Box 10 value";
string lb_11_field         =  "Box 11 field";
string lb_11_value         =  "Box 11 value";
string lb_12_field         =  "Box 12 field";
string lb_12_value         =  "Box 12 value";
string lb_13_field         =  "Box 13 field";
string lb_13_value         =  "Box 13 value";
string lb_14_field         =  "Box 14 field";
string lb_14_value         =  "Box 14 value";
string lb_15_field         =  "Box 15 field";
string lb_15_value         =  "Box 15 value";

string Car_Box_Title_font  =  "Tahoma Bold";
int    Car_Box_Title_size  =  10;
string Car_Box_font        =  "Tahoma Bold";
int    Car_Box_size        =  8;

//+------------------------------------------------------------------+
//| expert initialization function                                   |
//+------------------------------------------------------------------+
int init()
  {
//----
   Real_Lot            =  Default_Lot;
   MyPoint             =  Point;
   My_Symbol           =  Symbol();
   if(Digits==3 || Digits==5)MyPoint=Point*10;
   create_box();
   
//----
   return(0);
  }
//+------------------------------------------------------------------+
//| expert deinitialization function                                 |
//+------------------------------------------------------------------+
int deinit()
  {
//----
   delete_box();
//----
   return(0);
  }
//+------------------------------------------------------------------+
//| expert start function                                            |
//+------------------------------------------------------------------+
int start()
  {
//----
   if(!IsTesting()){
      if(!IsConnected()){
         Comment("SVEA error, check your connection....");
         return(0);
      }
   }
   
   close_manual();
   
   refresh_global_data();
   open_manual_mode();
   
   refresh_global_data();
   open_auto_mode();
   
   refresh_global_data();
   control_Pgrid_order();
   
   refresh_global_data();
   control_Ngrid_order();
   
   refresh_global_data();
   control_opened_order(); //for trailing; safe; stealth mode
   
   refresh_global_data();
   control_close_order();  //for close stealth mode
   
   refresh_global_data();
   refresh_box();
   
   controll_irregolar_order();
//----
   return(0);
  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| Common function                                                  |
//+------------------------------------------------------------------+

void refresh_global_data(){
   
   control_type_order();
   My_tt_profit        =  total_profit();
   
}


double current_spread(){
   double spread=0.0;
   if(Digits==3 || Digits==5){
    spread=NormalizeDouble(MarketInfo(Symbol(),MODE_SPREAD)/10,1);
   }else{
    spread=NormalizeDouble(MarketInfo(Symbol(),MODE_SPREAD),0);
   } 
   return(spread);
}

//+------------------------------------------------------------------+
//| Control Automatic status                                         |
//| 0=Disabled; 1=enabled; 2=ignored; 3=timing; 4=friday             |
//+------------------------------------------------------------------+
int control_automatic_status(){

   if(Open_Automatic){
      bool no_trade_zone=(tt_manual_opened>0 || tt_auto_opened>0 || tt_pgrid_opened>0 || tt_ngrid_opened>0);  
      bool no_correct=(!Use_Force_Index && !Use_RSI && !Use_Stochastic);    
      if(!Trade_In_Friday && DayOfWeek()==5){
         return(4);
      }else if(Use_Trade_Time){
         bool start_timing =  (Hour()==Trade_Time_H_Start && Minute()>=Trade_Time_m_Start) || Hour()>Trade_Time_H_Start;
         bool stop_timing  =  (Hour()==Trade_Time_H_Stop && Minute()>=Trade_Time_m_Stop) || Hour()>Trade_Time_H_Stop;
         if(start_timing && !stop_timing){
            if(no_correct || no_trade_zone){
               return(2);
            }else{
               return(1);
            }            
         }else{
            return(3);
         }
      }else if(no_correct || no_trade_zone){
         return(2);
      }else{
         return(1);
      }
   }else{
      return(0);
   }
   
}

//+------------------------------------------------------------------+
//| Control Stealth status                                           |
//| 0=Disabled; 1=enabled                                            |
//+------------------------------------------------------------------+
int control_Stealth_status(){
   
   if(Stealth_Mode){
      return(1);
   }else{
      return(0);
   }
   
}

//+------------------------------------------------------------------+
//| Control order pgrid and ngrid without initial Order              |
//+------------------------------------------------------------------+
void controll_irregolar_order(){

   if(tt_manual_opened<1 && tt_auto_opened<1 && (tt_pgrid_opened>0 || tt_ngrid_opened>0))close_all_order();

}


//+------------------------------------------------------------------+
//| Control opened order                                             |
//+------------------------------------------------------------------+
void control_type_order(){

   tt_manual_opened    =  0;
   tt_auto_opened      =  0;
   tt_pgrid_opened     =  0;
   tt_ngrid_opened     =  0;
 
  for(int i=0; i<OrdersTotal(); i++)
  {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderSymbol()!=My_Symbol || OrderMagicNumber()!=Magic_Number)continue;
      
      if       (OrderComment()==Comment_Open_Manual)tt_manual_opened++;
      else if  (OrderComment()==Comment_Open_Auto)tt_auto_opened++;
      else if  (OrderComment()==Comment_Open_PGrid)tt_pgrid_opened++;
      else if  (OrderComment()==Comment_Open_NGrid)tt_ngrid_opened++;
  } 
}

//+------------------------------------------------------------------+
//| Control PGrid status                                             |
//| 0=Disabled; 1=enabled; 2=ignored                                 |
//+------------------------------------------------------------------+
int control_Pgrid_status(){
  
  if(Use_Positive_Grid){
      bool zero_value=(PGrid==0 || PGrid_Max ==0 || PGrid_Stop==0 || PGrid<0 || PGrid_Max <0 || PGrid_Stop<0);
      bool no_correct=(PGrid_Stop>=PGrid || PGrid>=get_SL_or_TP(0,1) || PGrid>=get_SL_or_TP(1,1) || tt_ngrid_opened>0);
      if(zero_value || no_correct){
         return(2);
      }else{
         return(1);
      }
   }else{
      return(0);
   }
}

//+------------------------------------------------------------------+
//| Control NGrid status                                             |
//| 0=Disabled; 1=enabled; 2=ignored                                 |
//+------------------------------------------------------------------+
int control_Ngrid_status(){
  
  if(Use_Negative_Grid){
      bool zero_value=(NGrid==0 || NGrid_Max ==0 || NGrid_Multiplier==0 || NGrid_Increment==0.0 || NGrid<0 || NGrid_Max <0 || NGrid_Multiplier<0 || NGrid_Increment<0.0);
      bool no_correct=(NGrid>=get_SL_or_TP(0,0) || NGrid>=get_SL_or_TP(1,0) || tt_pgrid_opened>0);
      if(zero_value || no_correct){
         return(2);
      }else{
         return(1);
      }
   }else{
      return(0);
   }
}

//+------------------------------------------------------------------+
//| Control Safe_Trade status                                        |
//| 0=Disabled; 1=enabled; 2=ignored                                 |
//+------------------------------------------------------------------+
int control_Safe_status(){
  
  if(Use_Safe_Trade){
      bool zero_value=(Safe_Trade_On==0.0 || Safe_Trade_On<0.0 || Safe_Trade_At<0.0);
      bool no_correct=(Safe_Trade_On>=get_SL_or_TP(0,1) || Safe_Trade_On>=get_SL_or_TP(1,1) || Safe_Trade_At>=Safe_Trade_On || tt_pgrid_opened>0 || tt_ngrid_opened>0);
      if(zero_value || no_correct){
         return(2);
      }else{
         return(1);
      }
   }else{
      return(0);
   }
}

//+------------------------------------------------------------------+
//| Control Trailing status                                          |
//| 0=Disabled; 1=enabled; 2=ignored                                 |
//+------------------------------------------------------------------+
int control_Trailing_status(){
  
  if(Use_Trailing){
      bool zero_value=(Trailing_Start==0.0  || Trailing_For==0.0 || Trailing_Start<0.0  || Trailing_For<0.0);
      bool no_correct=(Trailing_Start>=get_SL_or_TP(0,1) || Trailing_Start>=get_SL_or_TP(1,1) || tt_pgrid_opened>0 || tt_ngrid_opened>0);
      if(zero_value || no_correct){
         return(2);
      }else{
         return(1);
      }
   }else{
      return(0);
   }
}
//+------------------------------------------------------------------+
//| Control H.Line                                                   |
//| 1=enabled; 2=ignored                                 |
//+------------------------------------------------------------------+
int control_H_Line_status(){
  
  if(tt_pgrid_opened>0 || tt_ngrid_opened>0 || ((tt_manual_opened>0 || tt_auto_opened>0) && (control_Pgrid_status()==1 || control_Ngrid_status()==1))){
   return(2);
  }else{
   return(1);
  }
  
}
//+------------------------------------------------------------------+
//| Get value of Take Profit and StopLoss                            |
//| Accept 2 parameter Type open (Manual or Automatic)               |
//| and type value (StopLoss or Take_Profit)  -1 error               |
//+------------------------------------------------------------------+
double get_SL_or_TP(int type_order, int type_value){
     
  switch(type_order){
   case 0: //Manual
        switch(type_value){
         case 0: return(Stop_Loss); break;
         case 1: return(Take_Profit); break;
         default: return(-1);
        }
        break;
   case 1: //Auto
        switch(type_value){
         case 0: return(Stop_Loss); break;
         case 1: return(Take_Profit); break;
         default: return(-1);
        }
        break;
   default: return(-1);
  }
}

//+------------------------------------------------------------------+
//| Total profit                                                     |
//+------------------------------------------------------------------+
double total_profit(){
   
   double tt_profit  =  0.0;
   
   for(int x=0; x<OrdersTotal(); x++)
   {
       OrderSelect(x,SELECT_BY_POS,MODE_TRADES);
       if(OrderSymbol()==My_Symbol && OrderMagicNumber()==Magic_Number){
         tt_profit+=OrderProfit();
       }
   }
   
   return(tt_profit);
}

//+------------------------------------------------------------------+
//| Close all order                                                  |
//+------------------------------------------------------------------+
void close_all_order(){
   
   int conta=0;
   double price;
   int cmd;
   int error=0;
   bool esegui=true;
   bool result=false;
   int contaCicli=0;
   int TimeOut_Cicli=1000;
   
   while(esegui && contaCicli<=TimeOut_Cicli){
      esegui=false;
      for(int cnt=0;cnt<OrdersTotal();cnt++)
      {
       OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
       if(OrderSymbol()==My_Symbol && OrderMagicNumber()==Magic_Number)
         {
          esegui=true;
          cmd=OrderType();
          if(cmd==OP_BUY) price=MarketInfo(OrderSymbol(),MODE_BID);
          else            price=MarketInfo(OrderSymbol(),MODE_ASK);
         
          result=OrderClose(OrderTicket(),OrderLots(),price,0,CLR_NONE);
         
          error=GetLastError();
          if(error==135)RefreshRates();
        }
      }
   contaCicli++;    
  }
  if(contaCicli>=TimeOut_Cicli)Print("SVEA error close all, timeout");
}

//+------------------------------------------------------------------+
//| Controll and set all Take Profit and StopLoss for PGRID          |
//+------------------------------------------------------------------+
void control_Pgrid_order(){
     
   if(tt_ngrid_opened>0 || control_Pgrid_status()!=1 || (tt_manual_opened<1 && tt_auto_opened<1))return(0);
  
   double   stop_loss   =  get_SL_or_TP(0,0);
   double   take_profit =  get_SL_or_TP(0,1);
   double   price_BUY   =  0.0;
   double   price_SELL  =  0.0;
   int      result      =  0;
   double   n_SL        =  0.0;
   double   n_TP        =  0.0;
   double   n2_SL       =  0.0;
   double   n2_TP       =  0.0;
   int      tt_order    =  OrdersTotal();
   int      My_order    =  -1;
   int      My_tt_pgrid =  tt_pgrid_opened+1;
   
   
   for(int x=0; x<tt_order; x++)
   {
       OrderSelect(x,SELECT_BY_POS,MODE_TRADES);
          if(OrderSymbol()!=My_Symbol || OrderMagicNumber()!=Magic_Number)continue;
          if(OrderComment()==Comment_Open_Manual || OrderComment()==Comment_Open_Auto){
            //apro il primo ordine modifico il pimo e esco ed esco
            if(OrderType()==OP_BUY){
               price_BUY=OrderOpenPrice();
               My_order=OP_BUY;
               if(Ask>= NormalizeDouble(OrderOpenPrice()+(PGrid*My_tt_pgrid)*MyPoint,Digits) && tt_pgrid_opened<PGrid_Max){
                result=OrderSend(Symbol(),OP_BUY,Default_Lot,Ask,Slippage,0,0,Comment_Open_PGrid,Magic_Number,0,CLR_NONE);
                if(result<0){Print("SVEA error, order PGrid, error number "+GetLastError());break;}
                if(control_Stealth_status()==1 && OrderStopLoss()>0 && OrderTakeProfit()>0)OrderModify(OrderTicket(),OrderOpenPrice(),0,0,0,CLR_NONE);
                RefreshRates();
                break;
               }
            }
            
            if(OrderType()==OP_SELL){
               price_SELL=OrderOpenPrice();
               My_order=OP_SELL;
               if(Bid<= NormalizeDouble(OrderOpenPrice()-(PGrid*My_tt_pgrid)*MyPoint,Digits) && tt_pgrid_opened<PGrid_Max){
                result=OrderSend(Symbol(),OP_SELL,Default_Lot,Bid,Slippage,0,0,Comment_Open_PGrid,Magic_Number,0,CLR_NONE);
                if(result<0){Print("SVEA error, order PGrid, error number "+GetLastError());break;}
                if(control_Stealth_status()==1 && OrderStopLoss()>0 && OrderTakeProfit()>0)OrderModify(OrderTicket(),OrderOpenPrice(),0,0,0,CLR_NONE);
                RefreshRates();
                break;
               }
            }  
            break;
          }
   }
   
   tt_order    =  OrdersTotal();
   control_type_order();
   if(tt_pgrid_opened<1)return(0);
   
   if(price_BUY!=0.0){
      n_SL=NormalizeDouble(price_BUY+(PGrid*tt_pgrid_opened-PGrid_Stop)*MyPoint,Digits);
      n_TP=NormalizeDouble(price_BUY+(PGrid*tt_pgrid_opened+take_profit)*MyPoint,Digits);
      //Print(n_SL+"/"+n_TP);
   }
   if(price_SELL!=0.0){
      n2_SL=NormalizeDouble(price_SELL-(PGrid*tt_pgrid_opened-PGrid_Stop)*MyPoint,Digits);
      n2_TP=NormalizeDouble(price_SELL-(PGrid*tt_pgrid_opened+take_profit)*MyPoint,Digits);
      //Print(n2_SL+"/"+n2_TP);
   }
   
   if(control_Stealth_status()==1){
      if(My_order==OP_BUY && n_SL>0.0 && n_TP>0.0){
         if(Bid<n_SL || Bid>n_TP){
            close_all_order();
            return(0);
         }   
      }
      if(My_order==OP_SELL && n2_SL>0.0 && n2_TP>0.0){
         if(Ask>n2_SL || Ask<n2_TP){
            close_all_order();
            return(0);
         }   
      }
      return(0);
   }
   
   for(int x2=0; x2<tt_order; x2++)
   {
       OrderSelect(x2,SELECT_BY_POS,MODE_TRADES);
          if(OrderSymbol()!=My_Symbol || OrderMagicNumber()!=Magic_Number)continue;
          if(OrderComment()==Comment_Open_PGrid || OrderComment()==Comment_Open_Manual || OrderComment()==Comment_Open_Auto){
            if(OrderType()==OP_BUY && n_SL>0.0 && n_TP>0.0){
               if(OrderStopLoss()!= n_SL && OrderTakeProfit()!= n_TP){
                  OrderModify(OrderTicket(),OrderOpenPrice(),n_SL,n_TP,0,CLR_NONE);
                  RefreshRates();
               }
            }
            if(OrderType()==OP_SELL && n2_SL>0.0 && n2_TP>0.0){
               if(OrderStopLoss()!= n2_SL && OrderTakeProfit()!= n2_TP){
                  OrderModify(OrderTicket(),OrderOpenPrice(),n2_SL,n2_TP,0,CLR_NONE);
                  RefreshRates();
               }
            }
          }
   }    
   //----------------------------------
}

//+------------------------------------------------------------------+
//| Controll and set all Take Profit and StopLoss for NGRID          |
//+------------------------------------------------------------------+
void control_Ngrid_order(){
     
   switch(tt_ngrid_opened){
      case 0: break;
      case 1: 
         if(My_tt_profit>=NGrid_1_TP_In_Money){
            close_all_order();
            return(0);
         }
         break;
      case 2:  
         if(My_tt_profit>=NGrid_2_TP_In_Money){
            close_all_order();
            return(0);
         }
         break;
      case 3: 
         if(My_tt_profit>=NGrid_3_TP_In_Money){
            close_all_order();
            return(0);
         }
         break;
      default: 
         if(My_tt_profit>=NGrid_over_TP_In_Money){
            close_all_order();
            return(0);
         }
   }
   
   if(tt_pgrid_opened>0 || control_Ngrid_status()!=1 || (tt_manual_opened<1 && tt_auto_opened<1))return(0);
  
   double   stop_loss   =  get_SL_or_TP(0,0);
   double   take_profit =  get_SL_or_TP(0,1);
   double   price_BUY   =  0.0;
   double   price_SELL  =  0.0;
   int      result      =  0;
   double   n_SL        =  0.0;
   double   n_TP        =  0.0;
   double   n2_SL       =  0.0;
   double   n2_TP       =  0.0;
   int      tt_order    =  OrdersTotal();
   int      My_order    =  -1;
   int      My_tt_ngrid =  tt_ngrid_opened+1;
   
   
   for(int x=0; x<tt_order; x++)
   {
       OrderSelect(x,SELECT_BY_POS,MODE_TRADES);
          if(OrderSymbol()!=My_Symbol || OrderMagicNumber()!=Magic_Number)continue;
          if(OrderComment()==Comment_Open_Manual || OrderComment()==Comment_Open_Auto){
            //apro il primo ordine modifico il pimo e esco ed esco
            if(OrderType()==OP_BUY){
               price_BUY=OrderOpenPrice();
               My_order=OP_BUY;
               if(Ask<= NormalizeDouble(OrderOpenPrice()-(NGrid*My_tt_ngrid)*MyPoint,Digits) && tt_ngrid_opened<NGrid_Max){
                result=OrderSend(Symbol(),OP_BUY,Default_Lot+(NGrid_Increment*(My_tt_ngrid*NGrid_Multiplier)),Ask,Slippage,0,0,Comment_Open_NGrid,Magic_Number,0,CLR_NONE);
                if(result<0){Print("SVEA error, order NGrid, error number "+GetLastError());break;}
                if(control_Stealth_status()==1 && OrderStopLoss()>0 && OrderTakeProfit()>0)OrderModify(OrderTicket(),OrderOpenPrice(),0,0,0,CLR_NONE);
                RefreshRates();
                break;
               }
            }
            
            if(OrderType()==OP_SELL){
               price_SELL=OrderOpenPrice();
               My_order=OP_SELL;
               if(Bid>= NormalizeDouble(OrderOpenPrice()+(NGrid*My_tt_ngrid)*MyPoint,Digits) && tt_ngrid_opened<NGrid_Max){
                result=OrderSend(Symbol(),OP_SELL,Default_Lot+(NGrid_Increment*(My_tt_ngrid*NGrid_Multiplier)),Bid,Slippage,0,0,Comment_Open_NGrid,Magic_Number,0,CLR_NONE);
                if(result<0){Print("SVEA error, order NGrid, error number "+GetLastError());break;}
                if(control_Stealth_status()==1 && OrderStopLoss()>0 && OrderTakeProfit()>0)OrderModify(OrderTicket(),OrderOpenPrice(),0,0,0,CLR_NONE);
                RefreshRates();
                break;
               }
            }  
            break;
          }
   }
   
   tt_order    =  OrdersTotal();
   control_type_order();
   if(tt_ngrid_opened<1)return(0);
   
   if(price_BUY!=0.0){
      n_SL=NormalizeDouble(price_BUY-((NGrid*tt_ngrid_opened)+stop_loss)*MyPoint,Digits);
      n_TP=NormalizeDouble(price_BUY+take_profit*MyPoint,Digits);
   }
   if(price_SELL!=0.0){
      n2_SL=NormalizeDouble(price_SELL+((NGrid*tt_ngrid_opened)+stop_loss)*MyPoint,Digits);
      n2_TP=NormalizeDouble(price_SELL-take_profit*MyPoint,Digits);
   }
   
   if(control_Stealth_status()==1){
      if(My_order==OP_BUY && n_SL>0.0 && n_TP>0.0){
         if(Bid<n_SL || Bid>n_TP){
            close_all_order();
            return(0);
         }
      }
      if(My_order==OP_SELL && n2_SL>0.0 && n2_TP>0.0){
         if(Ask>n2_SL || Ask<n2_TP){
            close_all_order();
            return(0);
         }   
      }
      return(0);
   }
   
   for(int x2=0; x2<tt_order; x2++)
   {
       OrderSelect(x2,SELECT_BY_POS,MODE_TRADES);
          if(OrderSymbol()!=My_Symbol || OrderMagicNumber()!=Magic_Number)continue;
          if(OrderComment()==Comment_Open_NGrid || OrderComment()==Comment_Open_Manual || OrderComment()==Comment_Open_Auto){
            if(OrderType()==OP_BUY && n_SL>0.0 && n_TP>0.0){
               if(OrderStopLoss()!= n_SL || OrderTakeProfit()!= n_TP){
                  OrderModify(OrderTicket(),OrderOpenPrice(),n_SL,n_TP,0,CLR_NONE);
                  RefreshRates();
               }
            }
            if(OrderType()==OP_SELL && n2_SL>0.0 && n2_TP>0.0){
               if(OrderStopLoss()!= n2_SL || OrderTakeProfit()!= n2_TP){
                  OrderModify(OrderTicket(),OrderOpenPrice(),n2_SL,n2_TP,0,CLR_NONE);
                  RefreshRates();
               }
            }
          }
   }    
   //----------------------------------
}

//+------------------------------------------------------------------+
//| Controll and set all Take Profit and StopLoss                    |
//| for trailing; safe; stealth mode                                 | 
//+------------------------------------------------------------------+
void control_opened_order(){

   if(tt_pgrid_opened>0 || tt_ngrid_opened>0)return(0);
   
   double   stop_loss   =  get_SL_or_TP(0,0);
   double   take_profit =  get_SL_or_TP(0,1);      
   int      tt_order    =  OrdersTotal();
   
   for(int i=0; i<tt_order; i++)
   {  
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderSymbol()!=My_Symbol || OrderMagicNumber()!=Magic_Number)continue;
      //start control for manual/auto opened---------
      if(OrderComment()==Comment_Open_Manual || OrderComment()==Comment_Open_Auto){
         if(OrderType()==OP_BUY){
            if(control_Stealth_status()!=1 || (OrderStopLoss()>OrderOpenPrice())){
               if(stop_loss<0.0 || take_profit<0.0){
                if(!al_err_1){
                   Alert("SVEA error modify order for Stealth Mode, please contact "+Real_Email);
                   al_err_1=true;
                }   
               }else if(control_Safe_status()==1 && OrderStopLoss()<OrderOpenPrice() && Bid>=NormalizeDouble(OrderOpenPrice()+Safe_Trade_On*MyPoint,Digits)){
                    OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(OrderOpenPrice()+Safe_Trade_At*MyPoint,Digits),NormalizeDouble(OrderOpenPrice()+take_profit*MyPoint,Digits),0,CLR_NONE);
               }else if(control_Trailing_status()==1 && (Bid-OrderStopLoss()>Trailing_For*MyPoint) && Bid>=NormalizeDouble(OrderOpenPrice()+Trailing_Start*MyPoint,Digits)){
                  if(Trailing_Ignore_TP){
                     OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(Bid-Trailing_For*MyPoint,Digits),0,0,CLR_NONE);
                  }else{
                     OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(Bid-Trailing_For*MyPoint,Digits),NormalizeDouble(OrderOpenPrice()+take_profit*MyPoint,Digits),0,CLR_NONE);
                  }                  
               }else if(OrderStopLoss()==0.0 && OrderTakeProfit()==0.0){
                 if(stop_loss>0.0 && take_profit>0.0){
                    OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(OrderOpenPrice()-stop_loss*MyPoint,Digits),NormalizeDouble(OrderOpenPrice()+take_profit*MyPoint,Digits),0,CLR_NONE);
                 }else if(!(stop_loss>0.0) && take_profit>0.0){
                    OrderModify(OrderTicket(),OrderOpenPrice(),0,NormalizeDouble(OrderOpenPrice()+take_profit*MyPoint,Digits),0,CLR_NONE);
                 }else if(stop_loss>0.0 && !(take_profit>0.0)){
                    OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(OrderOpenPrice()-stop_loss*MyPoint,Digits),0,0,CLR_NONE);
                 }                                    
               }               
            }else if((OrderStopLoss()>0.0 || OrderTakeProfit()>0.0) && (OrderStopLoss()<OrderOpenPrice()) && control_Stealth_status()==1){
             OrderModify(OrderTicket(),OrderOpenPrice(),0,0,0,CLR_NONE);
            }  
         }
         if(OrderType()==OP_SELL){
            if(control_Stealth_status()!=1 || (OrderStopLoss()<OrderOpenPrice() && OrderStopLoss()!=0.0)){
               if(stop_loss<0.0 || take_profit<0.0){
                if(!al_err_1){
                   Alert("SVEA error modify order for Stealth Mode, please contact "+Real_Email);
                   al_err_1=true;
                }   
               }else if(control_Safe_status()==1 && (OrderStopLoss()==0.0 || OrderStopLoss()>OrderOpenPrice()) && Ask<=NormalizeDouble(OrderOpenPrice()-Safe_Trade_On*MyPoint,Digits)){
                  OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(OrderOpenPrice()-Safe_Trade_At*MyPoint,Digits),NormalizeDouble(OrderOpenPrice()-take_profit*MyPoint,Digits),0,CLR_NONE);
               }else if(control_Trailing_status()==1 && (OrderStopLoss()==0.0 || OrderStopLoss()-Ask>Trailing_For*MyPoint) && Ask<=NormalizeDouble(OrderOpenPrice()-Trailing_Start*MyPoint,Digits)){
                  if(Trailing_Ignore_TP){
                     OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(Ask+Trailing_For*MyPoint,Digits),0,0,CLR_NONE);
                  }else{
                     OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(Ask+Trailing_For*MyPoint,Digits),NormalizeDouble(OrderOpenPrice()-take_profit*MyPoint,Digits),0,CLR_NONE);
                  }                  
               }else if(OrderStopLoss()==0.0 && OrderTakeProfit()==0.0){
                  if(stop_loss>0.0 && take_profit>0.0){
                    OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(OrderOpenPrice()+stop_loss*MyPoint,Digits),NormalizeDouble(OrderOpenPrice()-take_profit*MyPoint,Digits),0,CLR_NONE);
                 }else if(!(stop_loss>0.0) && take_profit>0.0){
                    OrderModify(OrderTicket(),OrderOpenPrice(),0,NormalizeDouble(OrderOpenPrice()-take_profit*MyPoint,Digits),0,CLR_NONE);
                 }else if(stop_loss>0.0 && !(take_profit>0.0)){
                    OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(OrderOpenPrice()+stop_loss*MyPoint,Digits),0,0,CLR_NONE);
                 }                                    
               }               
            }else if((OrderStopLoss()>0.0 || OrderTakeProfit()>0.0) && (OrderStopLoss()>OrderOpenPrice()) && control_Stealth_status()==1){
             OrderModify(OrderTicket(),OrderOpenPrice(),0,0,0,CLR_NONE);
            }  
         }            
      }
      //end control for manual/auto opened---------
   } 
   //----------------------------------
   
}

//+------------------------------------------------------------------+
//| Controll if close position in stealth mode                       |
//+------------------------------------------------------------------+
void control_close_order(){

   if(tt_pgrid_opened>0 || tt_ngrid_opened>0)return(0);
   
   double   stop_loss   =  get_SL_or_TP(0,0);
   double   take_profit =  get_SL_or_TP(0,1);  
   int      tt_order    =  OrdersTotal();
   
   
   for(int i=0; i<tt_order; i++)
   {
      OrderSelect(i,SELECT_BY_POS,MODE_TRADES);
      if(OrderSymbol()!=My_Symbol || OrderMagicNumber()!=Magic_Number)continue;
      //start control for manual/auto opened---------
      if(OrderComment()==Comment_Open_Manual || OrderComment()==Comment_Open_Auto){
         if(OrderType()==OP_BUY){
            if(control_Stealth_status()==1 && !(OrderStopLoss()>0.0) && !(OrderTakeProfit()>0.0)){
               if(control_Safe_status()==1 && Bid>=NormalizeDouble(OrderOpenPrice()+Safe_Trade_On*MyPoint,Digits)){
                  OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(OrderOpenPrice()+Safe_Trade_At*MyPoint,Digits),NormalizeDouble(OrderOpenPrice()+take_profit*MyPoint,Digits),0,CLR_NONE);
               }else if(control_Trailing_status()==1 && Bid>=NormalizeDouble(OrderOpenPrice()+Trailing_Start*MyPoint,Digits)){
                  if(Trailing_Ignore_TP){
                     OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(Bid-Trailing_For*MyPoint,Digits),0,0,CLR_NONE);
                  }else{
                     OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(Bid-Trailing_For*MyPoint,Digits),NormalizeDouble(OrderOpenPrice()+take_profit*MyPoint,Digits),0,CLR_NONE);
                  }                  
               }else{
                  if(stop_loss>0.0){
                     if(Bid<=NormalizeDouble(OrderOpenPrice()-stop_loss*MyPoint,Digits)){
                      RefreshRates();
                      bool a=OrderClose(OrderTicket(),OrderLots(),Bid,Slippage,CLR_NONE);
                      if(!a)Print("SVEA error, order not closed, error number "+GetLastError());
                      continue;
                     }
                   }
                  if(take_profit>0.0){
                     if(Bid>=NormalizeDouble(OrderOpenPrice()+take_profit*MyPoint,Digits)){
                      RefreshRates();
                      bool b=OrderClose(OrderTicket(),OrderLots(),Bid,Slippage,CLR_NONE);
                      if(!b)Print("SVEA error, order not closed, error number "+GetLastError());
                      continue;
                     }
                  }     
               }          
            } 
         }
         if(OrderType()==OP_SELL){
            if(control_Stealth_status()==1 && !(OrderStopLoss()>0.0) && !(OrderTakeProfit()>0.0)){
               if(control_Safe_status()==1 && Ask<=NormalizeDouble(OrderOpenPrice()-Safe_Trade_On*MyPoint,Digits)){
                  OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(OrderOpenPrice()-Safe_Trade_At*MyPoint,Digits),NormalizeDouble(OrderOpenPrice()-take_profit*MyPoint,Digits),0,CLR_NONE);
               }else if(control_Trailing_status()==1 && Ask<=NormalizeDouble(OrderOpenPrice()-Trailing_Start*MyPoint,Digits)){
                  if(Trailing_Ignore_TP){
                     OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(Ask+Trailing_For*MyPoint,Digits),0,0,CLR_NONE);
                  }else{
                     OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(Ask+Trailing_For*MyPoint,Digits),NormalizeDouble(OrderOpenPrice()-take_profit*MyPoint,Digits),0,CLR_NONE);
                  }                  
               }else{
                  if(stop_loss>0.0){
                     if(Ask>=NormalizeDouble(OrderOpenPrice()+stop_loss*MyPoint,Digits)){
                      RefreshRates();
                      bool c=OrderClose(OrderTicket(),OrderLots(),Ask,Slippage,CLR_NONE);
                      if(!c)Print("SVEA error, order not closed, error number "+GetLastError());
                      continue;
                     }
                   }
                  if(take_profit>0.0){
                     if(Ask<=NormalizeDouble(OrderOpenPrice()-take_profit*MyPoint,Digits)){
                      RefreshRates();
                      bool d=OrderClose(OrderTicket(),OrderLots(),Ask,Slippage,CLR_NONE);
                      if(!d)Print("SVEA error, order not closed, error number "+GetLastError());
                      continue;
                     }
                  }  
               }           
            } 
         }       
      }
      //end control for manual/auto opened---------
   } 
   //----------------------------------
}

//+------------------------------------------------------------------+


//+------------------------------------------------------------------+
//| Create, delete or refresh Box layout and value                   |
//+------------------------------------------------------------------+
void create_box(){

   if(!Show_Box_Information)return(0);
   
   string default_value =  "Initializing";
   int    field_value   =  50;
   //Define and create title   
   if (ObjectFind(RealName_EA+" "+lb_title) < 0) {
      ObjectCreate (RealName_EA+" "+lb_title, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_title, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_title, OBJPROP_XDISTANCE, Box_X);
      ObjectSet    (RealName_EA+" "+lb_title, OBJPROP_YDISTANCE, Box_Y);
      ObjectSetText(RealName_EA+" "+lb_title,RealName_EA+" "+RealVersion_EA,Car_Box_Title_size, Car_Box_Title_font, Color_Title_font);
   }   
   //Define and create spread
   if (ObjectFind(RealName_EA+" "+lb_1_field) < 0) {
      ObjectCreate (RealName_EA+" "+lb_1_field, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_1_field, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_1_field, OBJPROP_XDISTANCE, Box_X+50);
      ObjectSet    (RealName_EA+" "+lb_1_field, OBJPROP_YDISTANCE, Box_Y+20);
      ObjectSetText(RealName_EA+" "+lb_1_field,"Spread :",Car_Box_size, Car_Box_font, Color_Box_font);
   }  
   if (ObjectFind(RealName_EA+" "+lb_1_value) < 0) {
      ObjectCreate (RealName_EA+" "+lb_1_value, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_1_value, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_1_value, OBJPROP_XDISTANCE, Box_X-field_value);
      ObjectSet    (RealName_EA+" "+lb_1_value, OBJPROP_YDISTANCE, Box_Y+20);
      ObjectSetText(RealName_EA+" "+lb_1_value,default_value,Car_Box_size, Car_Box_font, Color_Box_font_value);
   } 
   //Define and create lots
   if (ObjectFind(RealName_EA+" "+lb_2_field) < 0) {
      ObjectCreate (RealName_EA+" "+lb_2_field, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_2_field, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_2_field, OBJPROP_XDISTANCE, Box_X+50);
      ObjectSet    (RealName_EA+" "+lb_2_field, OBJPROP_YDISTANCE, Box_Y+35);
      ObjectSetText(RealName_EA+" "+lb_2_field,"Default Lot :",Car_Box_size, Car_Box_font, Color_Box_font);
   }  
   if (ObjectFind(RealName_EA+" "+lb_2_value) < 0) {
      ObjectCreate (RealName_EA+" "+lb_2_value, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_2_value, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_2_value, OBJPROP_XDISTANCE, Box_X-field_value);
      ObjectSet    (RealName_EA+" "+lb_2_value, OBJPROP_YDISTANCE, Box_Y+35);
      ObjectSetText(RealName_EA+" "+lb_2_value,default_value,Car_Box_size, Car_Box_font, Color_Box_font_value);
   } 
   //Define and create stealth mode
   if (ObjectFind(RealName_EA+" "+lb_3_field) < 0) {
      ObjectCreate (RealName_EA+" "+lb_3_field, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_3_field, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_3_field, OBJPROP_XDISTANCE, Box_X+50);
      ObjectSet    (RealName_EA+" "+lb_3_field, OBJPROP_YDISTANCE, Box_Y+50);
      ObjectSetText(RealName_EA+" "+lb_3_field,"Stealth Mode :",Car_Box_size, Car_Box_font, Color_Box_font);
   }  
   if (ObjectFind(RealName_EA+" "+lb_3_value) < 0) {
      ObjectCreate (RealName_EA+" "+lb_3_value, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_3_value, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_3_value, OBJPROP_XDISTANCE, Box_X-field_value);
      ObjectSet    (RealName_EA+" "+lb_3_value, OBJPROP_YDISTANCE, Box_Y+50);
      ObjectSetText(RealName_EA+" "+lb_3_value,default_value,Car_Box_size, Car_Box_font, Color_Box_font_value);
   } 
   //Define and create Manual open buy over
   if (ObjectFind(RealName_EA+" "+lb_5_field) < 0) {
      ObjectCreate (RealName_EA+" "+lb_5_field, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_5_field, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_5_field, OBJPROP_XDISTANCE, Box_X+50);
      ObjectSet    (RealName_EA+" "+lb_5_field, OBJPROP_YDISTANCE, Box_Y+85);
      ObjectSetText(RealName_EA+" "+lb_5_field,"MOB over :",Car_Box_size, Car_Box_font, Color_Box_font);
   }  
   if (ObjectFind(RealName_EA+" "+lb_5_value) < 0) {
      ObjectCreate (RealName_EA+" "+lb_5_value, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_5_value, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_5_value, OBJPROP_XDISTANCE, Box_X-field_value);
      ObjectSet    (RealName_EA+" "+lb_5_value, OBJPROP_YDISTANCE, Box_Y+85);
      ObjectSetText(RealName_EA+" "+lb_5_value,default_value,Car_Box_size, Car_Box_font, Color_Box_font_value);
   } 
   //Define and create Manual open buy under
   if (ObjectFind(RealName_EA+" "+lb_6_field) < 0) {
      ObjectCreate (RealName_EA+" "+lb_6_field, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_6_field, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_6_field, OBJPROP_XDISTANCE, Box_X+50);
      ObjectSet    (RealName_EA+" "+lb_6_field, OBJPROP_YDISTANCE, Box_Y+100);
      ObjectSetText(RealName_EA+" "+lb_6_field,"MOB under :",Car_Box_size, Car_Box_font, Color_Box_font);
   }  
   if (ObjectFind(RealName_EA+" "+lb_6_value) < 0) {
      ObjectCreate (RealName_EA+" "+lb_6_value, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_6_value, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_6_value, OBJPROP_XDISTANCE, Box_X-field_value);
      ObjectSet    (RealName_EA+" "+lb_6_value, OBJPROP_YDISTANCE, Box_Y+100);
      ObjectSetText(RealName_EA+" "+lb_6_value,default_value,Car_Box_size, Car_Box_font, Color_Box_font_value);
   } 
   //Define and create Manual open sell over
   if (ObjectFind(RealName_EA+" "+lb_7_field) < 0) {
      ObjectCreate (RealName_EA+" "+lb_7_field, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_7_field, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_7_field, OBJPROP_XDISTANCE, Box_X+50);
      ObjectSet    (RealName_EA+" "+lb_7_field, OBJPROP_YDISTANCE, Box_Y+115);
      ObjectSetText(RealName_EA+" "+lb_7_field,"MOS over :",Car_Box_size, Car_Box_font, Color_Box_font);
   }  
   if (ObjectFind(RealName_EA+" "+lb_7_value) < 0) {
      ObjectCreate (RealName_EA+" "+lb_7_value, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_7_value, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_7_value, OBJPROP_XDISTANCE, Box_X-field_value);
      ObjectSet    (RealName_EA+" "+lb_7_value, OBJPROP_YDISTANCE, Box_Y+115);
      ObjectSetText(RealName_EA+" "+lb_7_value,default_value,Car_Box_size, Car_Box_font, Color_Box_font_value);
   } 
   //Define and create Manual open sell under
   if (ObjectFind(RealName_EA+" "+lb_8_field) < 0) {
      ObjectCreate (RealName_EA+" "+lb_8_field, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_8_field, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_8_field, OBJPROP_XDISTANCE, Box_X+50);
      ObjectSet    (RealName_EA+" "+lb_8_field, OBJPROP_YDISTANCE, Box_Y+130);
      ObjectSetText(RealName_EA+" "+lb_8_field,"MOS under :",Car_Box_size, Car_Box_font, Color_Box_font);
   }  
   if (ObjectFind(RealName_EA+" "+lb_8_value) < 0) {
      ObjectCreate (RealName_EA+" "+lb_8_value, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_8_value, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_8_value, OBJPROP_XDISTANCE, Box_X-field_value);
      ObjectSet    (RealName_EA+" "+lb_8_value, OBJPROP_YDISTANCE, Box_Y+130);
      ObjectSetText(RealName_EA+" "+lb_8_value,default_value,Car_Box_size, Car_Box_font, Color_Box_font_value);
   } 
   //Define and create Automatic
   if (ObjectFind(RealName_EA+" "+lb_9_field) < 0) {
      ObjectCreate (RealName_EA+" "+lb_9_field, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_9_field, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_9_field, OBJPROP_XDISTANCE, Box_X+50);
      ObjectSet    (RealName_EA+" "+lb_9_field, OBJPROP_YDISTANCE, Box_Y+150);
      ObjectSetText(RealName_EA+" "+lb_9_field,"Automatic :",Car_Box_size, Car_Box_font, Color_Box_font);
   }  
   if (ObjectFind(RealName_EA+" "+lb_9_value) < 0) {
      ObjectCreate (RealName_EA+" "+lb_9_value, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_9_value, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_9_value, OBJPROP_XDISTANCE, Box_X-field_value);
      ObjectSet    (RealName_EA+" "+lb_9_value, OBJPROP_YDISTANCE, Box_Y+150);
      ObjectSetText(RealName_EA+" "+lb_9_value,default_value,Car_Box_size, Car_Box_font, Color_Box_font_value);
   } 
   //Define and Positive grid
   if (ObjectFind(RealName_EA+" "+lb_10_field) < 0) {
      ObjectCreate (RealName_EA+" "+lb_10_field, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_10_field, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_10_field, OBJPROP_XDISTANCE, Box_X+50);
      ObjectSet    (RealName_EA+" "+lb_10_field, OBJPROP_YDISTANCE, Box_Y+165);
      ObjectSetText(RealName_EA+" "+lb_10_field,"Positive Grid :",Car_Box_size, Car_Box_font, Color_Box_font);
   }  
   if (ObjectFind(RealName_EA+" "+lb_10_value) < 0) {
      ObjectCreate (RealName_EA+" "+lb_10_value, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_10_value, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_10_value, OBJPROP_XDISTANCE, Box_X-field_value);
      ObjectSet    (RealName_EA+" "+lb_10_value, OBJPROP_YDISTANCE, Box_Y+165);
      ObjectSetText(RealName_EA+" "+lb_10_value,default_value,Car_Box_size, Car_Box_font, Color_Box_font_value);
   } 
   //Define and Negative grid
   if (ObjectFind(RealName_EA+" "+lb_11_field) < 0) {
      ObjectCreate (RealName_EA+" "+lb_11_field, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_11_field, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_11_field, OBJPROP_XDISTANCE, Box_X+50);
      ObjectSet    (RealName_EA+" "+lb_11_field, OBJPROP_YDISTANCE, Box_Y+180);
      ObjectSetText(RealName_EA+" "+lb_11_field,"Negative Grid :",Car_Box_size, Car_Box_font, Color_Box_font);
   }  
   if (ObjectFind(RealName_EA+" "+lb_11_value) < 0) {
      ObjectCreate (RealName_EA+" "+lb_11_value, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_11_value, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_11_value, OBJPROP_XDISTANCE, Box_X-field_value);
      ObjectSet    (RealName_EA+" "+lb_11_value, OBJPROP_YDISTANCE, Box_Y+180);
      ObjectSetText(RealName_EA+" "+lb_11_value,default_value,Car_Box_size, Car_Box_font, Color_Box_font_value);
   } 
   //Define and Safe trade
   if (ObjectFind(RealName_EA+" "+lb_12_field) < 0) {
      ObjectCreate (RealName_EA+" "+lb_12_field, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_12_field, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_12_field, OBJPROP_XDISTANCE, Box_X+50);
      ObjectSet    (RealName_EA+" "+lb_12_field, OBJPROP_YDISTANCE, Box_Y+195);
      ObjectSetText(RealName_EA+" "+lb_12_field,"Safe Trade :",Car_Box_size, Car_Box_font, Color_Box_font);
   }  
   if (ObjectFind(RealName_EA+" "+lb_12_value) < 0) {
      ObjectCreate (RealName_EA+" "+lb_12_value, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_12_value, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_12_value, OBJPROP_XDISTANCE, Box_X-field_value);
      ObjectSet    (RealName_EA+" "+lb_12_value, OBJPROP_YDISTANCE, Box_Y+195);
      ObjectSetText(RealName_EA+" "+lb_12_value,default_value,Car_Box_size, Car_Box_font, Color_Box_font_value);
   } 
   //Define and Trailing
   if (ObjectFind(RealName_EA+" "+lb_13_field) < 0) {
      ObjectCreate (RealName_EA+" "+lb_13_field, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_13_field, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_13_field, OBJPROP_XDISTANCE, Box_X+50);
      ObjectSet    (RealName_EA+" "+lb_13_field, OBJPROP_YDISTANCE, Box_Y+210);
      ObjectSetText(RealName_EA+" "+lb_13_field,"Trailing :",Car_Box_size, Car_Box_font, Color_Box_font);
   }  
   if (ObjectFind(RealName_EA+" "+lb_13_value) < 0) {
      ObjectCreate (RealName_EA+" "+lb_13_value, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_13_value, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_13_value, OBJPROP_XDISTANCE, Box_X-field_value);
      ObjectSet    (RealName_EA+" "+lb_13_value, OBJPROP_YDISTANCE, Box_Y+210);
      ObjectSetText(RealName_EA+" "+lb_13_value,default_value,Car_Box_size, Car_Box_font, Color_Box_font_value);
   } 
   //Define and Take Profit
   if (ObjectFind(RealName_EA+" "+lb_14_field) < 0) {
      ObjectCreate (RealName_EA+" "+lb_14_field, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_14_field, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_14_field, OBJPROP_XDISTANCE, Box_X+50);
      ObjectSet    (RealName_EA+" "+lb_14_field, OBJPROP_YDISTANCE, Box_Y+225);
      ObjectSetText(RealName_EA+" "+lb_14_field,"TP/SL :",Car_Box_size, Car_Box_font, Color_Box_font);
   }  
   if (ObjectFind(RealName_EA+" "+lb_14_value) < 0) {
      ObjectCreate (RealName_EA+" "+lb_14_value, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_14_value, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_14_value, OBJPROP_XDISTANCE, Box_X-field_value);
      ObjectSet    (RealName_EA+" "+lb_14_value, OBJPROP_YDISTANCE, Box_Y+225);
      ObjectSetText(RealName_EA+" "+lb_14_value,default_value,Car_Box_size, Car_Box_font, Color_Box_font_value);
   } 
   
   //Define Balance
   if (ObjectFind(RealName_EA+" "+lb_15_field) < 0) {
      ObjectCreate (RealName_EA+" "+lb_15_field, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_15_field, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_15_field, OBJPROP_XDISTANCE, Box_X+50);
      ObjectSet    (RealName_EA+" "+lb_15_field, OBJPROP_YDISTANCE, Box_Y+250);
      ObjectSetText(RealName_EA+" "+lb_15_field,"Profit :",Car_Box_size, Car_Box_font, Color_Box_font);
   }  
   if (ObjectFind(RealName_EA+" "+lb_15_value) < 0) {
      ObjectCreate (RealName_EA+" "+lb_15_value, OBJ_LABEL,0, 0, 0);
      ObjectSet    (RealName_EA+" "+lb_15_value, OBJPROP_CORNER, 1);  
      ObjectSet    (RealName_EA+" "+lb_15_value, OBJPROP_XDISTANCE, Box_X-field_value);
      ObjectSet    (RealName_EA+" "+lb_15_value, OBJPROP_YDISTANCE, Box_Y+250);
      ObjectSetText(RealName_EA+" "+lb_15_value,default_value,Car_Box_size, Car_Box_font, Color_Box_font_value);
   } 
}

void delete_box(){
   if (ObjectFind(RealName_EA+" "+lb_title) >= 0)ObjectDelete(RealName_EA+" "+lb_title);
   if (ObjectFind(RealName_EA+" "+lb_1_field) >= 0)ObjectDelete(RealName_EA+" "+lb_1_field);
   if (ObjectFind(RealName_EA+" "+lb_1_value) >= 0)ObjectDelete(RealName_EA+" "+lb_1_value);
   if (ObjectFind(RealName_EA+" "+lb_2_field) >= 0)ObjectDelete(RealName_EA+" "+lb_2_field);
   if (ObjectFind(RealName_EA+" "+lb_2_value) >= 0)ObjectDelete(RealName_EA+" "+lb_2_value);
   if (ObjectFind(RealName_EA+" "+lb_3_field) >= 0)ObjectDelete(RealName_EA+" "+lb_3_field);
   if (ObjectFind(RealName_EA+" "+lb_3_value) >= 0)ObjectDelete(RealName_EA+" "+lb_3_value);
   if (ObjectFind(RealName_EA+" "+lb_5_field) >= 0)ObjectDelete(RealName_EA+" "+lb_5_field);
   if (ObjectFind(RealName_EA+" "+lb_5_value) >= 0)ObjectDelete(RealName_EA+" "+lb_5_value);
   if (ObjectFind(RealName_EA+" "+lb_6_field) >= 0)ObjectDelete(RealName_EA+" "+lb_6_field);
   if (ObjectFind(RealName_EA+" "+lb_6_value) >= 0)ObjectDelete(RealName_EA+" "+lb_6_value);
   if (ObjectFind(RealName_EA+" "+lb_7_field) >= 0)ObjectDelete(RealName_EA+" "+lb_7_field);
   if (ObjectFind(RealName_EA+" "+lb_7_value) >= 0)ObjectDelete(RealName_EA+" "+lb_7_value);
   if (ObjectFind(RealName_EA+" "+lb_8_field) >= 0)ObjectDelete(RealName_EA+" "+lb_8_field);
   if (ObjectFind(RealName_EA+" "+lb_8_value) >= 0)ObjectDelete(RealName_EA+" "+lb_8_value);
   if (ObjectFind(RealName_EA+" "+lb_9_field) >= 0)ObjectDelete(RealName_EA+" "+lb_9_field);
   if (ObjectFind(RealName_EA+" "+lb_9_value) >= 0)ObjectDelete(RealName_EA+" "+lb_9_value);
   if (ObjectFind(RealName_EA+" "+lb_10_field) >= 0)ObjectDelete(RealName_EA+" "+lb_10_field);
   if (ObjectFind(RealName_EA+" "+lb_10_value) >= 0)ObjectDelete(RealName_EA+" "+lb_10_value);
   if (ObjectFind(RealName_EA+" "+lb_11_field) >= 0)ObjectDelete(RealName_EA+" "+lb_11_field);
   if (ObjectFind(RealName_EA+" "+lb_11_value) >= 0)ObjectDelete(RealName_EA+" "+lb_11_value);
   if (ObjectFind(RealName_EA+" "+lb_12_field) >= 0)ObjectDelete(RealName_EA+" "+lb_12_field);
   if (ObjectFind(RealName_EA+" "+lb_12_value) >= 0)ObjectDelete(RealName_EA+" "+lb_12_value);
   if (ObjectFind(RealName_EA+" "+lb_13_field) >= 0)ObjectDelete(RealName_EA+" "+lb_13_field);
   if (ObjectFind(RealName_EA+" "+lb_13_value) >= 0)ObjectDelete(RealName_EA+" "+lb_13_value);
   if (ObjectFind(RealName_EA+" "+lb_14_field) >= 0)ObjectDelete(RealName_EA+" "+lb_14_field);
   if (ObjectFind(RealName_EA+" "+lb_14_value) >= 0)ObjectDelete(RealName_EA+" "+lb_14_value);
   if (ObjectFind(RealName_EA+" "+lb_15_field) >= 0)ObjectDelete(RealName_EA+" "+lb_15_field);
   if (ObjectFind(RealName_EA+" "+lb_15_value) >= 0)ObjectDelete(RealName_EA+" "+lb_15_value);
}

void refresh_box(){
   string spread=DoubleToStr(current_spread(),1), default_C="Coming Soon";
   
   string Automatic_status =  "Error";
   string Stealth_status   =  "Error";
   string PGrid_status     =  "Error";
   string NGrid_status     =  "Error";
   string Safe_status      =  "Error";
   string Trailing_status  =  "Error";
   string HL_1             =  "Error";
   string HL_2             =  "Error";
   string HL_3             =  "Error";
   string HL_4             =  "Error";
   
   switch(control_automatic_status()){
      case 0: Automatic_status="Disabled"; break;
      case 1: Automatic_status="Enabled"; break;
      case 2: Automatic_status="Ignored"; break;
      case 3: Automatic_status="Timing"; break;
      case 4: Automatic_status="Stop Friday"; break;
   } 
   switch(control_H_Line_status()){
      case 1: 
         HL_1             =  HL_BUY_OVER_Name;
         HL_2             =  HL_BUY_UNDER_Name;
         HL_3             =  HL_SELL_OVER_Name;
         HL_4             =  HL_SELL_UNDER_Name;
         break;
      case 2: 
         HL_1             =  "Ignored";
         HL_2             =  "Ignored";
         HL_3             =  "Ignored";
         HL_4             =  "Ignored";
         break;
   }  
   switch(control_Stealth_status()){
      case 0: Stealth_status="Disabled"; break;
      case 1: Stealth_status="Enabled"; break;
   }
   switch(control_Pgrid_status()){
      case 0: PGrid_status="Disabled"; break;
      case 1: PGrid_status=PGrid+"/"+PGrid_Max+"/"+PGrid_Stop; break;
      case 2: PGrid_status="Ignored"; break;
   }
   switch(control_Ngrid_status()){
      case 0: NGrid_status="Disabled"; break;
      case 1: NGrid_status=NGrid+"/"+NGrid_Max+"/"+NGrid_Multiplier+"/"+DoubleToStr(NGrid_Increment,3); break;
      case 2: NGrid_status="Ignored"; break;
   }
   switch(control_Safe_status()){
      case 0: Safe_status="Disabled"; break;
      case 1: Safe_status=DoubleToStr(Safe_Trade_On,1)+"/"+DoubleToStr(Safe_Trade_At,1); break;
      case 2: Safe_status="Ignored"; break;
   }
   switch(control_Trailing_status()){
      case 0: Trailing_status="Disabled"; break;
      case 1: Trailing_status=DoubleToStr(Trailing_Start,1)+"/"+DoubleToStr(Trailing_For,1); break;
      case 2: Trailing_status="Ignored"; break;
   }
   
   
   if (ObjectFind(RealName_EA+" "+lb_1_value) >= 0)ObjectSetText(RealName_EA+" "+lb_1_value,spread+" ("+DoubleToStr(Max_Spread,2)+")",Car_Box_size, Car_Box_font, Color_Box_font_value);
   if (ObjectFind(RealName_EA+" "+lb_2_value) >= 0)ObjectSetText(RealName_EA+" "+lb_2_value,DoubleToStr(Default_Lot,3),Car_Box_size, Car_Box_font, Color_Box_font_value);
   if (ObjectFind(RealName_EA+" "+lb_3_value) >= 0)ObjectSetText(RealName_EA+" "+lb_3_value,Stealth_status,Car_Box_size, Car_Box_font, Color_Box_font_value);
   if (ObjectFind(RealName_EA+" "+lb_5_value) >= 0)ObjectSetText(RealName_EA+" "+lb_5_value,HL_1,Car_Box_size, Car_Box_font, Color_Box_font_value);
   if (ObjectFind(RealName_EA+" "+lb_6_value) >= 0)ObjectSetText(RealName_EA+" "+lb_6_value,HL_2,Car_Box_size, Car_Box_font, Color_Box_font_value);
   if (ObjectFind(RealName_EA+" "+lb_7_value) >= 0)ObjectSetText(RealName_EA+" "+lb_7_value,HL_3,Car_Box_size, Car_Box_font, Color_Box_font_value);
   if (ObjectFind(RealName_EA+" "+lb_8_value) >= 0)ObjectSetText(RealName_EA+" "+lb_8_value,HL_4,Car_Box_size, Car_Box_font, Color_Box_font_value);
   if (ObjectFind(RealName_EA+" "+lb_9_value) >= 0)ObjectSetText(RealName_EA+" "+lb_9_value,Automatic_status,Car_Box_size, Car_Box_font, Color_Box_font_value);
   if (ObjectFind(RealName_EA+" "+lb_10_value) >= 0)ObjectSetText(RealName_EA+" "+lb_10_value,PGrid_status,Car_Box_size, Car_Box_font, Color_Box_font_value);
   if (ObjectFind(RealName_EA+" "+lb_11_value) >= 0)ObjectSetText(RealName_EA+" "+lb_11_value,NGrid_status,Car_Box_size, Car_Box_font, Color_Box_font_value);
   if (ObjectFind(RealName_EA+" "+lb_12_value) >= 0)ObjectSetText(RealName_EA+" "+lb_12_value,Safe_status,Car_Box_size, Car_Box_font, Color_Box_font_value);
   if (ObjectFind(RealName_EA+" "+lb_13_value) >= 0)ObjectSetText(RealName_EA+" "+lb_13_value,Trailing_status,Car_Box_size, Car_Box_font, Color_Box_font_value);
   if (ObjectFind(RealName_EA+" "+lb_14_value) >= 0)ObjectSetText(RealName_EA+" "+lb_14_value,DoubleToStr(Take_Profit,0)+"/"+DoubleToStr(Stop_Loss,0),Car_Box_size, Car_Box_font, Color_Box_font_value);
   if (ObjectFind(RealName_EA+" "+lb_15_value) >= 0)ObjectSetText(RealName_EA+" "+lb_15_value,DoubleToStr(My_tt_profit, 2),Car_Box_size, Car_Box_font, Color_Box_font_value);
   

}

//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| Control Open manual                  |
//+------------------------------------------------------------------+
bool control_HL(){
   
   if (ObjectFind(HL_BUY_OVER_Name) >= 0 || ObjectFind(HL_BUY_UNDER_Name) >= 0 || ObjectFind(HL_SELL_OVER_Name) >= 0 || ObjectFind(HL_SELL_UNDER_Name) >= 0){
      return(true);
   }else{
      return(false);
   }

}
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| Open order manual                                                |     
//+------------------------------------------------------------------+
void open_manual_mode(){

   if(control_H_Line_status()!=1)return(0); 
     
   double   value       =  0.0;
   int      result      =  0;   
      
   if(ObjectFind(HL_BUY_OVER_Name) >= 0){
      value=ObjectGet(HL_BUY_OVER_Name, OBJPROP_PRICE1);
      if(value>0.0 && Ask>value){
         if(current_spread()>NormalizeDouble(Max_Spread,2) && !Ignore_Max_Spread){
            Alert("SVEA "+Symbol()+", current spread is out of range, do not open manual open! Move Horizontal Line");
         }else if(ObjectDelete(HL_BUY_OVER_Name)){
         
            if(ObjectFind(HL_BUY_OVER_Name) >= 0)return(0);
            remove_all_HL_for_open();
            
            result=OrderSend(Symbol(),OP_BUY,Default_Lot,Ask,Slippage,0,0,Comment_Open_Manual,Magic_Number,0,CLR_NONE);
            if(result<0){
               Alert("SVEA Error open manual, "+GetLastError());
            }
            RefreshRates();
         }
      }
   }
   
   if(ObjectFind(HL_BUY_UNDER_Name) >= 0){
      value=ObjectGet(HL_BUY_UNDER_Name, OBJPROP_PRICE1);
      if(value>0.0 && Ask<value){
         if(current_spread()>NormalizeDouble(Max_Spread,2) && !Ignore_Max_Spread){
            Alert("SVEA "+Symbol()+", current spread is out of range, do not open manual open! Move Horizontal Line");
         }else if(ObjectDelete(HL_BUY_UNDER_Name)){
         
            if(ObjectFind(HL_BUY_UNDER_Name) >= 0)return(0);
            remove_all_HL_for_open();
            
            result=OrderSend(Symbol(),OP_BUY,Default_Lot,Ask,Slippage,0,0,Comment_Open_Manual,Magic_Number,0,CLR_NONE);
            if(result<0){
               Alert("SVEA Error open manual, "+GetLastError());
            }
            RefreshRates();
         }
      }
   }
   
   if(ObjectFind(HL_SELL_OVER_Name) >= 0){
      value=ObjectGet(HL_SELL_OVER_Name, OBJPROP_PRICE1);
      if(value>0.0 && Bid>value){
         if(current_spread()>NormalizeDouble(Max_Spread,2) && !Ignore_Max_Spread){
            Alert("SVEA "+Symbol()+", current spread is out of range, do not open manual open! Move Horizontal Line");
         }else if(ObjectDelete(HL_SELL_OVER_Name)){
         
            if(ObjectFind(HL_SELL_OVER_Name) >= 0)return(0);
            remove_all_HL_for_open();
         
            result=OrderSend(Symbol(),OP_SELL,Default_Lot,Bid,Slippage,0,0,Comment_Open_Manual,Magic_Number,0,CLR_NONE);
            if(result<0){
               Alert("SVEA Error open manual, "+GetLastError());
            }
            RefreshRates();
         }
      }
   }
   
   if(ObjectFind(HL_SELL_UNDER_Name) >= 0){
      value=ObjectGet(HL_SELL_UNDER_Name, OBJPROP_PRICE1);
      if(value>0.0 && Bid<value){
         if(current_spread()>NormalizeDouble(Max_Spread,2) && !Ignore_Max_Spread){
            Alert("SVEA "+Symbol()+", current spread is out of range, do not open manual open! Move Horizontal Line");
         }else if(ObjectDelete(HL_SELL_UNDER_Name)){
         
            if(ObjectFind(HL_SELL_UNDER_Name) >= 0)return(0);
            remove_all_HL_for_open();
            
            result=OrderSend(Symbol(),OP_SELL,Default_Lot,Bid,Slippage,0,0,Comment_Open_Manual,Magic_Number,0,CLR_NONE);
            if(result<0){
               Alert("SVEA Error open manual, "+GetLastError());
            }
            RefreshRates();
         }
      }
   }
   
}
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| Open order auto                                                  |     
//+------------------------------------------------------------------+
void open_auto_mode(){

   if(control_automatic_status()!=1)return(0);
   
   if(current_spread()>NormalizeDouble(Max_Spread,2) && !Auto_Ignore_Max_Spread){
      Print("SVEA "+Symbol()+", current spread is out of range, do not open Auto open!");
      return(0);
   }
   
   double   I_Force        =  iForce      (Symbol(),IForce_TimeFrame,IForce_Period,IForce_Method,IForce_Price,IForce_Shift);
   double   I_Rsi          =  iRSI        (Symbol(),IRSI_TimeFrame,IRSI_Period,IRSI_Price,IRSI_Shift);
   double   I_Stoch        =  iStochastic (Symbol(),IStochastic_TimeFrame,IStochastic_KPeriod,IStochastic_DPeriod,IStochastic_Slow,IStochastic_Method,IStochastic_Field,IStochastic_Mode,IStochastic_Shift);
   double   I_MOM          =  iMomentum   (Symbol(),IMOM_TimeFrame,IMOM_Period,IMOM_Price,0);
   double   I_MOM_old      =  iMomentum   (Symbol(),IMOM_TimeFrame,IMOM_Period,IMOM_Price,IMOM_Shift_For_Rising);
   
   bool     I_Force_BUY    =  ((!IForce_logic_reverse && I_Force>=IForce_level_BUY) || (IForce_logic_reverse && I_Force<=IForce_level_SELL));
   bool     I_Force_SELL   =  ((!IForce_logic_reverse && I_Force<=IForce_level_SELL) || (IForce_logic_reverse && I_Force>=IForce_level_BUY));
   bool     I_Rsi_BUY      =  ((!IRSI_logic_reverse && I_Rsi<=IRSI_level_BUY) || (IRSI_logic_reverse && I_Rsi>=IRSI_level_SELL));
   bool     I_Rsi_SELL     =  ((!IRSI_logic_reverse && I_Rsi>=IRSI_level_SELL) || (IRSI_logic_reverse && I_Rsi<=IRSI_level_BUY));
   bool     I_Stoch_BUY    =  ((!IStoch_logic_reverse && I_Stoch<=IStochastic_level_BUY) || (IStoch_logic_reverse && I_Stoch>=IStochastic_level_SELL));
   bool     I_Stoch_SELL   =  ((!IStoch_logic_reverse && I_Stoch>=IStochastic_level_SELL) || (IStoch_logic_reverse && I_Stoch<=IStochastic_level_BUY));
   int      I_MOM_Rising   =  0;          //1=rising; 2=not rising;
   
   bool     BUY_now        =  false;
   bool     SELL_now       =  false;
   
   int      result         =  0;
   
   if(I_MOM_old<I_MOM){
      I_MOM_Rising=1;
   }else if(I_MOM_old>I_MOM){
      I_MOM_Rising=2;
   }else{
      I_MOM_Rising=0;
   }
   
   if(Signal_In_Combo){
      if(Use_Force_Index && Use_RSI && Use_Stochastic){
         if(I_Force_BUY && I_Rsi_BUY && I_Stoch_BUY)BUY_now=true;
         if(I_Force_SELL && I_Rsi_SELL && I_Stoch_SELL)SELL_now=true;
      }else if(!Use_Force_Index && Use_RSI && Use_Stochastic){
         if(I_Rsi_BUY && I_Stoch_BUY)BUY_now=true;
         if(I_Rsi_SELL && I_Stoch_SELL)SELL_now=true;
      }else if(Use_Force_Index && !Use_RSI && Use_Stochastic){
         if(I_Force_BUY && I_Stoch_BUY)BUY_now=true;
         if(I_Force_SELL && I_Stoch_SELL)SELL_now=true;
      }else if(Use_Force_Index && Use_RSI && !Use_Stochastic){
         if(I_Force_BUY && I_Rsi_BUY)BUY_now=true;
         if(I_Force_SELL && I_Rsi_SELL)SELL_now=true;
      }else if(!Use_Force_Index && !Use_RSI && Use_Stochastic){
         if(I_Stoch_BUY)BUY_now=true;
         if(I_Stoch_SELL)SELL_now=true;
      }else if(!Use_Force_Index && Use_RSI && !Use_Stochastic){
         if(I_Rsi_BUY)BUY_now=true;
         if(I_Rsi_SELL)SELL_now=true;
      }if(Use_Force_Index && !Use_RSI && !Use_Stochastic){
         if(I_Force_BUY)BUY_now=true;
         if(I_Force_SELL)SELL_now=true;
      }
   }else{
      if((I_Force_BUY && Use_Force_Index) || (I_Rsi_BUY && Use_RSI) || (I_Stoch_BUY && Use_Stochastic))BUY_now=true;
      if((I_Force_SELL && Use_Force_Index) || (I_Rsi_SELL && Use_RSI) || (I_Stoch_SELL &&Use_Stochastic))SELL_now=true;
   }
   
   if(BUY_now && SELL_now){
      Print("SVEA error in logic open order, BUY/SELL signal equal");
      return(0);
   }
   
   
   if((BUY_now) && ((Use_Momentum && I_MOM_Rising==1 && I_MOM<100) || !Use_Momentum)){
      result=OrderSend(Symbol(),OP_BUY,Default_Lot,Ask,Slippage,0,0,Comment_Open_Auto,Magic_Number,0,CLR_NONE);
      if(result<0){
         Print("SVEA Error open buy Auto, "+GetLastError());
      }else{
         remove_all_HL_for_open();
      }
      RefreshRates();
   
   }else if((SELL_now) && ((Use_Momentum && I_MOM_Rising==2 && I_MOM>100) || !Use_Momentum)){
      result=OrderSend(Symbol(),OP_SELL,Default_Lot,Bid,Slippage,0,0,Comment_Open_Auto,Magic_Number,0,CLR_NONE);
      if(result<0){
         Print("SVEA Error open sell Auto, "+GetLastError());
      }else{
         remove_all_HL_for_open();
      }
      RefreshRates();
   }

}
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| Controll close manual with H-line                                |     
//+------------------------------------------------------------------+
void close_manual(){
   
   double value = 0.0;
   
   if(ObjectFind(HL_CLOSE_OVER_Name) >= 0){
   
      value=ObjectGet(HL_CLOSE_OVER_Name, OBJPROP_PRICE1);
      if(value>0.0 && Ask>value){
         
         if(ObjectDelete(HL_CLOSE_OVER_Name)){
            
            if(ObjectFind(HL_CLOSE_OVER_Name) >= 0)return(0);
            
            close_all_order();
          
         }
         
      }
   
   }else if(ObjectFind(HL_CLOSE_UNDER_Name) >= 0){
   
      value=ObjectGet(HL_CLOSE_UNDER_Name, OBJPROP_PRICE1);
      if(value>0.0 && Bid<value){
         
         if(ObjectDelete(HL_CLOSE_UNDER_Name)){
            
            if(ObjectFind(HL_CLOSE_UNDER_Name) >= 0)return(0);
            
            close_all_order();
          
         }
         
      }
      
   }   

}
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| Delete all HL for open trade                                     |     
//+------------------------------------------------------------------+
void remove_all_HL_for_open(){

   ObjectDelete(HL_BUY_OVER_Name);
   ObjectDelete(HL_BUY_UNDER_Name);
   ObjectDelete(HL_SELL_OVER_Name);
   ObjectDelete(HL_SELL_UNDER_Name);

}