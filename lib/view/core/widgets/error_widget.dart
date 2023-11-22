import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 200,
        child: Text('Произошла неизвестная ошибка, проверьте Ваше подключение к сети Интернет :('),
      ),
    );
  }
}
