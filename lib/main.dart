
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medco_ftd/appTheme.dart';
import 'package:medco_ftd/ui/pages/dashboardPage.dart';
import 'package:medco_ftd/ui/pages/loginPage.dart';
import 'package:medco_ftd/ui/pages/navbarPage.dart';
import 'package:medco_ftd/ui/pages/profilePage.dart';


void main() async {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  
  // final pref = new PrefUser();
  // await pref.intPref();

  

  runApp(new MyApp());
}

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  // final userProvider = new UserProvider();
  // final pushProvider = new PushNotificationProvider();
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();    

    // pushProvider.initNotifications();
    // userProvider.initUser();

    // FirebaseAuth.instance.onAuthStateChanged.listen((firebaseUser){
    //   print("onAuthStateChanged: $firebaseUser");
    //   if(firebaseUser != null){
    //     navigatorKey.currentState.pushReplacementNamed('NavbarPage');
    //     //Navigator.pushReplacementNamed(context, 'NavbarPage');
    //   }
    // });
    
  }

  @override
  Widget build(BuildContext context) {

    //final _pref = new PrefUser();

    // print(_pref.token);
    // print(_pref.user);
    
    return MaterialApp(
      title: 'M',
      navigatorKey: navigatorKey,     
      debugShowCheckedModeBanner: false, 
      // supportedLocales: [
      //   const Locale('es', 'ES'),
      // ],
      //initialRoute: _pref.token != null ? 'LoginPage' : 'IntroPage',
      initialRoute: 'LoginPage',
      theme: ThemeData(
        primaryColor: AppTheme.nearlyBlue
      ),
      routes: {
        //'IntroPage' : (BuildContext context) => IntroPage(),
        'LoginPage' : (BuildContext context) => LoginPage(),
        'ProfilePage' : (BuildContext context) => ProfilePage(),
        'NavbarPage' : (BuildContext context) => NavbarPage(),

        // //Services
        // 'ScheduleService' : (BuildContext context) => ScheduleService(),
        // 'ServicesActived' : (BuildContext context) => ServicesActived(),
        // 'ServiceDetail': (BuildContext context) => ServiceDetail(),
        
        // //Profiles
        // 'EditProfile' : (BuildContext context) => EditProfile(),
        // 'Notifications' : (BuildContext context) => Notifications(),
      },
      
    );
  }
}


