import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddBottomSheat extends StatelessWidget {
  const AddBottomSheat({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title, subtitle;
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(children: [
        SizedBox(
          height: 16,
        ),
        CustomTextField(
          onsaved: (value) {
            title = value;
          },
          hint: "title",
        ),
        SizedBox(
          height: 16,
        ),
        CustomTextField(
          onsaved: (value) {
            subtitle = value;
          },
          hint: "content",
          maxlines: 10,
        ),
        SizedBox(
          height: 200,
        ),
        CustomButton(
          ontap: () {
            if (formkey.currentState!.validate()) {
              formkey.currentState!.save();
            } else {
              autovalidateMode = AutovalidateMode.always;
              setState(() {});
            }
          },
        ),
        SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}
