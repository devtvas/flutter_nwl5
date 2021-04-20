import 'package:flutter/material.dart';

import 'widgets/appbar/app_bar_widget.dart';
import 'widgets/level_button/level_button_widget.dart';
import 'widgets/quiz_card/quiz_card_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButtonWidget(
                  label: "Fácil",
                ),
                LevelButtonWidget(
                  label: "Médio",
                ),
                LevelButtonWidget(
                  label: "Difícil",
                ),
                LevelButtonWidget(
                  label: "Perito",
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
              child: GridView.count(
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                crossAxisCount: 2,
                children: <Widget>[
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget()
                ],
              ),
            )
            // Column(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Container(width: 190, child: QuizCardWidget()),
            //           Container(width: 190, child: QuizCardWidget()),
            //         ],
            //       ),
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
