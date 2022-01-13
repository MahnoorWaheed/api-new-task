import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

   final _formKey = GlobalKey<FormState>();
 late String email, password;
  bool isLoading=false;
  TextEditingController _emailController=new TextEditingController();
  TextEditingController _passwordController=new TextEditingController();
  GlobalKey<ScaffoldState>_scaffoldKey=GlobalKey();
  late ScaffoldMessengerState scaffoldMessenger ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
          Form(
                      key: _formKey,
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              controller: _emailController,
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)),
                                hintText: "Email",
                                hintStyle: TextStyle(
                                    color: Colors.white70, fontSize: 15),
                              ),
                              onSaved: (val) {
                                email = val!;
                              },
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            TextFormField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              controller: _passwordController,
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)),
                                hintText: "Password",
                                hintStyle: TextStyle(
                                    color: Colors.white70, fontSize: 15),
                              ),
                              onSaved: (val) {
                                email = val!;
                              },
                            ),
        ]
                        ),
        ),
        )
          ]
        ),
      ),
    );
  }
}