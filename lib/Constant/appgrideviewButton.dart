import 'package:aitl_project/Constant/appcolor.dart';
import 'package:flutter/material.dart';


class AppGrigeButton extends StatefulWidget {
  Color backgroundColor;
  Color textColor;
  Function onPressed;
  EdgeInsets padding;
  double? width;
  Widget child;
  Widget TextButton;

  AppGrigeButton({
    this.backgroundColor = AppColors.BrandColor,
    this.textColor = AppColors.PureWhiteColor,
    required this.onPressed,
    this.width,
    required this.child,
    required this.TextButton,
    this.padding = const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
  });

  @override
  _AppGrigeButtonState createState() => _AppGrigeButtonState();
}

class _AppGrigeButtonState extends State<AppGrigeButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onPressed.call();
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              color: AppColors.BrandColor,
            ),
            height: 94,
            alignment: Alignment.center,
            width: 94,
            child: widget.child,

          ),
          SizedBox(height: 20,),
          Container(
            child:widget.TextButton ,
          ),
        ],
      ),
    );
  }
}