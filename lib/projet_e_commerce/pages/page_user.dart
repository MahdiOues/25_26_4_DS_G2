import 'package:flutter/material.dart';

<<<<<<< Updated upstream
class UserInfoPage extends StatefulWidget {
  const UserInfoPage({super.key});

  @override
  State<UserInfoPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<UserInfoPage> {
=======
class userInfoPage extends StatefulWidget {
  const userInfoPage({super.key});

  @override
  State<userInfoPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<userInfoPage> {
>>>>>>> Stashed changes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page User"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Text("To DO....."),
    );
  }
}
