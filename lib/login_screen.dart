import 'package:flutter/material.dart';
import 'package:responsive_ui_makanan_tradisional/matranesia.dart';
import 'package:responsive_ui_makanan_tradisional/register.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Column(children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Welcome back!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/menu2.jpg',
                height: 150,
                width: 160,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 15),
              Text(
                "Login to yoer exist account",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 63, 123, 123)),
              ),
            ]),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  makeInput(label: "Email/Username"),
                  makeInput(label: "Password", obsecureText: true)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                padding: EdgeInsets.only(top: 3, left: 3),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Matranesia()),
                    );
                  },
                  color: Color.fromARGB(255, 60, 159, 159),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have account?"),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  child: Text(
                    " Regist Here",
                    style: TextStyle(
                        color: Color.fromARGB(255, 60, 159, 159),
                        fontWeight: FontWeight.w300),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget makeInput({label, obsecureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey[600]),
      ),
      SizedBox(height: 10),
      TextField(
        obscureText: obsecureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black26)),
        ),
      ),
      SizedBox(height: 20)
    ],
  );
}
