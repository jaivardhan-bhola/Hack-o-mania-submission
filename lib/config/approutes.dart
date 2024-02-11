import 'package:hackathon/pages/adminaccount.dart';
import 'package:hackathon/pages/editpreferencepage.dart';
import 'package:hackathon/pages/loginpage.dart';
import 'package:hackathon/pages/signup.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => LoginPage(),
    '/editpage': (context) => EditPreferencesForm(),
    '/signup': (context) => SignUp(),
    '/adminaccount': (context) => adminaccount(),
    // '/loginpage':(context) =>loginpage(),
    // '/home':(context) =>homepage(),
    // '/mainpage':(context) =>mainpage(),
    // '/testpage':(context) =>testpage(),
    // '/profilepage':(context) => profilepage(),
    // '/editprofilepage':(context) => editprofilepage(),
    // '/nearbypage':(context)=> nearbypage(),
  };
  //
  // static const login = '/';
  // static const home = '/home';
  // static const main = '/main';
  // static const editProfile = '/edit_profile';
  // static const nearby = '/nearby';
  // static const user = '/user';
}
