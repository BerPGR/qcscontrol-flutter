import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(children: [
        Image.asset('assets/images/logo_w.jpg', fit: BoxFit.fitWidth),
        SizedBox(
          height: 150,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  labelText: 'Email',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFF2E84B3))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFF2E84B3)))),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFF2E84B3))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide:
                          BorderSide(width: 2, color: Color(0xFF2E84B3))),
                )),
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Ler Código',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                style: TextButton.styleFrom(
                    padding: EdgeInsets.all(16),
                    primary: Colors.amber,
                    backgroundColor: Color(0xFF2E84B3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100))),
              ),
            )
          ],
        ),
      ]),
    ));
  }
}
