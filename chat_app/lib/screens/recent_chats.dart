import 'package:chat_app/models/message_model.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/widgets/category_selector.dart';
import 'package:chat_app/widgets/favorite_contacts.dart';
import 'package:flutter/material.dart';

class RecentChats extends StatefulWidget {
  @override
  _RecentChatsState createState() => _RecentChatsState();
}

class _RecentChatsState extends State<RecentChats> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CategorySelector(),
        Expanded(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30)
            ),
                color: Theme.of(context).accentColor),
            child: Column(
              children: <Widget>[
                FavoriteContacts(),
                Expanded(
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)
                    ),
                        color: Colors.white),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)
                      ),
                      child: ListView.builder(
                          itemCount: chats.length,
                          itemBuilder: (BuildContext context,int index){
                            final chat=chats[index];
                            return GestureDetector(
                              onTap:  (){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>ChatScreen(user: chat.sender)));
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: 5,bottom: 5,right: 5),
                                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                                decoration: BoxDecoration(
                                    color: chat.unread ? Color(0xFFFFEFEE): Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20)
                                    )
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 35,
                                          backgroundImage: AssetImage(chat.sender.imageUrl),
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(chat.sender.name,
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold
                                              ),

                                            ),
                                            SizedBox(height: 10,),
                                            Container(
                                              width: MediaQuery.of(context).size.width*0.45,
                                              child: Text(chat.text,
                                                style: TextStyle(
                                                    color: Colors.blueGrey,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text(chat.time,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                        SizedBox(height: 5,),
                                        chat.unread
                                            ? Container(
                                          child: Text('NEW',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold
                                            ),
                                          ),
                                          width: 40,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: Theme.of(context).primaryColor,
                                              borderRadius: BorderRadius.circular(30)
                                          ),

                                          alignment: Alignment.center,
                                        )
                                            : Text(""),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),

                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
