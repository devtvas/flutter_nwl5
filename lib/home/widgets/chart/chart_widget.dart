import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatefulWidget {
  final double percent;

  const ChartWidget({Key? key, required this.percent}) : super(key: key);
  @override
  _ChartWidgetState createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  void initAnimation() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation = Tween(begin: 0.0, end: widget.percent).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: Stack(
        children: [
          Container(
            width: 80,
            height: 80,
            child: CircularProgressIndicator(
              strokeWidth: 10,
              value: 0.75,
              backgroundColor: AppColors.chartSecondary,
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
            ),
          ),
          Center(
            child: Text(
              "75% ",
              style: AppTextStyles.heading,
            ),
          )
        ],
      ),
    );
  }
}
