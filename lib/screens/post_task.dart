import 'package:aitl_project/Constant/appbuttons.dart';
import 'package:aitl_project/Constant/appcolor.dart';
import 'package:aitl_project/screens/post_task_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

class PostTaskPage extends StatefulWidget {
  const PostTaskPage({Key? key}) : super(key: key);

  @override
  _PostTaskPageState createState() => _PostTaskPageState();
}

class _PostTaskPageState extends State<PostTaskPage> {
  bool yesButton = false;
  bool noButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BGColor,
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0.0,
        backgroundColor: AppColors.BGColor,
        title: Container(
          margin: EdgeInsets.only(top: 50),
          child: Text(
            "Post a Task",
            style: TextStyle(fontSize: 31, color: AppColors.BrandColor),
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin:  EdgeInsets.only(top: 50),
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Container(
                  height: 30,
                  width: 30,
                  child: Image.asset("assets/images/trash.png")),
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Container(
              color: AppColors.PureWhiteColor,
              height: 50,
              child: Row(
                children: [
                  SizedBox(width: 8,),
                  Row(
                    children: [
                  Container(
          height: 30,
        width: 30,
        decoration: new BoxDecoration(
        color: AppColors.BrandColor,
          shape: BoxShape.circle,
          border: new Border.all(
            color: AppColors.PureWhiteColor
          ),
        ),
        child: new Center(
          child: new Text(
              "1",
              style: TextStyle(fontSize: 12,color: AppColors.PureWhiteColor),
          ),
        ),
      ),
                      SizedBox(width: 5,),
                      Text("Details",
                      style: TextStyle(fontSize: 14,
                      color: AppColors.BrandColor),),
                      SizedBox(width: 5,),
                      Container(
                        height: 2,
                        width: 25,
                        color: AppColors.Darkgrey,
                      )
                    ],
                  ),
                  SizedBox(width: 10,),
                  Row(
                    children: [
                  Container(
          height: 30,
        width: 30,
        decoration: new BoxDecoration(
        color: AppColors.Darkgrey,
          shape: BoxShape.circle,
          border: new Border.all(
              color: AppColors.PureWhiteColor
          ),
        ),
        child: new Center(
          child: new Text(
              "2",
              style: TextStyle(fontSize: 12,color: AppColors.PureWhiteColor),
          ),
        ),
      ),
                      SizedBox(width: 5,),
                      Text("Due Date",
                      style: TextStyle(fontSize: 14,
                      color: AppColors.Darkgrey,),),
                      SizedBox(width: 5,),
                      Container(
                        height: 2,
                        width: 25,
                        color: AppColors.Darkgrey,
                      )
                    ],
                  ),
                  SizedBox(width: 10,),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: new BoxDecoration(
                          color: AppColors.Darkgrey,
                          shape: BoxShape.circle,
                          border: new Border.all(
                              color: AppColors.PureWhiteColor
                          ),
                        ),
                        child: new Center(
                          child: new Text(
                            "3",
                            style: TextStyle(fontSize: 12,color: AppColors.PureWhiteColor),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text("Budget",
                        style: TextStyle(fontSize: 14,
                          color: AppColors.Darkgrey,),),
                      SizedBox(width: 5,),
                      Container(
                        height: 2,
                        width: 25,
                        color: AppColors.Darkgrey,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left:10),
                  child: Text(
                    "Task Headline",
                    style: TextStyle(fontSize: 16, color: AppColors.GreyishColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: 420,
                padding: EdgeInsets.all(6.0),
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: 'eg. I need a cleaner.',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: AppColors.PureWhiteColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      borderSide: BorderSide(color: AppColors.GreyishColor, width: 1),
                    ),

                  ),)
            ),

            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left:10),
                  child: Text(
                    "Description",
                    style: TextStyle(fontSize: 16, color: AppColors.GreyishColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            _buildTextField(),
            SizedBox(
              height: 20,
            ),
            Row(

              children: [
                Container(
                  margin: EdgeInsets.only(left:10),
                  child: Text(
                    "Is it online based job?",
                    style: TextStyle(fontSize: 16, color: AppColors.GreyishColor),
                  ),
                ),
                SizedBox(width: 107,),
                Row(
                  children: [
                    Container(
                      width: 60,
                      child: RaisedButton(
                        child: Text("Yes"),
                        textColor: AppColors.PureWhiteColor,
                        color: yesButton ? AppColors.BrandColor  :  AppColors.GreyishColor ,
                        onPressed: () => setState(() => yesButton = !yesButton),
                      ),
                    ),
                    Container(
                      width: 50,
                      child: RaisedButton(
                        child: Text("No"),
                        textColor: AppColors.PureWhiteColor,

                        color: noButton ? AppColors.BrandColor  :  AppColors.GreyishColor ,
                        onPressed: () => setState(() => noButton = !noButton),
                      ),
                    ),
                  ],
                ),




              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left:10),
                  child: Text(
                    "Task Location",
                    style: TextStyle(fontSize: 16, color: AppColors.GreyishColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
                width: 420,
                padding: EdgeInsets.all(6.0),
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: AppColors.PureWhiteColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      borderSide: BorderSide(color: AppColors.GreyishColor, width: 1),
                    ),

                  ),)
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),

              child: AppMainButtonWithIcon(

                  title: "Continue",

                  onPressed: (){
                    Get.to(PostTaskTwo());
                  },),
            ),


          ],
        ),
      ),
    );
  }
  Widget _buildTextField() {
    final maxLines = 7;

    return Container(
      margin: EdgeInsets.all(12),
      height: maxLines * 20.0,
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
         // hintText: 'eg. I need a cleaner.',
          fillColor: AppColors.PureWhiteColor,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            borderSide: BorderSide(color: AppColors.GreyishColor, width: 1),
          ),
        ),
      ),
    );
  }

  List<Step> BodyStartContinue() => [];
}
