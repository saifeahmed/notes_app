import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNote extends StatelessWidget {
  const CustomNote({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 12),
        decoration: BoxDecoration(
          color: Colors.amber[300],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Note name",
                  style: TextStyle(color: Colors.black, fontSize: 32),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Build your career with saife",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 20),
                ),
              ),
              trailing: Icon(
                size: 35,
                Icons.delete_rounded,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, bottom: 25),
              child: Text(
                "may 12,2022",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5), fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
