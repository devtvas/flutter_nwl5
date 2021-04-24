import 'package:flutter/material.dart';

import 'package:devquiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:devquiz/core/core.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int length;
  final int result;
  const ResultPage({
    Key? key,
    required this.title,
    required this.length,
    required this.result,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.purpleAccent,
      body: Container(
        width: double.maxFinite,
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppImages.trophy),
              Column(
                children: [
                  Text(
                    'Parabens',
                    style: AppTextStyles.heading40,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text.rich(
                    TextSpan(
                        text: "Voce conclui ",
                        style: AppTextStyles.body,
                        children: [
                          TextSpan(
                            text: '\n$title',
                            style: AppTextStyles.bodyBold,
                          ),
                          TextSpan(
                            text: '\ncom $result de $length acertos.',
                            style: AppTextStyles.body,
                          ),
                        ]),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: NextButtonWidget.purple(
                            label: "Compartilhar",
                            onTap: () {
                              Share.share(
                                  'check out my website https://example.com');
                            }),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: NextButtonWidget.transparent(
                              label: "Voltar ao início",
                              onTap: () => Navigator.pop(context)),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
