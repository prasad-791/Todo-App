import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo_app/configurations/theme.dart';
import 'package:todo_app/screens/home_page.dart';
import 'package:todo_app/services/theme_services.dart';
import 'configurations/theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeServices().theme,
      theme: Themes.lightMode,
      darkTheme: Themes.darkMode,

      home: const HomePage(),
    );
  }
}
