import 'package:aitl_project/Constant/appbuttons.dart';
import 'package:aitl_project/Constant/appcolor.dart';
import 'package:aitl_project/screens/post_task_three.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostTaskTwo extends StatefulWidget {
  const PostTaskTwo({Key? key}) : super(key: key);

  @override
  _PostTaskTwoState createState() => _PostTaskTwoState();
}

class _PostTaskTwoState extends State<PostTaskTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BGColor,
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0.0,
        backgroundColor: AppColors.BGColor,
        leading: Container(
            margin: EdgeInsets.only(
              top: 60,
            ),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: AppColors.BrandColor, shape: BoxShape.circle),
            child: Center(
              child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back)),
            )),
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
            margin: EdgeInsets.only(top: 50),
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
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Container(
              height: 50,
              color: AppColors.PureWhiteColor,
              child: Row(
                children: [
                  SizedBox(
                    width: 8,
                  ),
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
                            "1",
                            style: TextStyle(
                                fontSize: 12, color: AppColors.PureWhiteColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Details",
                        style:
                            TextStyle(fontSize: 14, color: AppColors.Darkgrey,),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 2,
                        width: 25,
                        color: AppColors.Darkgrey,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
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
                            "2",
                            style: TextStyle(
                                fontSize: 12, color: AppColors.PureWhiteColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Due Date",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.BrandColor,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 2,
                        width: 25,
                        color: AppColors.Darkgrey,
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
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
                            style: TextStyle(
                                fontSize: 12, color: AppColors.PureWhiteColor),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Budget",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.Darkgrey,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, top: 15),
                  child: Text(
                    "When do you need it done?",
                    style:
                        TextStyle(fontSize: 16, color: AppColors.GreyishColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                width: 420,
                height: 80,
                padding: EdgeInsets.all(6.0),
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintText: 'Select Date',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: AppColors.PureWhiteColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      borderSide:
                          BorderSide(color: AppColors.GreyishColor, width: 1),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/images/calendar.png',
                        width: 20,
                        height: 20,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 410,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: AppMainButtonWithIcon(
                title: "Continue",
                onPressed: () {
                  Get.to(PostTaskThree());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
