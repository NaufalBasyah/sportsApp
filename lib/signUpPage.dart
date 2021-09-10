import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'welcomePage.dart';
// import 'logInPage.dart';
// import 'signUpPage.dart';

class signUpPage extends StatefulWidget {
  const signUpPage({Key? key}) : super(key: key);

  @override
  _signUpPageState createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
          // height: size.height,
          // width: double.infinity,
            children:<Widget>[
              Container(
                height: size.height,
                width: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.dstATop),
                          image: AssetImage("images/soccer_shoes.jpg"))
                  ),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SizedBox(height: size.height*.15),
                      Container(
                        width: size.width,
                        height: size.height*0.3,
                        child: Image.asset('images/logo-demo.png',),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: size.width*0.09),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Register',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      SizedBox(height: size.width*.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget>[
                          Container(
                              width: size.width*.4,
                              child:TextField(
                                decoration: InputDecoration(
                                  hintText: 'First Name',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green[800]!,width: 2.0),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),

                                ),
                                cursorColor: Colors.green[800]!,
                              )
                          ),
                          SizedBox(width: size.width*.05),
                          Container(
                              width: size.width*.4,
                              child:TextField(
                                decoration: InputDecoration(
                                  hintText: 'Last Name',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green[800]!,width: 2.0),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),

                                ),
                                cursorColor: Colors.green[800]!,
                              )
                          ),
                        ]
                      ),
                      SizedBox(height: 30.0,),
                      Container(
                          width: size.width*.85,
                          child:TextField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              suffixIcon: Icon(Icons.email),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black, width: 2.0),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green[800]!,width: 2.0),
                                borderRadius: BorderRadius.circular(20.0),
                              ),

                            ),
                            cursorColor: Colors.green[800]!,
                          )
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        width: size.width*.85,
                        child:TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            suffixIcon: Icon(Icons.visibility_off),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black,width: 2.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green[800]!,width: 2.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          cursorColor: Colors.green[800]!,
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        width: size.width*.85,
                        child:TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Re-type Password',
                            suffixIcon: Icon(Icons.visibility_off),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black,width: 2.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green[800]!,width: 2.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          cursorColor: Colors.green[800]!,
                        ),
                      ),
                      SizedBox(height: 30.0,),
                      Padding(
                        padding: EdgeInsets.only(left: size.width*0.09,right:  size.width*0.09),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              child: Text('Register'),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.green[800],
                                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              onPressed: (){
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height:20.0),
                      GestureDetector(
                        onTap: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Second()));
                        },
                        child: Text.rich(
                          TextSpan(
                              text: 'Already have an account?',
                              children: [
                                TextSpan(
                                  text: 'Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => welcomePage()),
                                        );
                                      }
                                ),
                              ]
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              ),

            ]
        )
    );
  }
}

