import 'package:flutter/material.dart';

import 'models/messages.dart';
import 'models/user.dart';
class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen({this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessages( message, bool isMe){
    return Container(
      decoration: BoxDecoration(
        color:  isMe ? Color(0xFF00BFA5):Color(0xFF80CBCA),
        borderRadius: isMe? BorderRadius.only(
          topRight:  Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0),

        ):
        BorderRadius.only(
          topLeft:  Radius.circular(30.0),
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),

        ),
      ),

      margin:isMe?  EdgeInsets.only(top: 8.0, bottom: 8.0,left: 6.0, right: 80.0)
      :
      EdgeInsets.only(top: 8.0, bottom: 8.0,right: 6.0, left: 80.0),

      padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 13.0),

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(message.text),
          SizedBox(height: 1.0,),
          Text(message.time),
        ],
      )


    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor ,
      appBar: AppBar(
        title: Center(child: Text(widget.user.name)),
        actions: [
          IconButton(icon:
          Icon(Icons.more_horiz),
          iconSize: 30.0,
          onPressed: (){})
        ],
        elevation: 0.0,
      ),
      body:Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),

                  ),
                ),

                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),

                  ),
                  child: ListView.builder(
                    reverse: true,
                    padding: EdgeInsets.only(top: 15.0),
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context,int index){
                      final Message message = messages[index];
                      final bool isMe = message.sender.id == currentuser.id;
                      return _buildMessages(message, isMe );
                    },
                  ),
                ),
              ),
            )
          ],
        ),

    );
  }
}
