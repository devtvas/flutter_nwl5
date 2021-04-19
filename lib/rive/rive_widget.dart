import 'package:flutter/material.dart';

class RiveWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rive Examples'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              child: const Text('Animation'),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute<void>(
                //     builder: (context) => const ExampleAnimation(),
                //   ),
                // );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Button State Machine'),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute<void>(
                //     builder: (context) => const ExampleStateMachine(),
                //   ),
                // );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Skills Machine'),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute<void>(
                //     builder: (context) => const StateMachineSkills(),
                //   ),
                // );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Little Machine'),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute<void>(
                //     builder: (context) => const LittleMachine(),
                //   ),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}
