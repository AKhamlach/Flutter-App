import 'package:chat_app/models/user_model.dart';

class Message{

  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({this.sender,this.time,this.text,this.isLiked,this.unread});

}

final User currentUser=User(
    id:0,name: 'Current User',imageUrl: "images/aa.png"
);
final User user1=User(
    id:1,name: 'User 1',imageUrl: "images/aa.png"
);
final User user2=User(
    id:2,name: 'User 2',imageUrl: "images/aa.png"
);
final User user3=User(
    id:3,name: 'User 3',imageUrl: "images/aa.png"
);

List<User> favorites=[user1,user2,user3];
List<Message> chats=[
  Message(
    sender: user1,
    time: "5:30",
    text: "Hey hahahhaa",
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: user2,
    time: "6:30",
    text: "Hey hahahhaa",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: user3,
    time: "7:30",
    text: "Hey hahahhaa",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: user1,
    time: "12:30",
    text: "Hey hahahhaa",
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: user3,
    time: "7:30",
    text: "Hey hahahhaa",
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: user3,
    time: "7:30",
    text: "Hey hahahhaa",
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: user2,
    time: "13:30",
    text: "Hey hahahhaa",
    isLiked: false,
    unread: true,
  )
];

List<Message> messages=[
  Message(sender: user1,
      time: "13:30",
      text: "aaaaaaaaaaaaaaaaaaaa",
      isLiked: true,
      unread:false
  ),
  Message(sender: currentUser,
      time: "13:40",
      text: "bbbbbbbbbbbbbbbbbbb",
      isLiked: false,
      unread:true
  ),
  Message(sender: user1,
      time: "13:30",
      text: "aaaaaaaaaaaaaaaaaaaa",
      isLiked: true,
      unread:false
  ),
  Message(sender: currentUser,
      time: "13:40",
      text: "bbbbbbbbbbbbbbbbbbb",
      isLiked: false,
      unread:true
  ),
  Message(sender: user1,
      time: "13:30",
      text: "aaaaaaaaaaaaaaaaaaaa",
      isLiked: true,
      unread:false
  ),
  Message(sender: currentUser,
      time: "13:40",
      text: "bbbbbbbbbbbbbbbbbbb",
      isLiked: false,
      unread:true
  )
];
