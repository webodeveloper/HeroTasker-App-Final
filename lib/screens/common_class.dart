import 'package:aitl_project/Constant/appcolor.dart';
import 'package:aitl_project/Constant/appgrideviewButton.dart';
import 'package:aitl_project/screens/post_task.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String searchQuery = "Search query";
  int _currentBottomTabIndex = 0;
  String pathBottomNavBaseImage = 'assets/images/bottom_base.png';
  String pathTab1Icon = 'assets/images/post_task.png';
  String pathTab2Icon = 'assets/images/mytask.png';
  String pathTab3Icon = 'assets/images/search.png';
  String pathTab4Icon = 'assets/images/message.png';
  String pathTab5Icon = 'assets/images/more.png';


  String maid = 'assets/home_page_images/cleaning.png';
  String handyman = 'assets/home_page_images/handy.png';
  String Cleaning = 'assets/home_page_images/clean.png';
  String Delivery = 'assets/home_page_images/delivery.png';
  String Beautician = 'assets/home_page_images/beautician.png';
  //assets\home_page_images\track.png
  String Cook = 'assets/home_page_images/cook.png';
  String Shop = 'assets/home_page_images/shop.png';
  String Tutor = 'assets/home_page_images/tutor.png';
  String ThreePerson = 'assets/home_page_images/threeperson.png';

  double navBarHeight = 80.6;
  double navBarPaddingTop = 10.56;
  double tabIconSize = 30.9;
  static bool unselectedBottomNav = false;

  @override
  Widget build(BuildContext context) {
    return Material(

      child: Scaffold(
        backgroundColor: AppColors.BGColor,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: AppColors.BGColor,
          title: Center(
            child: Text(
              "Post a Task",
              style: TextStyle(fontSize: 31, color: AppColors.BrandColor),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                  height: 30,
                  width: 30,
                  child: Image.asset("assets/images/bell.png")),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                  height: 30,
                  width: 30,
                  child: Image.asset("assets/images/help.png")),
            )
          ],
        ),
        body:SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: 32,
                width: MediaQuery.of(context).size.width,
                color: AppColors.GreyishColor,
                child: Center(
                  child: Text(
                    "Select tasks you need done from below",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.PureWhiteColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        AppGrigeButton(
                          onPressed: () {
                            Get.to(PostTaskPage());
                          },
                          TextButton: Text("Cleaning"),
                          child: Container(
                              height: 40,
                              width: 50,
                              child: Image.asset(Cleaning)),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        AppGrigeButton(
                          onPressed: () {
                            //MyHomePage
                          },
                          TextButton: Text("Handyman"),
                          //handyman
                          child:  Container(
                              height: 40,
                              width: 50,
                              child: Image.asset(handyman)),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        AppGrigeButton(
                          onPressed: () {},
                          TextButton: Text("Maid"),
                          child: Container(
                              height: 40,
                              width: 50,
                              child: Image.asset(maid)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        AppGrigeButton(
                          onPressed: () {},
                          TextButton: Text("Delivery"),
                          child: Container(
                              height: 40,
                              width: 50,
                              child: Image.asset(Delivery)),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        AppGrigeButton(
                          onPressed: () {},
                          TextButton: Text("Beautician"),
                          child: Container(
                              height: 40,
                              width: 50,
                              child: Image.asset(Beautician)),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        AppGrigeButton(
                          onPressed: () {},
                          TextButton: Text("Chef/ Cook"),
                          child: Container(
                              height: 40,
                              width: 50,
                              child: Image.asset(Cook)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        AppGrigeButton(
                          onPressed: () {},
                          TextButton: Text("Shop"),
                          child: Container(
                              height: 40,
                              width: 50,
                              child: Image.asset(Shop)),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        AppGrigeButton(
                          onPressed: () {},
                          TextButton: Text("Tutor"),
                          child: Container(
                              height: 40,
                              width: 50,
                              child: Image.asset(Tutor)),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        AppGrigeButton(
                          onPressed: () {},
                          TextButton: Text("Part time job"),
                          child: Container(
                              height: 40,
                              width: 50,
                              child: Image.asset(ThreePerson)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        AppGrigeButton(
                          onPressed: () {},
                          TextButton: Text("Cleaning"),
                          child: Container(
                              height: 40,
                              width: 50,
                              child: Image.asset(Cleaning)),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        AppGrigeButton(
                          onPressed: () {},
                          TextButton: Text("Beautician"),
                          child: Container(
                              height: 40,
                              width: 50,
                              child: Image.asset(handyman)),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        AppGrigeButton(
                          onPressed: () {},
                          TextButton: Text("Chef/ Cook"),
                          child: Container(
                              height: 40,
                              width: 50,
                              child: Image.asset(handyman)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ],
          ),
        ),



 bottomNavigationBar:_bottomNavBar() ,
      ),
    );
  }


  Widget _bottomNavBar() {

    Color bottomTabSelectedColor;
    Color bottomTabUnSelectedColor = AppColors.Darkgrey;
    bottomTabSelectedColor = AppColors.BrandColor;

    return Container(
      height: navBarHeight,
      padding: new EdgeInsets.only(top: navBarPaddingTop),
      color: AppColors.PureWhiteColor,


      child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            selectedItemColor: bottomTabSelectedColor,
            unselectedItemColor: bottomTabUnSelectedColor,
             onTap: _onBottomTabTapped,
           currentIndex: _currentBottomTabIndex,
            elevation: 0,
            type: BottomNavigationBarType.fixed,

            items: [
              BottomNavigationBarItem(
                activeIcon: _buildBottomNavIcon(bottomTabSelectedColor, tabIconSize, pathTab1Icon),
                icon: _buildBottomNavIcon(bottomTabUnSelectedColor, tabIconSize, pathTab1Icon),
                label: "Post a Task",
              ),
              BottomNavigationBarItem(
                activeIcon: _buildBottomNavIcon(bottomTabSelectedColor, tabIconSize, pathTab2Icon),
                icon: _buildBottomNavIcon(bottomTabUnSelectedColor, tabIconSize, pathTab2Icon),
                label: "My task",
              ),

              BottomNavigationBarItem(
                activeIcon: _buildBottomNavIcon(bottomTabSelectedColor, tabIconSize, pathTab3Icon),
                icon: _buildBottomNavIcon(bottomTabUnSelectedColor, tabIconSize, pathTab3Icon),
                label: "Find Work",
              ),

              BottomNavigationBarItem(
                  activeIcon: _buildBottomNavIcon(bottomTabSelectedColor, tabIconSize, pathTab4Icon),
                  icon: _buildBottomNavIcon(bottomTabUnSelectedColor, tabIconSize, pathTab4Icon),
                  label: "Message"
              ),
              BottomNavigationBarItem(
                  activeIcon: _buildBottomNavIcon(bottomTabSelectedColor, tabIconSize, pathTab5Icon),
                  icon: _buildBottomNavIcon(bottomTabUnSelectedColor, tabIconSize, pathTab5Icon),
                  label: "More"
              )
            ],
          )

      ),);
  }


  void _onBottomTabTapped(int index) {
    unselectedBottomNav = false;
    setState(() {
      _currentBottomTabIndex = index;

      if(_currentBottomTabIndex == 0) {

      }

    });
  }

  Widget _buildBottomNavIcon(Color color, double size, String path) {
    return SizedBox(
      height: size,
      width: size,
      child: Image.asset(
        path,
        height: size * 0.8,
        color: color,
      ),
    );
  }

}


