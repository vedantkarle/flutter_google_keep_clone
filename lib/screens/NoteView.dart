import 'package:flutter/material.dart';
import 'package:flutter_google_keep_clone/colors.dart';
import 'package:flutter_google_keep_clone/screens/EditNote.dart';

class NoteView extends StatefulWidget {
  const NoteView({Key? key}) : super(key: key);

  @override
  _NoteViewState createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        actions: [
          IconButton(
            splashRadius: 17,
            onPressed: () {},
            icon: Icon(
              Icons.push_pin_outlined,
            ),
          ),
          IconButton(
            splashRadius: 17,
            onPressed: () {},
            icon: Icon(
              Icons.archive_outlined,
            ),
          ),
          IconButton(
            splashRadius: 17,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditNote(),
                ),
              );
            },
            icon: Icon(
              Icons.edit_outlined,
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Heading",
              style: TextStyle(
                color: white.withOpacity(0.5),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "This is a not this is a note this is a note this is a note this is a note",
              style: TextStyle(
                color: white.withOpacity(0.5),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
