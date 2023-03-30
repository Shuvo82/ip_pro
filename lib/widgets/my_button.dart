import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final String icon_path;
  final VoidCallback onPressed;
  const MyButton(
      {Key? key,
      required this.text,
      required this.icon_path,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        enableFeedback: true,
        mouseCursor: MaterialStateProperty.all(
          SystemMouseCursors.click,
        ),
        elevation: MaterialStateProperty.all(11),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(73.2),
            ),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(
          Color(0x90917CBB),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          Text(text),
          const SizedBox(
            width: 10,
          ),
          Image.asset(
            icon_path,
            height: 12,
          ),
        ],
      ),
    );
  }
}
