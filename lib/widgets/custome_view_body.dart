import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note.dart';
import 'package:notes_app/widgets/custome_app_par.dart';

class CustomeViewBody extends StatelessWidget {
  const CustomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: CustomAppBar(
              title: "Notes",
              icon: Icons.search,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Expanded(child: ListNotes())
        ],
      ),
    );
  }
}

class ListNotes extends StatelessWidget {
  const ListNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: CustomNote(),
      );
    });
  }
}
