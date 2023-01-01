import 'package:afourthon/constants.dart';
import 'package:afourthon/screens/ForgetPass.dart';
import 'package:afourthon/screens/home.dart';
import 'package:afourthon/screens/regestrationScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool isApiCall = false;
  bool hidepass =true;
  GlobalKey<FormState>globalFormKey = GlobalKey<FormState>();
  String? pass;
  String? username;


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ProgressHUD(  
        key: globalFormKey,
        inAsyncCall: isApiCall,
        child: Form(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only( right: 15,left:15,bottom: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: kLogTColour,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(width /3),
                            bottomLeft: Radius.circular(width /3)
                        )
                      ),

                        
                        child: Center(
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: const Icon(
                              Icons.android,
                              color: kLogTColour,
                              size: 80,
                            ),
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Align(
                    alignment: Alignment(-1, -1),
                    child: FittedBox(
                        child: Text(
                          "Hello, \nWelcome Again",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: kLogTColour),
                        )),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: kLogTextfiled,
                            border: Border.all(color: Colors.white54),
                            borderRadius: BorderRadius.circular(20)),
                        child:  TextField(
                          style: const TextStyle(
                            fontSize: 20,
                          ),

                          decoration: InputDecoration(
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(20)
                             ),
                             labelText: "UserName"
                            //hintTextDirection: TextDirection.rtl,
                          ),

                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: kLogTextfiled,
                            border: Border.all(color: Colors.white54),
                            borderRadius: BorderRadius.circular(20)),
                        child:  TextField(
                          obscureText: true,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                              labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                            )
                            //hintTextDirection: TextDirection.rtl,
                          ),
                        )),
                  ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     const Text(
                       "Don't Have an Account? ",
                       style:
                       TextStyle(fontWeight: FontWeight.bold, color: kLogTColour),
                     ),
                     TextButton(
                       child: const Text(
                         "Register Here ",
                         style: TextStyle(color: Colors.blue),
                       ),
                       onPressed: () {
                         Navigator.push(
                             context,
                             CupertinoPageRoute(
                                 builder: (context) => const RegestrationScreen()));
                       },
                     ),
                   ],
                 ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) => const ResetPass()));
                    },
                    child: const Text(
                      "Forget Password ",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 4,
        onPressed: () {
          Navigator.pushReplacement((context), CupertinoPageRoute(builder: (context)=>const HomePage()));
        },
        label: Row(
          children: const [Text("SignIn "), Icon(Icons.arrow_forward_ios)],
        ),
      ),
    );
  }
}
