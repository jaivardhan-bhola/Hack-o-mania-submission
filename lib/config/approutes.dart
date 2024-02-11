import 'package:agrosnap/pages/account.dart';
import 'package:agrosnap/pages/loginpage.dart';
import 'package:agrosnap/pages/signup.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => LoginPage(),
    '/signup': (context) => SignUp(),
    '/adminaccount': (context) => const Account(),
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
