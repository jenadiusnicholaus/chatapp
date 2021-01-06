import 'package:cowswise/models/user.dart';


class Message{
  final User sender;
  final String time ;
  final String text;
  final bool isliked;
  final bool unread;

  Message({
  this.sender,
  this.time,
  this.text,
  this.isliked,
  this.unread,

  });
 }

 //Current user
 final User currentuser = User(
   id: 0,
   name: "Jenifa c",
   imageUrl: 'assets/images/testi_01.png',


 //  users
 );final User john = User(
   id: 1,
   name: "John",
   imageUrl: 'assets/images/testi_02.png',

 );

 final User junior = User(
   id: 2,
   name: "Junior",
   imageUrl: 'assets/images/testi_03.png',

 );

 final User brown = User(
   id: 3,
   name: "Brown",
   imageUrl: 'assets/images/testi_04.png',

 );

 final User jenadius = User(
   id: 4,
   name: "Jenadius",
   imageUrl: 'assets/images/jena.jpeg',

 );

 final User gib = User(
   id: 5,
   name: "Gibson",
   imageUrl: 'assets/images/testi_04.png',

 );

 final User juma = User(
   id: 6,
   name: "Juma",
   imageUrl: 'assets/images/testi_04.png',

 );
 final User julia = User(
   id: 7,
   name: "Julia",
   imageUrl: 'assets/images/testi_01.png',

 );
 final User rebeca = User(
   id: 8,
   name: "Rebeka",
   imageUrl: 'assets/images/testi_03.png',

 );
// list of favorite color
List<User> favorites = [ john,jenadius, junior, brown , gib,];

//example of chats on hme screen
List<Message> chats =[


  Message(
    sender: john,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help',
    isliked: true,
    unread: true,
  ),
  Message(
    sender: junior,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help',
    isliked: false,
    unread: false,
  ) ,

  Message(
    sender: jenadius,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help',
    isliked: false,
    unread: true,
  ),
  Message(
    sender: gib,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help',
    isliked: false,
    unread: true,
  ),
  Message(
    sender: juma,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help',
    isliked: false,
    unread: true,
  ),

  Message(
    sender: julia,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help,Hello there i am using flutter , some one to help'
        ,
    isliked: false,
    unread: true,
  ),
  Message(
    sender: rebeca,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help',
    isliked: false,
    unread: true,
  ),
];


List<Message> messages =[
  Message(
    sender: currentuser,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help',
    isliked: true,
    unread: true,
  ),


  Message(
    sender: john,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help',
    isliked: true,
    unread: true,
  ),
  Message(
    sender: junior,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help',
    isliked: false,
    unread: false,
  ) ,

  Message(
    sender: jenadius,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help',
    isliked: false,
    unread: true,
  ),
  Message(
    sender: currentuser,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help',
    isliked: true,
    unread: true,
  ),
  Message(
    sender: currentuser,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help',
    isliked: true,
    unread: true,
  ),
  Message(
    sender: gib,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help',
    isliked: false,
    unread: true,
  ),
  Message(
    sender: juma,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help',
    isliked: false,
    unread: true,
  ),

  Message(
    sender: julia,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help',
    isliked: false,
    unread: true,
  ),
  Message(
    sender: rebeca,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help',
    isliked: false,
    unread: true,
  ),
  Message(
    sender: currentuser,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help',
    isliked: true,
    unread: true,
  ),
  Message(
    sender: currentuser,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help',
    isliked: true,
    unread: true,
  ),
  Message(
    sender: rebeca,
    time: '1:30 PM',
    text: 'Hello there i am using flutter , some one to help,Hello there i am using flutter , some one to help,',
    isliked: false,
    unread: true,
  ),
];


