import 'package:flutter/material.dart';
import 'package:flutter_google_keep_clone/colors.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 16,
                ),
                child: Text(
                  "Voogle Keep",
                  style: TextStyle(
                    color: white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(
                color: white.withOpacity(0.3),
              ),
              section("Notes", () {}, Icons.lightbulb, true),
              SizedBox(
                height: 5,
              ),
              section("Archive", () {}, Icons.archive_outlined, false),
              SizedBox(
                height: 5,
              ),
              section("Settings", () {}, Icons.settings, false),
            ],
          ),
        ),
      ),
    );
  }
}

Widget section(title, function, icon, isActive) {
  return Container(
    margin: EdgeInsets.only(
      right: 10,
    ),
    child: TextButton(
      onPressed: function,
      style: ButtonStyle(
        backgroundColor: isActive
            ? MaterialStateProperty.all(
                Colors.orangeAccent.withOpacity(0.3),
              )
            : MaterialStateProperty.all(
                Colors.transparent,
              ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(5),
        child: Row(
          children: [
            Icon(
              icon,
              size: 26,
              color: white.withOpacity(0.7),
            ),
            SizedBox(
              width: 27,
            ),
            Text(
              title,
              style: TextStyle(
                color: white.withOpacity(0.7),
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
