import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/custome_app_par.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 20,
        ),
        CustomAppBar(title: "Edit Notes", icon: Icons.check_outlined),
        SizedBox(
          height: 20,
        ),
        CustomTextField(
          hint: "title",
        ),
        SizedBox(
          height: 20,
        ),
        CustomTextField(
          hint: "contet",
          maxlines: 5,
        )
      ]),
    );
  }
}
