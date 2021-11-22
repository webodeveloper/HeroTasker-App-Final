import 'package:aitl_project/Constant/appbuttons.dart';
import 'package:aitl_project/Constant/appcolor.dart';
import 'package:aitl_project/screens/post_page_done.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostTaskThree extends StatefulWidget {
  const PostTaskThree({Key? key}) : super(key: key);

  @override
  _PostTaskThreeState createState() => _PostTaskThreeState();
}

class _PostTaskThreeState extends State<PostTaskThree> {
  bool FixedButton = false;
  bool hourlyButton = false;
  bool yesButton = false;
  bool noButton = false;
  int dataToChange = 0;

  void minusToDataChange() {
    setState(() {
      if (dataToChange != 0) dataToChange--;
    });
  }

  void PlusToDataChange() {
    setState(() {
      dataToChange += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BGColor,
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0.0,
        backgroundColor: AppColors.BGColor,
        leading: Container(
            margin: EdgeInsets.only(top: 60),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: AppColors.BrandColor, shape: BoxShape.circle),
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back))),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
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
                          color: AppColors.Darkgrey,
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
                            color: AppColors.Darkgrey),),
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
                          color: AppColors.BrandColor,
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
                          color: AppColors.BrandColor,),),
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
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 110,
                    child: RaisedButton(
                      child: Text("Fixed Rate"),
                      textColor: AppColors.PureWhiteColor,
                      color: FixedButton
                          ? AppColors.BrandColor
                          : AppColors.GreyishColor,
                      onPressed: () =>
                          setState(() => FixedButton = !FixedButton),
                    ),
                  ),
                  Container(
                    width: 110,
                    child: RaisedButton(
                      child: Text("Hourly Rate"),
                      textColor: AppColors.PureWhiteColor,
                      color: hourlyButton
                          ? AppColors.BrandColor
                          : AppColors.GreyishColor,
                      onPressed: () =>
                          setState(() => hourlyButton = !hourlyButton),
                    ),
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
            Container(
                width: 420,
                height: 80,
                padding: EdgeInsets.all(6.0),
                child: TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: AppColors.PureWhiteColor,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                      borderSide:
                          BorderSide(color: AppColors.GreyishColor, width: 1),
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        'assets/images/pound.png',
                        width: 20,
                        height: 20,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                )),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "How many Heros do you need?",
                    style:
                        TextStyle(fontSize: 16, color: AppColors.GreyishColor),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Text(
                      "${dataToChange}",
                      style:
                          TextStyle(fontSize: 15, color: AppColors.BrandColor),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 40,
                  height: 35,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.GreyishColor,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                    ),
                    child: Text(
                      "-",
                      style: TextStyle(
                          color: AppColors.PureWhiteColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w800),
                    ),
                    onPressed: minusToDataChange,
                  ),
                ),
                Container(
                  width: 40,
                  height: 35,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                      primary: AppColors.BrandColor,
                    ),
                    child: Text(
                      "+",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                    ),
                    onPressed: PlusToDataChange,
                  ),
                ),
              ],
            ),
            SizedBox(height: 80,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    "Estimated budget:",
                    style:
                        TextStyle(fontSize: 16, color: AppColors.GreyishColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: AppMainButtonWithIcon(
                title: "Post Task",
                onPressed: () {
                  Get.to(PostPageDone());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
