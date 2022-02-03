
import 'package:flutter/material.dart';
import 'package:to_do/model/user_model.dart';

class UserController extends ChangeNotifier
{
  List<UserModel> userList = [];

  int? actionIndex;

  UserController(){
    userList.addAll([
      UserModel("MD Tarequl Islam", "tareq23", "tareq@exampl.com",
          "I'am a android developer", "Bhola-Daulatkhan"),
      UserModel("Rafi", "Rafi233", "Rafi@exampl.com",
          "I'am a android developer", "Bhola-Daulatkhan"),
      UserModel("Rohan", "Rohan3", "Rohan@exampl.com",
          "I'am a android developer", "Bhola-Daulatkhan"),
      UserModel("riya", "riya565", "riya@exampl.com",
          "I'am a android developer", "Bhola-Daulatkhan"),
      UserModel("jolil", "jolil23", "tareq@exampl.com",
          "I'am a android developer", "Bhola-Daulatkhan"),
    ]);
  }

  void addNewUser(UserModel userModel)
  {
    userList.add(userModel);
    notifyListeners();
  }

  UserModel showDetails()
  {
    return userList[actionIndex!];
  }

  void actionIndexSet(int index) {
    actionIndex = index;
  }

}
