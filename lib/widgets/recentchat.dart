import 'package:cowswise/chat_screen.dart';
import 'package:cowswise/models/messages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class RecentChats extends StatefulWidget {
  @override
  _RecentChatsState createState() => _RecentChatsState();
}

class _RecentChatsState extends State<RecentChats> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0)

            )
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0)
          ) ,
          child: ListView.builder(
              itemCount: chats.length,
              // ignore: missing_return
              itemBuilder:(BuildContext context, int index){
                final Message chat = chats[index];
                return GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=>ChatScreen(user: chat.sender,))),
                  child: Container(
                    margin: EdgeInsets.only(top: 5.0, right: 20.0),
                    decoration: BoxDecoration(
                      color: chat.unread ? Theme.of(context).accentColor : Colors.white,
                      borderRadius:BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),

                      )
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(

                          children: [
                            CircleAvatar(
                              radius:35.0,
                              backgroundImage: AssetImage(chat.sender.imageUrl),
                            ),
                            SizedBox(width: 10.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(chat.sender.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blueGrey,
                                  fontSize: 15.0, ),),
                                Container(
                                  width: MediaQuery.of(context).size.width*0.45,
                                  child: Text(chat.text,
                                  style: TextStyle(fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    color: Colors.blueGrey
                                  ),
                                  overflow:TextOverflow.ellipsis ,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(chat.time,
                              style: TextStyle(fontWeight:FontWeight.bold,
                                  fontSize: 15.0,
                                  color: Colors.blueGrey ) ,),
                            SizedBox(height: 5.0,),
                            InkWell(
                              onTap: (){
                                print('press like button');
                              },
                              child: chat.unread? Container(

                                height: 20.0, width: 40.0,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color:  Theme.of(context).primaryColor ,
                                    borderRadius: BorderRadius.circular(30.0)

                                  ),
                                  child: Text('New', style: TextStyle(fontSize: 12.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  ),
                              ):
                                  Text(''),
                            )
                          ],

                        )
                      ],
                    ),
                  ),
                );
              }
          ),
        ),
      ),
    );;
  }
}

