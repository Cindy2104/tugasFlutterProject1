import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:project1_bimbi/Screen/page_get_login.dart';

class PageSimpleLogin extends StatefulWidget {
  const PageSimpleLogin({super.key});

  @override
  State<PageSimpleLogin> createState() => _PageSimpleLoginState();
}

class _PageSimpleLoginState extends State<PageSimpleLogin> {
  //controller
  TextEditingController etUsername = new TextEditingController();
  TextEditingController etPassword = new TextEditingController();

  //variabel untuk menampung data
  String nUsername = "";
  String nPassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Login', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      body: Form(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Form Login user',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(height: 10),
            TextFormField(
              controller: etUsername,
              decoration: InputDecoration(hintText: 'input username'),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: etPassword,
              obscureText: true, //biar password tidak kelihatan
              decoration: InputDecoration(hintText: 'input password'),
            ),
            SizedBox(height: 10),
            MaterialButton(
              onPressed: () {
                //proses untuk menampilkan data dari widget
                //proses do background
                setState(() {
                  nUsername = etUsername.text; //berfungsi mengambil variabel
                  nPassword = etPassword.text;

                  showToast(
                    "Username: $nUsername\nPassword: $nPassword",
                    context: context,
                    animation: StyledToastAnimation.fade,
                    reverseAnimation: StyledToastAnimation.fade,
                    position: StyledToastPosition.bottom,
                    duration: Duration(seconds: 3),
                    backgroundColor: Colors.black54,
                    textStyle: TextStyle(color: Colors.white),
                    borderRadius: BorderRadius.circular(8.0),
                  );

                  //print data
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageGetLogin(nUsername, nPassword),
                    ),
                  );
                });
              },
              color: Colors.red,
              textColor: Colors.white,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
