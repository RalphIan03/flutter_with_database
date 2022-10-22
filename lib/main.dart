
import 'package:flutter/material.dart';
import 'package:flutteract1/database/insertdata.dart';
import 'package:flutteract1/page2.dart';

import 'database/get.dart';


void main() => runApp(MaterialApp(

debugShowCheckedModeBanner: false,
  home: homepage(),
  ));


class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: 200,
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asset/bg2.png'), fit: BoxFit.fill)),
        
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: <Widget>[
              SizedBox(height: 40,),
              Image.asset('asset/homepic.png', height: 300,),
              SizedBox(height: 10,),
              Text("Activity 1 App", style: TextStyle(fontFamily: 'Silkscreen', fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),),
              SizedBox(height: 60,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const login()));
                },
                style: ElevatedButton.styleFrom(primary: Colors.red,padding: EdgeInsets.symmetric(horizontal: 120, vertical: 10,),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                child: Text("LOGIN", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              ),

              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const signup()));
              },
                style: ElevatedButton.styleFrom( primary: Colors.grey[100],side: BorderSide(color: Colors.red, width: 2),padding: EdgeInsets.symmetric(horizontal: 110, vertical: 10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ),
                child: Text("SIGN UP", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red),),),


            ],

          ),
        ),
      ),
    );
  }
}

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asset/bg2.png'), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SingleChildScrollView(
              child:
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30, left: 32),
                  // decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))),
                  //   decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asset/head.png'), fit: BoxFit.fill)),
                    alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(top: 32),
                  child: Column(

                    children: [
                      Image.asset('asset/login.png', height: 160,),
                      Text("Log In", style: TextStyle(fontFamily: 'Silkscreen', fontWeight: FontWeight.bold, color: Colors.red, fontSize: 43),),

                    ],
                  )
                 ),
                SizedBox(height: 20,),
                Container(
                padding: EdgeInsets.only(
                right: 30,
                left: 30, bottom: 10),
                child:Column(
                  children: [
                    TextField(controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Username',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          fillColor: Colors.grey[100],
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10)),
                      style: TextStyle(fontSize: 20),),
                    SizedBox(height: 20),
                    TextField(
                      controller: _controller2,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          fillColor: Colors.grey[100],
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10)),
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(onPressed: () async{
                      if(_controller.text == "" || _controller2.text == ""){
                        showDialog <String>(context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text("Invalid Input"),
                              content: const Text("Fields must be filled up"),
                              actions: [
                                TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                              ],
                            ));
                      }else {
                        // getData(_controller.text, _controller2.text);

                       String iscorrect = 'something';
                       iscorrect = await getData(_controller.text, _controller2.text);

                       if (iscorrect == 'found'){
                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const sample()));
                         _controller2.clear();
                         _controller.clear();
                       }else if (iscorrect == 'notfound'){
                         showDialog <String>(context: context,
                             builder: (BuildContext context) => AlertDialog(
                               title: const Text("Account Don't Exist"),
                               content: const Text("Password and Username are incorrect"),
                               actions: [
                                 TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                               ],
                             ));
                       }else{
                         showDialog <String>(context: context,
                             builder: (BuildContext context) => AlertDialog(
                               title: const Text("Something went wrong"),
                               content: Text(iscorrect),
                               actions: [
                                 TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                               ],
                             ));
                       }
                      }
                      },
                      child: Text("LOGIN",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(primary: Colors.red,
                          padding: EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ),
                    ),
                    SizedBox(height: 20),
                    Text("or LOGIN with", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(child: Image.network('https://freesvg.org/img/1534129544.png'), backgroundColor: Colors.white,),
                        SizedBox(width: 20),
                        CircleAvatar(child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/768px-Facebook_Logo_%282019%29.png'), backgroundColor: Colors.white,),

                      ],
                    )
                  ],

                )
              ),
              ],
            ),
            ),
            // const TextField(
            //   decoration: InputDecoration(labelText: 'sample'),
            // ),
          ]
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,

        floatingActionButton: Container(
          height: 50,
          width: 50,
          child: FloatingActionButton(
            onPressed: (){
              Navigator.pop(context);
            },
          backgroundColor: Colors.red,
              child: Icon(Icons.arrow_back),
          ),
        ),
      ),
    );
  }
}

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asset/bg2.png'), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
            children: [
              SingleChildScrollView(
                child:
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 30, left: 32),
                        // decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))),
                        //   decoration: BoxDecoration(image: DecorationImage(image: AssetImage('asset/head.png'), fit: BoxFit.fill)),
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.only(top: 10),
                        child: Column(

                          children: [
                            Image.asset('asset/signup.png', height: 180,),
                            Text("Sign Up", style: TextStyle(fontFamily: 'Silkscreen', fontWeight: FontWeight.bold, color: Colors.red, fontSize: 43),),
                          ],
                        )
                    ),
                    SizedBox(height: 20,),
                    Container(
                        padding: EdgeInsets.only(
                            right: 30,
                            left: 30, bottom: 10),
                        child:Column(
                          children: [
                            TextField(
                              controller: _controller,
                              decoration: InputDecoration(
                                  hintText: 'Username',
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                  fillColor: Colors.grey[100],
                                  filled: true,
                                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10)),
                              style: TextStyle(fontSize: 20),),
                            SizedBox(height: 20),
                            TextField(
                              controller: _controller2,
                              decoration: InputDecoration(
                                  hintText: 'Full Name',
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                  fillColor: Colors.grey[100],
                                  filled: true,
                                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10)),
                              style: TextStyle(fontSize: 20),),
                            SizedBox(height: 20),
                            TextField(
                              controller: _controller3,
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                  fillColor: Colors.grey[100],
                                  filled: true,
                                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10)),
                              style: TextStyle(fontSize: 20),),
                            SizedBox(height: 20),
                            TextField(
                              controller: _controller4,
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: 'Confirm Password',
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                  fillColor: Colors.grey[100],
                                  filled: true,
                                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10)),
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(onPressed: () async{
                              if(_controller.text == "" || _controller2.text == "" || _controller3.text == "" || _controller4.text == ""){
                                showDialog <String>(context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: const Text("Invalid Input"),
                                      content: const Text("Some fields are Empty"),
                                      actions: [
                                        TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                                      ],
                                    ));
                              } else if(_controller3.text != _controller4.text){
                                showDialog <String>(context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: const Text("Invalid Input"),
                                      content: const Text("Password and confirm password did not match"),
                                      actions: [
                                        TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                                      ],
                                    ));
                              }else{
                                String resp = '';

                               resp = await  inserttoBatabase(_controller.text, _controller3.text, _controller2.text);

                               if (resp == 'success'){
                                 bool closeme = false;
                                 _controller.clear();
                                 _controller2.clear();
                                 _controller3.clear();
                                 _controller4.clear();

                                 showDialog <String>(context: context,
                                     builder: (BuildContext context) => AlertDialog(
                                       title: const Text("Success"),
                                       content: const Text("User Successfully Registered"),
                                       actions: [
                                         TextButton(onPressed: () {
                                           closeme = true;
                                           Navigator.pop(context, 'Ok');

                                       }, child: Text("OK"))
                                       ],
                                     )).then((value){
                                       if (value=='Ok'){
                                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> login()));
                                       }
                                 });
                               }else{
                                 showDialog <String>(context: context,
                                     builder: (BuildContext context) => AlertDialog(
                                       title: const Text("Something went wrong"),
                                       content: Text(resp),
                                       actions: [
                                         TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                                       ],
                                     ));
                               }

                              }
                            },
                              child: Text("SIGN UP",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),),
                              style: ElevatedButton.styleFrom(primary: Colors.red,
                                  padding: EdgeInsets.symmetric(horizontal: 110, vertical: 15),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ),
                            ),
                            SizedBox(height: 20),
                            Text("or SIGN UP with", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(child: Image.network('https://freesvg.org/img/1534129544.png'), backgroundColor: Colors.white,),
                                SizedBox(width: 20),
                                CircleAvatar(child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/768px-Facebook_Logo_%282019%29.png'), backgroundColor: Colors.white,),

                              ],
                            )
                          ],

                        )
                    ),
                  ],

                ),
              ),
              // const TextField(
              //   decoration: InputDecoration(labelText: 'sample'),
              // ),
            ]
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,

        floatingActionButton: Container(
          height: 50,
          width: 50,
          child: FloatingActionButton(
            onPressed: (){
              Navigator.pop(context);
            },
            backgroundColor: Colors.red,
            child: Icon(Icons.arrow_back),
          ),
        ),
        ),
    );
  }
}
