import 'package:app3/services/notificaion_services.dart';
import 'package:app3/services/theme_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notifyHelper;
  @override
  void initState() {
    //Todo: implement initstate
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.requestIOSPermissions();
    notifyHelper.initializeNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          Text("Themek  ", style: TextStyle(fontSize: 30)),
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          ThemeService().switchTheme();

          notifyHelper.displayNotification(
              title: "Theme Changed",
              body: Get.isDarkMode
                  ? "Activated Dark Theme"
                  : "Activated Light Theme");
        },
        child: Icon(
          Icons.nightlight_sharp,
          size: 25,
        ),
      ),
      actions: [
        Icon(
          Icons.person_2_sharp,
          size: 30,
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
