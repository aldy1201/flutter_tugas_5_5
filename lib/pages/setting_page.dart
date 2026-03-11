import 'package:flutter/material.dart';
import 'get_started.dart';

class SettingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return SafeArea(

      child: Padding(
        padding: EdgeInsets.all(20),

        child: Column(

          children: [

            /// PROFILE ICON
            CircleAvatar(
              radius: 45,
              backgroundColor: Colors.grey.shade300,
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.grey[700],
              ),
            ),

            SizedBox(height: 10),

            /// USER NAME
            Text(
              "User Account",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30),

            /// ACCOUNT MENU
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              child: ListTile(
                leading: Icon(Icons.person_outline),
                title: Text("Profile"),
                trailing: Icon(Icons.arrow_forward_ios,size:16),
              ),
            ),

            SizedBox(height: 10),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              child: ListTile(
                leading: Icon(Icons.notifications_none),
                title: Text("Notifications"),
                trailing: Icon(Icons.arrow_forward_ios,size:16),
              ),
            ),

            SizedBox(height: 10),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),

              child: ListTile(
                leading: Icon(Icons.lock_outline),
                title: Text("Privacy"),
                trailing: Icon(Icons.arrow_forward_ios,size:16),
              ),
            ),

            Spacer(),

            /// LOGOUT BUTTON
            SizedBox(
              width: double.infinity,

              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),

                onPressed: () {

                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GetStartedPage(),
                    ),
                    (route) => false,
                  );

                },

                child: Text("Logout"),
              ),
            ),

          ],

        ),
      ),

    );

  }

}