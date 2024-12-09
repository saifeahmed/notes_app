import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custome_app_par.dart';

class CustomeViewBody extends StatelessWidget {
  const CustomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26),
      child: Column(
        children: [CustomAppBar()],
      ),
    );
  }
}
