// ignore_for_file: prefer_const_declarations


import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';
//import 'package:flutter_application_2/main.dart';
//import 'package:flutter_application_2/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ScreenLogin extends StatefulWidget {
   const ScreenLogin({super.key});



  @override
  State<ScreenLogin> createState() => _MyWidget3State();
}

class _MyWidget3State extends State<ScreenLogin> {
    final _formKey = GlobalKey<FormState>();
  TextEditingController user=TextEditingController();
  TextEditingController passwrd=TextEditingController();
  
 @override
  Widget build(BuildContext context) {
    return  Scaffold(
        
        
    body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
        child: Form(
          key: _formKey,
          child: Column(
             mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: validateEmail,
                     maxLength: 20,
                     controller: user,
                     
                    decoration: InputDecoration(
                      
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      ),  labelText: "user name",
                      hintText:  "Enter Username",
                     prefixIcon: const Icon(Icons.person),
                      suffixIcon: const Icon(Icons.verified_user),
                       helperText: "Enter Username characters",
                  ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
          
                   TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: validatepass,
                     maxLength: 10,
                     controller: passwrd,
                      obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      ),
                      labelText: "Password",
                      hintText:  "Enter password",
                     prefixIcon: const Icon(Icons.key),
                      suffixIcon: const Icon(Icons.verified_user),
                    //   helperText: "Atleast 6 characters ",
                        
                  ),
                  ),
                   const SizedBox(
                    height: 50,
                  ),
                
                  ElevatedButton(onPressed: (){
                    checkpassword(context);
                  },
                  
                  
                   child:const Text('log in',style: TextStyle(fontSize:20 ),)),
                ]
              ),
        ),
          )
    ));
          
  }
  Future<void> checkpassword(BuildContext context) async {
     String userName=user.text;
     // ignore: non_constant_identifier_names
     String Password=passwrd.text;
     if(userName=='kris'&& Password=='123'){
      final  prefs =await SharedPreferences.getInstance();
      prefs.setBool("123", true);
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement( MaterialPageRoute(builder: ((context) => const homescreen())));
     }else{
      // ignore: no_leading_underscores_for_local_identifiers
      final _errorMessage='username or password does not match';
      ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(_errorMessage),behavior:
      SnackBarBehavior.floating,margin:  const EdgeInsets.all(10),
      duration: const Duration(seconds: 2),));
     }

}
//validate email
  String? validateEmail(String? value) {
    final trimmedValue = value?.trim();

    if (trimmedValue == null || trimmedValue.isEmpty) {
      return 'Enter username';
    }

    return null;
  }
//validate pass
  String? validatepass(String? value) {
    final trimmedValue = value?.trim();

    if (trimmedValue == null || trimmedValue.isEmpty) {
      return 'Enter pass';
    }

    return null;
  }

}

