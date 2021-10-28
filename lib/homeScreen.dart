import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  Widget singleProducts(){
    return Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: 230,
          width: 160,
          decoration: BoxDecoration(
            color: Color(0xffd9dad9),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Expanded(
              flex: 2,
              child: Image.asset('assets/cheeseburger.png')),
            Expanded(
              child: Padding(padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text('Cheese Burger', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),),
              Text('Rs. 500/=', style: TextStyle(
                color: Colors.grey,
              ),),
              Row(children: [
                Expanded(child: Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(children: [
                    Expanded(child: Container(
                      height: 30,
                      width: 60,
                      child: OutlineButton(
                        child: Row(children: [
                          Text('M'),
                          Icon(
                            Icons.arrow_drop_down,
                          )
                        ],),
                        onPressed: () {}),
                    ),),
                  ],),
                ),),
                SizedBox(width: 1,),
                Expanded(child: Container(
                  height: 30,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(Icons.remove, size: 15),
                    Text('1'),
                    Icon(Icons.add, size: 15,),
                  ],),
                ),),
              ],)
            ],),),
            ),
          ],),
        );
  }
  
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.green,
          child: ListView(children: [
          DrawerHeader(child: Row(children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 43,
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.red,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Welcome Guest'),
                SizedBox(height: 7,),
                Container(
                  height: 30,
                  child: OutlinedButton(
                  onPressed: () {},
                  child: Text('Login', style: TextStyle(fontSize: 20, color: Colors.black),),
                  ),
                  ),
              ],),
          ],),
          ),
          ListTile(
            leading: Icon(
            Icons.home_outlined, size: 32,),
            title: Text("Home", style: TextStyle(color: Colors.black),),
          ),
          ListTile(
            leading: Icon(
            Icons.shop_outlined, size: 32,),
            title: Text("Review Cart", style: TextStyle(color: Colors.black),),
          ),
          ListTile(
            leading: Icon(
            Icons.person_outlined, size: 32,),
            title: Text("My Profile", style: TextStyle(color: Colors.black),),
          ),
          ListTile(
            leading: Icon(
            Icons.notifications_outlined, size: 32,),
            title: Text("Notification", style: TextStyle(color: Colors.black),),
          ),
          ListTile(
            leading: Icon(
            Icons.star_outline, size: 32,),
            title: Text("Rating & Review", style: TextStyle(color: Colors.black),),
          ),
          ListTile(
            leading: Icon(
            Icons.favorite_border_outlined, size: 32,),
            title: Text("Wishlist", style: TextStyle(color: Colors.black),),
          ),
          ListTile(
            leading: Icon(
            Icons.copy_outlined,size: 32,),
            title: Text("Raise and Complaint", style: TextStyle(color: Colors.black),),
          ),
          ListTile(
            leading: Icon(
            Icons.format_quote_outlined, size: 32,),
            title: Text("FAQs", style: TextStyle(color: Colors.black),),
          ),

          SizedBox(height: 30,),
            Container(
            height: 350,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Contact Support", style: TextStyle(fontSize: 20),),
                SizedBox(height: 10,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  
                  child: Container(child: Column(
                    children: [Row(
                    children: [Text("Call Us: "),
                    SizedBox(width: 10,),
                    Text("+94772764***")],
                    ),
                    Row(
                    children: [Text("Email: "),
                    SizedBox(width: 10,),
                    Text("sankalpa.lokuliyanage@outlook.com")],
                ),],),)
                  
                )

                
              ],
            ),
          ),

        ],),
        ),
      ),
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
      child: ListView(children: [
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
          ),
          ),
          Expanded(child: Container(),),
        ],),
      ),

      SizedBox(height: 15,),
      Padding(padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(children: [
        Text("Popular", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 22),)
      ],),),

     SingleChildScrollView(
       scrollDirection: Axis.horizontal,
       child:  Row(children: [
        singleProducts(),
        singleProducts(),
        singleProducts(),
        singleProducts(),
        singleProducts(),
      ],),
     ),

    SizedBox(height: 15,),
     Padding(padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text("Explore", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 22),)
      ],),),

    SingleChildScrollView(
       scrollDirection: Axis.horizontal,
       child:  Row(children: [
        singleProducts(),
        singleProducts(),
        singleProducts(),
        singleProducts(),
        singleProducts(),
      ],),
     ),


    ],),),
    );
  }
}