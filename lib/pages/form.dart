import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  String? name;
  String? username;
  String? email;
  String? address;
  String? aboutInfo;
  var emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 18.0,top: 10),
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios,color: Colors.grey,size: 35,),
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  _buildName(),
                  const SizedBox(height: 15,),
                  _buildUsername(),
                  const SizedBox(height: 15,),
                  _buildEmail(),
                  const SizedBox(height: 15,),
                  _buildSortDescription(),
                  const SizedBox(height: 15,),
                  _buildAddress(),
                  const SizedBox(height: 60,),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: const EdgeInsets.only(right: 60),
                    child: ElevatedButton(
                      onPressed: (){
                        if(!_formKey.currentState!.validate())
                          {
                            return ;
                          }
                        else if(_formKey.currentState!.validate())
                          {
                            _formKey.currentState!.save();
                            _formKey.currentState!.reset();
                          }
                      },
                      child: Text('Submit'.toUpperCase(),style: const TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }



  Widget _buildName()
  {
    return TextFormField(
      decoration: const InputDecoration(
        hintText:  'Enter Your Name',
        hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),
        label: Text('Name      *'),
        focusedBorder: OutlineInputBorder()
      ),
      validator: (String? value){
        if(value!.isEmpty)
          {
            return "name required";
          }
      },
      onSaved: (value){
        name = value;
      },
    );
  }

  Widget _buildUsername()
  {
    return TextFormField(
      decoration: const InputDecoration(
        hintText:  'Enter Username',
        hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),
      ),
      validator: (value){
        if(value!.isEmpty)
          {
            return "username required";
          }
        else if(value.length < 6){
          return "more than 6 characters";
        }
      },
      onSaved: (value){
        username = value;
      },
    );
  }

  Widget _buildEmail()
  {
    return TextFormField(
      decoration: const InputDecoration(
        hintText:  'Email',
        hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),
      ),
      validator: (String? value){
        // bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);
        if(value!.isEmpty)
        {
          return "Email required";
        }
        else if(!emailValid.hasMatch(value)){
          return "Invalid Email";
        }
      },
      onSaved: (value){
        name = value;
      },
    );
  }

  Widget _buildAddress()
  {
    return TextFormField(
      keyboardType: TextInputType.multiline,
      textInputAction: TextInputAction.newline,
      minLines: 3,
      maxLines: 5,
      decoration: const InputDecoration(
        hintText:  'Address',
        hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),
      ),
      validator: (String? value){
        if(value!.isEmpty)
        {
          return "write address";
        }
      },
      onSaved: (value){
        name = value;
      },
    );
  }

  Widget _buildSortDescription()
  {
    return TextFormField(
      keyboardType: TextInputType.multiline,
      textInputAction: TextInputAction.newline,
      minLines: 3,
      maxLines: 10,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Desc",
        hintText:  'sort description',
        hintStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),
      ),
      validator: (String? value){
        if(value!.isEmpty)
        {
          return "write anything about her/his";
        }
      },
      onSaved: (value){
        name = value;
      },
    );
  }

}
