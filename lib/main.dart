// @dart=2.9
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:management/screens/chat_screen.dart';
import 'package:management/screens/login_screen.dart';
import 'package:management/screens/registration_screen.dart';
import 'package:management/screens/users%20from%20firestore.dart';
import 'package:management/screens/welcome_screen.dart';
import 'package:management/view/homescreen.dart';
import 'helper/binding.dart';
// import 'statemangement/index.dart';
// import 'ui/index.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(alert: true,badge: true,sound: true);
  // await GetStorage.init();
  // await GetStorage.init('testx');
  //
  // traceConfig(
  //   argsSeparator: "=>",
  //   showClassname: true,
  //   showFilename: true,
  //   showLinenumber: true,
  //   showMethodname: true,
  // );
  // Get.put(FirebaseService());
  // Get.put(UserCrud());
  // Get.put(UserController());
  // Get.put(AuthService());
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    //   DeviceOrientation.portraitDown,
    //   DeviceOrientation.landscapeLeft,
    //   DeviceOrientation.landscapeRight,
    // ]);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialBinding: Binding(),
      theme: ThemeData.light().copyWith(
        textTheme: TextTheme(

          body1: TextStyle(color: Colors.white70),
        ),
      ),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      initialBinding: Binding(),

      home: HomeView(),
      initialRoute: HomeView.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        HomeView.id: (context) => HomeView(),
        UsersFromFireBase.id: (context) => UsersFromFireBase(),

      },

      // home: Unfocuser(
      //   child: ('onBoarding'.getValue ?? false) ? Root() : OnBoardingPage(),
      // ),

      // home: Scaffold(
      //   body: HomeView(),
      // ),
    );
  }
}

