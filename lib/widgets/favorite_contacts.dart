import 'package:cowswise/chat_screen.dart';
import 'package:cowswise/models/messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class FavoriteContacts extends StatefulWidget {
  @override
  _FavoriteContactsState createState() => _FavoriteContactsState();
}

class _FavoriteContactsState extends State<FavoriteContacts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Favorite Contacts',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0
                    ),
                ),

                IconButton(
                    icon:Icon(Icons.more_horiz),
                    iconSize: 30.0,
                    color: Colors.blueGrey,
                    onPressed: (){
                      print('clicked');
                    }),
              ],
            ),
          ),


          Container(
            height: 120.0,
            color: Theme.of(context).accentColor,
            child: ListView.builder(
              padding:EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: favorites.length,
                // ignore: missing_return
                itemBuilder: (BuildContext context, int index){
                return GestureDetector(

                   onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=>ChatScreen(user:favorites[index],))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        CircleAvatar(radius: 35.0,
                          backgroundImage: AssetImage(favorites[index].imageUrl),
                        ),
                        Text(favorites[index].name),
                      ],
                    ),
                  ),
                ) ;
                },
            ),
          ),
        ],
      ),
    );
  }
}

