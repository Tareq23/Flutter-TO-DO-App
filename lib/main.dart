import 'package:flutter/material.dart';
import 'package:to_do/controller/user_controller.dart';
import 'package:to_do/pages/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
          create: (BuildContext context) {
            return UserController();
          },
          child: const HomePage()
      )
  );
}

