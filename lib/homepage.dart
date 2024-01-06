import 'package:flutter/material.dart';
import 'package:shopping4/customscaffold.dart';
import 'package:shopping4/my%20account.dart';
import 'package:shopping4/my%20cart.dart';
import 'package:shopping4/products.dart';
  
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _searchcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return customScaffold(
        body:SafeArea(
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Center(child: Text("E-Commerce")),
                    Expanded(child: SizedBox(
                      height: 60,
                      child: TextFormField(
                        controller: _searchcontroller,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          hintText: "Search for products,Brands And More",
                          hintStyle: TextStyle(fontSize:15),
                        ),
                      ),
                    ),),
                    GestureDetector(
                      child: Container(
                        height:40,
                        width: 40,
                        color:Colors.blue,
                        child:Center(
                          child:Icon(Icons.search,color: Colors.white,),
                        ),
                      ),
                      onTap:(){},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
    );
  }
}
