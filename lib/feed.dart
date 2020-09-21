import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petophila/explore.dart';
import 'package:petophila/usersData.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:petophila/welcome.dart';
import 'messages.dart';


class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  void _onTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Hexcolor('00000'),
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Hexcolor('#04052e'),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(50, 15),
            )
        ),
        title: Text('Petophila',
          style: GoogleFonts.getFont('Bangers',
            color: Colors.white,
            fontSize: 32,
            letterSpacing: 2,
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> Explore()));
              },
              icon: Icon(MaterialCommunityIcons.compass_outline, color: Colors.white,)),

          IconButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> Messages()));
              },
              icon: Icon(Feather.send, color: Colors.white,)),
        ],
      ),
      drawer: Drawer(
        elevation: 5,
        child:
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Hexcolor('000000'), Hexcolor('04052e'),],
              begin: Alignment.center,
              end: Alignment.topCenter,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(height: 60,),
              ListTile(
                onTap: (){},
                leading: Container(
                  height: 80,
                  width: 65,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset('images/Vatsal_avatar.png',
                      fit: BoxFit.cover,
                    ),
                  ),),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Vatsal Gala',
                      style: GoogleFonts.getFont('PT Sans',
                      fontSize: 22,
                      color: Colors.white,
                    ),),
                    Text('View Profile',
                      style: GoogleFonts.getFont('PT Sans',
                        fontSize: 12,
                        color: Colors.white54,
                      ),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Divider(color: Colors.white,),
              ),
              SizedBox(height: 60),
              FlatButton(
                onPressed: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> Messages()));
                },
                child: ListTile(
                  leading: Icon(Foundation.paw, color: Colors.white, size: 28,),
                  title: Text('Adoption',
                    style: GoogleFonts.getFont('PT Sans',
                      fontSize: 22,
                      color: Colors.white,
                    ),),
                ),
              ),
              FlatButton(
                onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> Messages()));
                },
                child: ListTile(
                  leading: Icon(MaterialCommunityIcons.charity, color: Colors.white, size: 28,),
                  title: Text('Donate',
                    style: GoogleFonts.getFont('PT Sans',
                      fontSize: 22,
                      color: Colors.white,
                    ),),
                ),
              ),
              FlatButton(
                onPressed: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> Messages()));
                },
                child: ListTile(
                  leading: Icon(Feather.plus_square, color: Colors.white, size: 28,),
                  title: Text('Add Pet',
                    style: GoogleFonts.getFont('PT Sans',
                      fontSize: 22,
                      color: Colors.white,
                    ),),
                ),
              ),
              FlatButton(
                onPressed: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> Messages()));
                },
                child: ListTile(
                  leading: Icon(Fontisto.search, color: Colors.white, size: 27,),
                  title: Text('Search',
                    style: GoogleFonts.getFont('PT Sans',
                      fontSize: 22,
                      color: Colors.white,
                    ),),
                ),
              ),
              FlatButton(
                onPressed: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> Messages()));
                },
                child: ListTile(
                  leading: Icon(MaterialCommunityIcons.account_group_outline, color: Colors.white, size: 28,),
                  title: Text('Community',
                    style: GoogleFonts.getFont('PT Sans',
                      fontSize: 22,
                      color: Colors.white,
                    ),),
                ),
              ),
              SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    onPressed: (){},
                    child: Row(
                      children: [
                        Icon(Ionicons.md_settings, color: Colors.white54, size: 18,),
                        SizedBox(width: 10,),
                        Text('Settings',
                          style: GoogleFonts.getFont('PT Sans',
                            fontSize: 16,
                            color: Colors.white54,
                          ),),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      DialogUtils.showCustomDialog(context,
                          title: "Log Out",
                          okBtnText: "Confirm",
                          cancelBtnText: "Cancel",
                          okBtnFunction: () => Navigator.push(
                              context, MaterialPageRoute(builder: (context)=> Welcome())));
                    },
                    child: Row(
                      children: [
                        Icon(AntDesign.logout, color: Colors.white54, size: 18,),
                        SizedBox(width: 10,),
                        Text('Logout',
                          style: GoogleFonts.getFont('PT Sans',
                            fontSize: 16,
                            color: Colors.white54,
                          ),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Container(
            height: 95,
            width: MediaQuery.of(context).size.width,
            child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: userDataList.map((images){
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              width: 2,
                              color: Hexcolor('#d62828'),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                image: NetworkImage(images.avatar),
                                height: 60,
                                width: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:5),
                        child: Text(images.username,
                          style: GoogleFonts.getFont('PT Sans',
                            letterSpacing: 1.5,
                            color: Colors.white,
                          ),),
                      ),
                    ],
                  );
                }).toList()
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Divider(color: Colors.white60,),
          ),
          Container(
            height: 495,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: userDataList.map((post){
                return Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  width: 2,
                                  color: Hexcolor('#d62828'),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image(
                                    image: NetworkImage(post.avatar),
                                    height: 45,
                                    width: 45,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(post.username,
                                    style: GoogleFonts.getFont('PT Sans',
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),),
                                ),
                                Container(
                                  child: Text('View Profile',
                                    style: GoogleFonts.getFont('PT Sans',
                                      fontSize: 11,
                                      color: Colors.white54,
                                    ),),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 5,),
                      Image(
                        image: NetworkImage(post.posts),
                        height: 280,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 10, 8),
                        child: Row(
                          children: [
                            Icon(AntDesign.hearto, color: Colors.white70,),
                            SizedBox(width: 30,),
                            Icon(Octicons.comment_discussion, color: Colors.white70,),
                            SizedBox(width: 200),
                            Icon(Entypo.dots_three_horizontal, color: Colors.white70,),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Divider(color: Colors.white60,),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar (
        currentIndex: _selectedIndex,
        onTap: _onTapped,
        backgroundColor: Hexcolor('000100'),
        // isFloating: true,
        // elevation: 5,
        // borderRadius: Radius.circular(5),
        items: [
          CustomNavigationBarItem( icon: FontAwesome.rocket,),
          CustomNavigationBarItem( icon: MaterialCommunityIcons.home,),
          CustomNavigationBarItem( icon: AntDesign.plussquare,),
          CustomNavigationBarItem( icon: MaterialCommunityIcons.heart,),
          CustomNavigationBarItem( icon: FontAwesome.user_circle_o,),
        ],
      ),
    );
  }
}

//////////////////////// LOG OUT DIALOGUE BOX //////////////////////////////

class DialogUtils {
  static DialogUtils _instance = new DialogUtils.internal();

  DialogUtils.internal();

  factory DialogUtils() => _instance;

  static void showCustomDialog(BuildContext context,
      {@required String title,
        String okBtnText = "Confirm",
        String cancelBtnText = "Cancel",
        @required Function okBtnFunction}) {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(title),
            //content: Container(),
            actions: <Widget>[
              FlatButton(
                child: Text(okBtnText),
                onPressed: okBtnFunction,
              ),
              FlatButton(
                  child: Text(cancelBtnText),
                  onPressed: () => Navigator.pop(context))
            ],
          );
        });
  }
}