import 'package:coffee/uti;ities1/coffee_tile.dart';
import 'package:coffee/uti;ities1/coffee_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatefulWidget{
  @override
  State<home> createState() => _page1State();
}

class _page1State extends State<home> {


  ///coffee type gulu dia dei,,niche call kora hbe
final List coffeeType=[
          ///coffee type & isSelected,, shurute ekta selected show korbe
  ['Cappucino',true,],
  ['Milk ',false,],
  ['Black',false,],
  ['White',false,],
  ['Latthe',false,],
];



  ///user tap on coffee types,,method creation

  void coffeeTypeSelected(int index){

setState(() {
  for(int i=0; i< coffeeType.length;i++){  //loop er maddhome ekta ekta kore select r  unselect hbe
    coffeeType[i][1]= false;
  }
  coffeeType[index][1]=true;
});
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,  /// actual clr of the full app
      appBar: AppBar( /// appbar e menu button+ onno button add kora hbe,so app abr rakha hyse
        elevation: 0,
          backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),  /// LEADING= left side er button(menu)
        actions: [Padding(  /// ACTION= right side er button(account)
          padding: const EdgeInsets.only(right: 20.0),
          child: Icon(Icons.person),
        )],
      ),

      bottomNavigationBar: BottomNavigationBar(  /// bottom side er menu gula
        items:[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
          label:'',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
        label:'',
          ),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
        label:'',
        )
        ]
      ),
      body: Column(
        children: [

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text("find The best coffee",
            style: GoogleFonts.bebasNeue(  /// any font from google {yaml file e cupertino/icon er niche =google_fonts:}
                fontSize:60,
            ),
          ),
        ),
          SizedBox(height: 25),  /// ektu space

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(  /// search field create
              decoration:InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'find your coffee...',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:Colors.white),
                ),

              ),
            ),
          ),
          SizedBox(height: 50),

          ///coffee type er list making..ekta height set kore disi..porer ta expendend kore dibo
         Container(
           height: 50,
           child: ListView.builder           ///builder diye upr theke data call korlam
             (scrollDirection: Axis.horizontal,
             itemCount: coffeeType.length,
                      itemBuilder: (context,index){
             return CoffeeType(coffeeType: coffeeType[index][0],
                              isSelected: coffeeType[index][1],
                                onTap: (){
                                  coffeeTypeSelected(index);
                                }
              );

           },),
         ),

          Expanded(             ///full height niye nibe,,not width
            child: ListView(     ///horizontal listview of coffee/ item er list view, dan e scroll hbe
              scrollDirection: Axis.horizontal,
              children: [
              coffee_tile(
                coffeeImagePath: 'assets/images/hand.jpg',
                coffeePrice: '3.40',
                coffeeName: 'Latte',

              ),
                coffee_tile(
                  coffeeImagePath: 'assets/images/cup.jpg',
                  coffeePrice: '3.40',
                  coffeeName: 'Coffee 2',

                ),
                coffee_tile(
                  coffeeImagePath: 'assets/images/scup.jpg',
                  coffeePrice: '3.40',
                  coffeeName: 'Coffee Three',

                ),

                /// all coffee item (coffee_tile) class e,,ete shob gula edit kora easy
            ],
            ),
          )
        ],
      ),
    );
  }
}