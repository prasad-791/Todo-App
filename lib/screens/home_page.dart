import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/services/notification_services.dart';
import 'package:todo_app/services/theme_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var notifyHelper;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.initializeNotification();
    notifyHelper.requestIOSPermissions();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getCustomAppBar(),
      body: Column(
        children: const [
          Text(
            'Theme Data',
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }

  getCustomAppBar(){
    return AppBar(
      elevation: 0,
      backgroundColor: context.theme.backgroundColor,
      leading: GestureDetector(
        onTap:(){
          ThemeServices().switchTheme();
          notifyHelper.displayNotification(
            title: "Theme Changed",
            body: Get.isDarkMode ? "Activated Light Theme" : "Activated Dark Theme",
          );
          // notifyHelper.scheduledNotification();
        },
        child: Icon(
          Get.isDarkMode?Icons.wb_sunny_rounded:Icons.nightlight_round,
          size: 20,
          color: Get.isDarkMode?Colors.white:Colors.black,
        ),
      ),
      actions: const [
        CircleAvatar(
          backgroundImage: AssetImage(
              'assets/images/avatar.png'
          ),
        ),
        SizedBox(width: 20,),
      ],
    );
  }

}
