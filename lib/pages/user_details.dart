
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/controller/user_controller.dart';
import 'package:to_do/model/user_model.dart';

class UserDetailsPage extends StatelessWidget {
  const UserDetailsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final userController = Provider.of<UserController>(context);
    final Size mediaSize = MediaQuery.of(context).size;
    UserModel user = userController.showDetails();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("${user.name}'s   Info".toUpperCase(),style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700,color: Colors.blue.shade900),),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios,size: 30,color: Colors.blue.shade700,),
          ),
        ),
        body: SizedBox(
          width: mediaSize.width,
          height: mediaSize.height,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Name : ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Colors.black),),
                      const SizedBox(height: 10,),
                      Text(user.name.toString(),style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 5,
                  color: Colors.blueGrey,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Username : ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Colors.black),),
                      const SizedBox(height: 10,),
                      Text(user.username.toString(),style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 5,
                  color: Colors.blueGrey,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Email : ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Colors.black),),
                      const SizedBox(height: 10,),
                      Text(user.email.toString(),style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 5,
                  color: Colors.blueGrey,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("About : ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Colors.black),),
                      const SizedBox(height: 10,),
                      Text(user.description.toString(),style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
                      // Text(user.username.toString(),style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 5,
                  color: Colors.blueGrey,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Address : ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Colors.black),),
                      const SizedBox(height: 10,),
                      Text(user.address.toString(),style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w400,color: Colors.black),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
