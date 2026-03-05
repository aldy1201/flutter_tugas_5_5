import 'package:flutter/material.dart';
import 'get_started.dart';

class SettingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Center(

      child: ElevatedButton(

        child: Text("Logout"),

        onPressed: () {

          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => GetStartedPage(),
            ),
            (route) => false,
          );

        },
      ),
    );
  }
}