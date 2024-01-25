import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.chevron_left)),
                  Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Text("Janio")),
                      Image.asset('assets/images/perfil.png')
                    ],
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
