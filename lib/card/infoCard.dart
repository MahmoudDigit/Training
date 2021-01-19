import 'dart:ui';

import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('imgs/Avatar.jpg'),
              backgroundColor: Colors.white,
            ),
            Text(
              "Mahmoud H. Al-Trify",
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 18,
                color: Colors.grey[800],
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Full stack developer",
              style: TextStyle(
                  fontFamily: 'Pacifico', fontSize: 14, letterSpacing: 1),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(
                color: Colors.grey[800],
              ),
            ),
            Card(
              borderOnForeground: false,
              color: Colors.red[300],
              margin: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 10,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.contact_phone,
                  color: Colors.grey[800],
                ),
                title: Text("+962-790487428",
                    style: TextStyle(
                      color: Colors.grey[800],
                      letterSpacing: 6,
                    )),
              ),
            ),
            Card(
              color: Colors.red[300],
              margin: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 10,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.attach_email,
                  color: Colors.grey[800],
                ),
                title: Text("Mahmoud.altrify@gmail.com",
                    style: TextStyle(color: Colors.grey[800])),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
