import 'package:flutter/material.dart';

class PrimaryWidget extends StatelessWidget {
  const PrimaryWidget({super.key});

  void click() {
    print('Button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 68, 0, 120),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/quiz-logo.png', width: 300),
            const SizedBox(height: 70),
            const Text('Learn Flutter the fun way!',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                )),
            const SizedBox(height: 40),
            OutlinedButton(
              onPressed: click,
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                    color: Color.fromARGB(255, 50, 50, 50), width: 0.5),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: const Text('Start Quiz!',
                  style: TextStyle(fontSize: 15, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
