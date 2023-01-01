import 'package:afourthon/constants.dart';
import 'package:afourthon/screens/loginPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegestrationScreen extends StatelessWidget {
  const RegestrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Create Account",
                style: TextStyle(
                    color: kLogTColour,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: kLogTextfiled,
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(13)),
                  child: const TextField(
                    obscureText: true,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                        hintText: 'password', hintStyle: TextStyle(fontSize: 15)
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
                      borderRadius: BorderRadius.circular(13)),
                  child: const TextField(
                    obscureText: true,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                        hintText: 'password', hintStyle: TextStyle(fontSize: 15)
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
                      borderRadius: BorderRadius.circular(13)),
                  child: const TextField(
                    obscureText: true,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                        hintText: 'password', hintStyle: TextStyle(fontSize: 15)
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
                      borderRadius: BorderRadius.circular(13)),
                  child: const TextField(
                    obscureText: true,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                        hintText: 'password', hintStyle: TextStyle(fontSize: 15)
                        //hintTextDirection: TextDirection.rtl,
                        ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "All Ready Have an Account  ",
                  style: TextStyle(color: kLogTColour),
                ),
                TextButton(
                  child: const Text("Login Here",
                      style: TextStyle(color: Colors.blue)),
                  onPressed: () {
                    Navigator.pushReplacement((context),
                        CupertinoPageRoute(builder: (context) => const LoginPage()));
                  },
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        elevation: 4,
        onPressed: () {},
        label: Row(
          children: const [Text("SignUp "), Icon(Icons.arrow_forward_ios)],
        ),
      ),
    );
  }
}
