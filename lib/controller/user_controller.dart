
import 'package:flutter/material.dart';
import 'package:to_do/model/user_model.dart';

class UserController extends ChangeNotifier
{
  List<UserModel> userList = [];


  UserController(){
    userList.addAll([
      UserModel("tareq", "tareq23", "tareq@exampl.com",
          "I'am a android developer", "Bhola-Daulatkhan"),
      UserModel("Rafi", "tareq23", "tareq@exampl.com",
          "I'am a android developer", "Bhola-Daulatkhan"),
      UserModel("Rohan", "tareq23", "tareq@exampl.com",
          "I'am a android developer", "Bhola-Daulatkhan"),
      UserModel("sumon", "tareq23", "tareq@exampl.com",
          "I'am a android developer", "Bhola-Daulatkhan"),
      UserModel("jolil", "tareq23", "tareq@exampl.com",
          "I'am a android developer", "Bhola-Daulatkhan"),
    ]);
  }

  void initialUser() {
    userList.addAll([
      // UserModel("tareq", "tareq23", "tareq@exampl.com",
      //     "I'am a android developer", "Bhola-Daulatkhan"),
      // UserModel("tareq", "tareq23", "tareq@exampl.com",
      //     "I'am a android developer", "Bhola-Daulatkhan"),
      // UserModel("tareq", "tareq23", "tareq@exampl.com",
      //     "I'am a android developer", "Bhola-Daulatkhan"),
      // UserModel("tareq", "tareq23", "tareq@exampl.com",
      //     "I'am a android developer", "Bhola-Daulatkhan"),
      // UserModel("tareq", "tareq23", "tareq@exampl.com",
      //     "I'am a android developer", "Bhola-Daulatkhan"),
    ]);
  }

  void addNewUser(UserModel userModel)
  {
    userList.add(userModel);
    notifyListeners();
  }
}
