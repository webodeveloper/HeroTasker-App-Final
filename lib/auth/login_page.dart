import 'package:aitl_project/Constant/appbuttons.dart';
import 'package:aitl_project/Constant/appcolor.dart';
import 'package:aitl_project/screens/common_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BGColor,
      body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 50,),
              Container(
                height: 142,
                  width: 154,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Image.asset("assets/images/only_logo.png"),),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: RichText(
                    
                    text: TextSpan(
                      style: new TextStyle(
                        color: AppColors.BlackColor,
                      ),
                      children: <TextSpan>[
                        new TextSpan(text: 'Bring ',style: TextStyle(fontSize:31,)),
                        new TextSpan(text: 'Heros\n', style: new TextStyle(color:AppColors.BrandColor,fontSize:40,fontWeight: FontWeight.bold)),
                        new TextSpan(text: 'to do your to-dos', style: new TextStyle(fontSize:31,fontWeight: FontWeight.normal)),
                      ],

                    ),

                  )),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: AppColors.GreyishColor,
                    ),

                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      color: AppColors.GreyishColor,
                      icon: Icon(Icons.remove_red_eye,),
                      onPressed: () => setState(() => showPassword = !showPassword),
                    ),

                    labelText: 'Password',
                      labelStyle: TextStyle(
                        color: AppColors.GreyishColor,
                      ),
                  ),
                ),
              ),
             SizedBox(height: 30,),
              Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: AppMainButton(

                    onPressed: (){
                      Get.to(HomePage());
                    }, title: 'Login',),

              ),
              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.only(left:10 ),
                child: Row(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Forgot Password',
                    style: TextStyle(fontSize: 16,color: AppColors.Darkgrey),
                    ),
                    SizedBox(width: 70,),
                    Text(
                      'New user? ',
                      style: TextStyle(fontSize: 16,color: AppColors.Darkgrey),
                    ),
                    Text(
                      'Sign Up ',
                      style: TextStyle(color: AppColors.BlackColor,fontSize: 22,fontWeight: FontWeight.bold),
                    ),
                  ],

                ),
              )
            ],
          )));
  }
}

