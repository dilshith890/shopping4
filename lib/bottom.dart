import 'package:flutter/material.dart';
import 'package:shopping4/homepage.dart';
import 'package:shopping4/my%20account.dart';
import 'package:shopping4/my%20cart.dart';
import 'package:shopping4/products.dart';

class Bottom extends StatefulWidget {
  final int initialIndex;
  const Bottom({super.key, required this.initialIndex});

  @override
  State<Bottom> createState() => _bottomState();
}

class _bottomState extends State<Bottom> {
  var _selectedIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedIndex=widget.initialIndex;
  }


  void _onitemTapped(int index){
    setState(() {
      _selectedIndex =index;

    });
    switch(index){
      case 0: void_navigateToRoute(context, '/home', Home());
      case 1: void_navigateToRoute(context, '/products', Products());
      case 2: void_navigateToRoute(context, '/myaccount', Myaccount());
      case 3: void_navigateToRoute(context, '/mycart', Mycart());
    }

  }
  void_navigateToRoute(context,String routeName, Widget screen){
    final String? currentRouteName = ModalRoute.of(context)?.settings.name;
    bool routeExists =currentRouteName==routeName;

    if(routeExists){
      Navigator.popUntil(context,ModalRoute.withName (routeName));

    }
    else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder:
          (context)=>screen,
          settings: RouteSettings
            (name:routeName)));
    }
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(currentIndex:_selectedIndex ,
        type: BottomNavigationBarType.fixed,
        onTap: _onitemTapped,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon:
          Icon(Icons.home,
              color: _selectedIndex == 0 ? Colors.blue:Colors.black
          ),
            label: "HOME",
          ),BottomNavigationBarItem(icon:
          Icon(Icons.production_quantity_limits,
              color:_selectedIndex == 0 ? Colors.blue:Colors.black
          ),
            label: "PRODUCTS",
          ),
          BottomNavigationBarItem(icon:
          Icon(Icons.account_circle_outlined,
              color: _selectedIndex == 0 ? Colors.blue:Colors.black
          ),
            label: "ACCOUNT",
          ),BottomNavigationBarItem(icon:
          Icon(Icons.shopping_cart,
              color: _selectedIndex == 0 ? Colors.blue:Colors.black
          ),
            label: "CART",
          )
        ]);
  }
}