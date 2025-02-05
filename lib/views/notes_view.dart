import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_bottom_sheat.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/custome_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 15, right: 15),
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const AddBottomSheat();
                });
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add),
        ),
      ),
      body: const CustomeViewBody(),
    );
  }
}
