import 'package:aitl_project/Constant/appcolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AppMainButton extends StatefulWidget {
  Color backgroundColor;
  Color textColor;
  Function onPressed;
  EdgeInsets padding;
  String title;
  double? width;

  AppMainButton({
    required this.title,
    this.backgroundColor = AppColors.BrandColor,
    this.textColor = AppColors.PureWhiteColor,
    required this.onPressed,
    this.width,
    this.padding = const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
  });

  @override
  _AppMainButtonState createState() => _AppMainButtonState();
}

class _AppMainButtonState extends State<AppMainButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onPressed.call();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.backgroundColor,
        ),
        height: 50,
        alignment: Alignment.center,
        width: widget.width ?? double.infinity,
        child: Text(
          widget.title,
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: widget.textColor, fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class AppMainButtonWithIcon extends StatefulWidget {
  Color backgroundColor;
  Color textColor;
  Function onPressed;
  EdgeInsets padding;
  String title;
  double? width;
 AppMainButtonWithIcon({

   required this.title,
   this.backgroundColor = AppColors.BrandColor,
   this.textColor = AppColors.PureWhiteColor,
   required this.onPressed,
   this.width,
   this.padding = const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
 });

  @override
  _AppMainButtonWithIconState createState() => _AppMainButtonWithIconState();
}

class _AppMainButtonWithIconState extends State<AppMainButtonWithIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onPressed.call();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: widget.backgroundColor,
        ),
        height: 50,
        alignment: Alignment.center,
        width:widget.width ?? double.infinity,
        child: Row(

          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 150,),
                Center(
                  child: Text(
                    widget.title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: widget.textColor, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Expanded(child: Container(),),
            Padding(
              padding: const EdgeInsets.only(right:10.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_forward,
                    color:AppColors.PureWhiteColor,
                    size: 40,),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}


// Icon(Icons.arrow_forward_ios,
//                 // color:AppColors.PureWhiteColor,),
