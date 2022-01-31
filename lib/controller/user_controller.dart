import 'package:to_do/model/user_model.dart';

class UserController {
  List<UserModel> userList = [];

  void initialUser() {
    userList.addAll([
      UserModel("tareq", "tareq23", "tareq@exampl.com",
          "I'am a android developer", "Bhola-Daulatkhan"),
      UserModel("tareq", "tareq23", "tareq@exampl.com",
          "I'am a android developer", "Bhola-Daulatkhan"),
      UserModel("tareq", "tareq23", "tareq@exampl.com",
          "I'am a android developer", "Bhola-Daulatkhan"),
      UserModel("tareq", "tareq23", "tareq@exampl.com",
          "I'am a android developer", "Bhola-Daulatkhan"),
      UserModel("tareq", "tareq23", "tareq@exampl.com",
          "I'am a android developer", "Bhola-Daulatkhan"),
    ]);
  }
}
