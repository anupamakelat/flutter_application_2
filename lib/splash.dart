// ignore: depend_on_referenced_packages
// ignore_for_file: no_leading_underscores_for_local_identifiers



import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/login.dart';
//import 'package:flutter_application_2/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkLogin(context);
  }
@override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(backgroundColor: Colors.blue,strokeWidth: 10,color: Colors.purple),

            
            SizedBox(height: 20,),
            Text('Loading....')
          ],
        ),
      ),
    );
 }

  void loginPage()async{
    await Future.delayed(const Duration(seconds: 3));
     // ignore: use_build_context_synchronously
     Navigator.pushReplacement(context,MaterialPageRoute(builder: (ctx)=> const ScreenLogin()));
  }
  // ignore: non_constant_identifier_names
  void HomePage()async{
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context,MaterialPageRoute(builder:(ctx)=> const homescreen()));
  }


  Future<void> checkLogin(BuildContext context) async{
    final _shared =await SharedPreferences.getInstance();
    final _login=_shared.getBool('123');
    if(_login==null||_login==false){
     loginPage();
    }
    else{
      HomePage();
}


}
}


