import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petophila/feed.dart';

/////////////////////////// WELCOME PAGE ////////////////////////////////////

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors:[Hexcolor('000000'), Hexcolor('04052e'),],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome',
                style: GoogleFonts.getFont('Raleway',
                  color: Colors.white,
                  fontSize: 48,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(height: 80),
              Container(
                height: 100,
                width: 100,
                child: Image(
                  image: AssetImage('images/logo_main.png'),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20,),
              FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Hexcolor('02c39a'),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text('LOG IN', style: GoogleFonts.getFont('PT Sans',
                        color: Colors.white,
                        fontSize: 20,
                      ),),
                    ),
                  ),
                ),
              ),
              SizedBox(height:10),
              FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInPage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text('SIGN UP', style: GoogleFonts.getFont('PT Sans',
                        color: Colors.white,
                        fontSize: 20,
                      ),),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Divider(color: Colors.grey,),
              SizedBox(height: 10,),
              Text('OR', style: GoogleFonts.getFont('PT Sans',
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 1,
              ),),
              SizedBox(height: 10,),
              FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Feed()));
                  },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: (){},
                        icon: Icon(FontAwesome.facebook_f, color: Colors.white,),
                      ),
                      Text('LOGIN USING FACEBOOK', style: GoogleFonts.getFont('PT Sans',
                        color: Colors.white,
                        fontSize: 15,
                      ),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Feed()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: (){},
                        icon: Icon(FontAwesome.instagram, color: Colors.white,),
                      ),
                      Text('LOGIN USING INSTAGRAM', style: GoogleFonts.getFont('PT Sans',
                        color: Colors.white,
                        fontSize: 15,
                      ),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Feed()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: (){},
                        icon: Icon(FontAwesome.google, color: Colors.white,),
                      ),
                      Text('LOGIN USING GOOGLE', style: GoogleFonts.getFont('PT Sans',
                        color: Colors.white,
                        fontSize: 15,
                      ),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/////////////////////////// LOG IN PAGE ////////////////////////////////////

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[Hexcolor('000000'), Hexcolor('04052e'),],
            end: Alignment.topCenter,
            begin: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: ListTile(
                  leading: Icon(FontAwesome.user, color: Colors.black,),
                  title: TextField(
                    decoration: InputDecoration(
                    border: InputBorder.none,
                        hintText: 'Username or Email ID'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: ListTile(
                  leading: Icon(Ionicons.md_key, color: Colors.black,),
                  title: TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Feed()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Hexcolor('02c39a'),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text('LOG IN', style: GoogleFonts.getFont('PT Sans',
                          color: Colors.white,
                          fontSize: 15,
                        ),),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: FlatButton(
                  onPressed: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=> Feed()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text('Forgot Credentials?', style: GoogleFonts.getFont('PT Sans',
                          color: Colors.white,
                          fontSize: 15,
                        ),),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 90),
              Text('OR TRY', style: GoogleFonts.getFont('PT Sans',
                color: Colors.white,
                fontSize: 15,
                letterSpacing: 1,
              ),),
              Divider(color: Colors.grey,),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 70, right: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(FontAwesome.facebook_f, color: Colors.white,),
                    Icon(FontAwesome.instagram, color: Colors.white,),
                    Icon(FontAwesome.google, color: Colors.white,),
                  ],
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

/////////////////////////// SIGN IN PAGE ////////////////////////////////////

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[Hexcolor('000000'), Hexcolor('04052e'),],
            end: Alignment.topCenter,
            begin: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: ListTile(
                  leading: Icon(FontAwesome.user, color: Colors.black,),
                  title: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Full Name'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: ListTile(
                  leading: Icon(MaterialCommunityIcons.email, color: Colors.black,),
                  title: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email Id'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: ListTile(
                  leading: Icon(AntDesign.infocirlce, color: Colors.black,),
                  title: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Set a Username'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Welcome()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Hexcolor('02c39a'),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Center(
                          child: Text('BACK', style: GoogleFonts.getFont('PT Sans',
                            color: Colors.white,
                            fontSize: 15,
                          ),),
                        ),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> PasswordPage()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Hexcolor('02c39a'),
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: Center(
                          child: Text('NEXT', style: GoogleFonts.getFont('PT Sans',
                            color: Colors.white,
                            fontSize: 15,
                          ),),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 90),
              Text('OR TRY', style: GoogleFonts.getFont('PT Sans',
                color: Colors.white,
                fontSize: 15,
                letterSpacing: 1,
              ),),
              Divider(color: Colors.grey,),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 70, right: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(FontAwesome.facebook_f, color: Colors.white,),
                    Icon(FontAwesome.instagram, color: Colors.white,),
                    Icon(FontAwesome.google, color: Colors.white,),
                  ],
                ),
              ),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}

/////////////////////////// PASSWORD PAGE ////////////////////////////////////

class PasswordPage extends StatefulWidget {
  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[Hexcolor('000000'), Hexcolor('04052e'),],
            end: Alignment.topCenter,
            begin: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: ListTile(
                  leading: Icon(Ionicons.md_key, color: Colors.black,),
                  title: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Set Password'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: ListTile(
                  leading: Icon(AntDesign.checksquare, color: Colors.black,),
                  title: TextField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Confirm Password'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: ListTile(
                  leading: Icon(Entypo.mobile, color: Colors.black,),
                  title: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Mobile Number'),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Feed()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Hexcolor('02c39a'),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text('SIGN IN', style: GoogleFonts.getFont('PT Sans',
                          color: Colors.white,
                          fontSize: 15,
                        ),),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 90),
              Text('OR TRY', style: GoogleFonts.getFont('PT Sans',
                color: Colors.white,
                fontSize: 15,
                letterSpacing: 1,
              ),),
              Divider(color: Colors.grey,),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 70, right: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(FontAwesome.facebook_f, color: Colors.white,),
                    Icon(FontAwesome.instagram, color: Colors.white,),
                    Icon(FontAwesome.google, color: Colors.white,),
                  ],
                ),
              ),
              SizedBox(height: 80,)
            ],
          ),
        ),
      ),
    );
  }
}

