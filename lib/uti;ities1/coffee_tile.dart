import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class coffee_tile extends StatelessWidget{
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  coffee_tile(
      {
        required this.coffeeImagePath,
       required this.coffeeName,
     required this.coffeePrice
      }
      );
  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets. only(left: 25.0),


      child: Container(
        padding: EdgeInsets.all(12),  /// black container er vetor image er jonno shob dik theke padding dilam
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
         ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
                                  ///uploading image
           ClipRRect(          /// image er border crop korar jonno
             borderRadius: BorderRadius.circular(12),
             child:    Image.asset(coffeeImagePath),
           ),
                /// adding text under image(product name)
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 8),
             child: Column(  ////shob text move koranur jonno column e rakhlam
               children: [
                 Text(coffeeName,style: TextStyle(fontSize: 20),
                 ),
                 SizedBox(height: 4),
                 Text("With milk",style: TextStyle(fontSize: 14,color: Colors.grey.shade400),
                 ),

                 ///adding price

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,  /// row er 2 corner e set hbe 2 ta widget,ekta price ekta add button
                   children: [
                      Text('\$'+ coffeePrice),  ///text
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Icon(Icons.add),  ///ekta text er por ekta plus icon add korlam
                      ),
                    ],
                  ),
                ),

               ],
             ),
           )
         ],
       ),
      ),
    );

  }
}