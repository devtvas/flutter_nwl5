import 'package:flutter/material.dart';

import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/home/widgets/chart/chart_widget.dart';

class ScoreCardWidget extends StatelessWidget {
  final int percent;
  const ScoreCardWidget({
    Key? key,
    required this.percent,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: 136,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: ChartWidget(
                  percent: percent,
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Vamos começar"),
                      Text("Complete os desafios e avance em conhecimentos")
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
