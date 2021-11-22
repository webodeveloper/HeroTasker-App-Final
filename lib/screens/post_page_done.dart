import 'package:aitl_project/Constant/appbuttons.dart';
import 'package:aitl_project/Constant/appcolor.dart';
import 'package:flutter/material.dart';
class PostPageDone extends StatefulWidget {
  const PostPageDone({Key? key}) : super(key: key);

  @override
  _PostPageDoneState createState() => _PostPageDoneState();
}

class _PostPageDoneState extends State<PostPageDone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 100,left:10),
                child: Text("Congratulation!",
                style: TextStyle(
                  fontSize: 31,
                  color: AppColors.BrandColor
                ),
                )),
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Your task has been posted.",
                  style: TextStyle(
                      fontSize: 18,
                      color: AppColors.Darkgrey
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text("You will be notified after you receive an offer.",
                    style: TextStyle(
                        fontSize: 18,
                        color: AppColors.Darkgrey
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 80,),
            Container(
              height: 300,
              width: 300,
              child: Image.asset("assets/images/offeraccepte.png"),
            ),
            SizedBox(height: 140,),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),

              child: AppMainButton(
                  title: "Done", onPressed: (){}),
            )

          ],
        ),
      ),

    );
  }
}
