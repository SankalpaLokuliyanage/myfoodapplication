import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          CircleAvatar(
            radius: 17,
            backgroundColor: Colors.white,
            child: Icon(Icons.search, size: 17),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
            radius: 17,
            backgroundColor: Colors.white,
            child: Icon(Icons.shop, size: 17),
          ),),
        ],
      ),

    body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(children: [
      Container(
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/foodall.jpg')),
          
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(children: [
          Expanded(
            flex: 2,
            child: Container(
            
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 130),
                  child: Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      )
                    ),
                    child: Center(
                      child: Text('Foodie', style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      shadows: [
                        BoxShadow(
                          color: Colors.amber,
                          blurRadius:10,
                          offset: Offset(3,2)
                        ),
                      ],
                    ),),
                    ),
                  ),
                  ),
                  Text('10% OFF',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.green[100],
                    fontWeight: FontWeight.bold,
                  ),),
                  Padding(padding: const EdgeInsets.only(left: 20),
                  child: Text('The Best Online Food App',
                  style: TextStyle(
                   color: Colors.white,
                  ),),),
              ],
            ),
          ),),
          Expanded(child: Container())
        ],),
      ),
    ],),),
    );
  }
}