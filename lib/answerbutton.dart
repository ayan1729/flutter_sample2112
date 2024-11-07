import 'package:flutter/material.dart';

// class AnswerButton extends StatelessWidget {
//   const AnswerButton(
//       {super.key, required this.answerText, required this.onTap});
//   final String answerText;

//   final void Function() onTap; //property of type function
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//         onPressed: onTap,
//         style: ElevatedButton.styleFrom(
//             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
//             backgroundColor: Colors.pink,
//             foregroundColor: Colors.white,
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(40))),
//         child: Text(
//           answerText,
//           textAlign: TextAlign.center,
//         ));
//   }
// }

class AnswerButton extends StatefulWidget {
  final String answerText;
  final void Function() onTap;
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  double _scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: (_) {
        setState(() {
          _scale = 0.95; // Shrink the button on tap
        });
      },
      onTapUp: (_) {
        setState(() {
          _scale = 1.0; // Reset button size after tap
        });
      },
      onTapCancel: () {
        setState(() {
          _scale = 1.0; // Reset if tap is canceled
        });
      },
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 200),
        child: ElevatedButton(
            onPressed: widget.onTap,
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                backgroundColor: Colors.pink,
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                textStyle: const TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40))),
            child: Text(
              widget.answerText,
              textAlign: TextAlign.center,
            )),
      ),
    );
  }
}
