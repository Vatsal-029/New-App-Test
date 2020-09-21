import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petophila/usersData.dart';

import 'feed.dart';

class Explore extends StatefulWidget {
  @override
  _Explore createState() => _Explore();
}

class _Explore extends State<Explore> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
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
          title: Text('Explore',
            style: GoogleFonts.getFont('PT Sans',
              letterSpacing: 2,
              fontSize: 20,
              color: Colors.white,
            ),),
          actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(Icons.search, color: Colors.white,)
            ),
          ],
        ),
        body: GridView.count(
            crossAxisCount: 3,
            children: exploreImagesList.map ((item) => Card(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: NetworkImage(item.exploreImages),
                      fit: BoxFit.cover,
                    )
                ),
              ),
            )).toList()
        ),
      ),
    );
  }
}
