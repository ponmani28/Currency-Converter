import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';







class homepage1 extends StatefulWidget {
  const homepage1({super.key});

  @override
  State<homepage1> createState() => _homepage1State();
}

class _homepage1State extends State<homepage1> {


     double? result = 0;
    final TextEditingController textEditingController = TextEditingController();
    
  @override
  Widget build(BuildContext context) {
 


       const border = OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey,width: 2.0,style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(12)),
                );
                
    return   Scaffold(
backgroundColor: Colors.blueAccent,
      body  : Center(
        
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            
              //converted amount
              Container(padding:const EdgeInsets.all(15),margin:const EdgeInsets.all(10),color: Colors.white,
              child:  Text('INR ${result!= 0 ? result?.toStringAsFixed(3) :  result?.toStringAsFixed(3)}'  ,style:const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
              
                //text field            
                 Padding(padding: const EdgeInsets.all(8.0),
                 child: TextField(style: const TextStyle(color: Colors.black),
                          
                          controller: textEditingController,

                          decoration: const InputDecoration(hintText: "Enter the amount in USD",
                          hintStyle: TextStyle(color: Colors.black,fontSize: 22),
                          prefixIcon: Icon(Icons.monetization_on_outlined),
                          prefixIconColor: Colors.black,filled: true,fillColor: Colors.white,
                          focusedBorder: border,enabledBorder: border),
                          keyboardType: const TextInputType.numberWithOptions(decimal: true),),
              ),
               
              //button   
              Padding(                                                     //style: TextButton.styleFrom(backgroundColor: Colors.black,)
                padding: const EdgeInsets.all(8.0),                                                       //                      
                child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black),
                elevation: MaterialStateProperty.all(15),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                fixedSize: MaterialStateProperty.all( const Size(370,50)),
                shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),),
                  ),),           
            
                onPressed: (){ 
                setState(() {
                  result =  double.parse(textEditingController.text)*81;
                });
                
                }, 
            
                child:const Text("CLICK ME",)),
              ),



          ],),

      ),

    );
  }
}