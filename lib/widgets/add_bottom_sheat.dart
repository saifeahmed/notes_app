import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddBottomSheat extends StatelessWidget {
  const AddBottomSheat({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(children: [
        SizedBox(
          height: 16,
        ),
        CustomTextField(
          hint: "title",
        ),
        SizedBox(
          height: 16,
        ),
        CustomTextField(
          hint: "content",
          maxlines: 10,
        )
      ]),
    );
  }
}
