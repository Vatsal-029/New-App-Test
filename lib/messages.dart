import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petophila/feed.dart';
import 'usersData.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(50, 10),
              )
          ),
          leading: IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Feed()));
              },
              icon: Icon(Ionicons.ios_arrow_back)),
          backgroundColor: Hexcolor('#04052e'),
          elevation: 10,
          title: Text('Messages',
            style: GoogleFonts.getFont('PT Sans',
              letterSpacing: 2,
              fontSize: 20,
              color: Colors.white,
            ),),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    children: userDataList.map((i){
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 6),
                            child: FlatButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Inbox()));
                              },
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        color: Hexcolor('#d62828'),
                                        width: 1.5,
                                      ),
                                    ),
                                    height: 60,
                                    width: 60,
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.network(i.avatar, fit: BoxFit.cover,),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(i.username,
                                              style: GoogleFonts.getFont('PT Sans',
                                                fontSize: 18,
                                                color: Colors.white,
                                            ),),
                                          ),
                                          Container(
                                            child: Text('Tap to view chat',
                                              style: GoogleFonts.getFont('PT Sans',
                                              fontSize: 13,
                                              color:Colors.white54,
                                            ),),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 90),
                                      Container(
                                        child: Text('Date & Time', style: TextStyle(
                                          fontSize: 10,
                                          color:Colors.white54,
                                        ),),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(50, 10),
              )
          ),
          leading: IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Messages()));
              },
              icon: Icon(Ionicons.ios_arrow_back)),
          backgroundColor: Hexcolor('#04052e'),
          elevation: 10,
          title: Text('Inbox', style: TextStyle(
            color: Colors.white,
            fontFamily: 'JosefinSans-Regular',
            letterSpacing: 3,
          ),),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Message...'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}