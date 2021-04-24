import 'package:devquiz/core/app_gradients.dart';
import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/widgets/score_card/score_card_widget.dart';
import 'package:devquiz/shared/models/users_model.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  final VoidCallback onTap;
  AppBarWidget({
    required this.user,
    required this.onTap,
  }) : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,

            // decoration: BoxDecoration(gradient: AppGradients.linear),
            child: Stack(
              children: [
                Container(
                  height: 161,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.maxFinite,
                  decoration: BoxDecoration(gradient: AppGradients.linear),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                            text: 'Olá, ',
                            style: AppTextStyles.title,
                            children: [
                              TextSpan(
                                  text: user.name,
                                  style: AppTextStyles.titleBold)
                            ]),
                      ),
                      GestureDetector(
                        onTap: onTap,
                        child: Container(
                          width: 58,
                          height: 58,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(user.photoUrl),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                    // alignment: Alignment.bottomCenter,
                    alignment: Alignment(0.0, 1.0),
                    child: ScoreCardWidget(
                      percent: user.score,
                    ))
              ],
            ),
          ),
        );
}
