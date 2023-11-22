import 'package:flutter/material.dart';

class CircularProgressBody extends StatelessWidget {
  const CircularProgressBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        height: 50,
        width: 50,
        child: CircularProgressIndicator(
          value: 50,
        ),
      ),
    );
  }
}
