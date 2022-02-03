
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/controller/user_controller.dart';
import 'package:to_do/pages/form.dart';
import 'package:to_do/pages/user_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {


  @override
  Widget build(BuildContext context) {
    final providerUserList = Provider.of<UserController>(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Container(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            icon: const Icon(Icons.menu,color: Colors.blueGrey,size: 40,),
            onPressed: (){
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const FormPage()));
        },
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add_circle,color: Colors.white,size: 35,),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.orange.shade900
            ),
            margin: const EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * 0.15,
            alignment: Alignment.center,
            // child: const Text('Current Time',style: TextStyle(color: Colors.white,fontSize: 28),),
            child: Text("Total User's   :   "+providerUserList.userList.length.toString(),style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 22,color: Colors.white),),
          ),
          SizedBox(
            height: size.height * 0.65,
            child: ListView.builder(
              itemCount: providerUserList.userList.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context,index){
                return Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink.shade900,
                  ),
                  width: size.width * 0.6,
                  height: size.height * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text("${providerUserList.userList[index].name}",style: const TextStyle(color: Colors.white,fontSize: 20),)
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(onPressed: (){}, child: const Icon(Icons.delete,color: Colors.redAccent,)),
                            const SizedBox(width: 30,),
                            ElevatedButton(onPressed: (){
                              providerUserList.actionIndexSet(index);
                              Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetailsPage()));
                            }, child: const Icon(Icons.view_list,color: Colors.greenAccent,)),
                          ],
                        )
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      )
    );
  }
}
