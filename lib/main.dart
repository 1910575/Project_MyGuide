import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_guie/audiobook/audiobooks_screen.dart';
import 'package:my_guie/helpers/cash.dart';
import 'package:my_guie/helpers/dio_helper.dart';
import 'package:my_guie/screens/material/view.dart';
import 'package:my_guie/screens/on_boarding/view.dart';
import 'package:my_guie/screens/qr_code/qrcode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await CashedHelper.init();
  await DioHelper.init();

  runApp(const MyGuide());

}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.light,
            ),
            backgroundColor: Colors.white,
            elevation: 0.0,
          )
      ),
      home:OnboardingPage(),

    );

  }
}