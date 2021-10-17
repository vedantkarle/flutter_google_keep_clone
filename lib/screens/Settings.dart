import 'package:flutter/material.dart';
import 'package:flutter_google_keep_clone/colors.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool sync = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        title: Text(
          "Settings",
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Sync",
              style: TextStyle(
                color: white.withOpacity(0.5),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Switch.adaptive(
              splashRadius: 30,
              value: sync,
              onChanged: (value) {
                setState(() {
                  this.sync = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
