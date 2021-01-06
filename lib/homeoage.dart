
import 'package:cowswise/widgets/categories_selector.dart';
import 'package:cowswise/widgets/favorite_contacts.dart';
import 'package:cowswise/widgets/recentchat.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,

      //appa bar
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: (){
            print('pressed button');
          },
        ),

        //this gives as this text on app bar
        title: Text('Chatx', style: TextStyle(
          fontSize: 28.0, fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              iconSize: 28.0,
              color:Colors.white,
              onPressed: (){
                print('pressed search bar');
              },
          )
        ],
      ),

      //body
      body: Column(
        children: [
          CategorySelector(),
          Expanded(
            child:
            Container(

              decoration: BoxDecoration(

                // Theme.of(context).accentColor
                color:Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)
                )),

              child: Column(
                children: [
                  FavoriteContacts(),
                  RecentChats()
                ],

              ),
            ),
          )
        ],

      ) ,
    );
  }
}
