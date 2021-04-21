import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/users_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: "Tarcisio V.",
      photoUrl: "https://avatars.githubusercontent.com/u/33500059?v=4",
    );
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
        title: "QUIZ 5",
        image: AppImages.blocks,
        level: Level.facil,
        questions: [
          QuestionModel(title: "Esta curtindo o flutter?", answers: [])
        ],
      ),
    ];
  }
}
