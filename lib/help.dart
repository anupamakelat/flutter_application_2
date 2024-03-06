// ignore: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';

// ignore: prefer_typing_uninitialized_variables
//import; 'package:flutter/material.dart';


// ignore: camel_case_types
class shared extends StatelessWidget {
  const shared({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: const Text('Help'),
     ),
     body: ListView(
      children: [
        ListTile(
           leading: const Icon(Icons.help),
           
             title: const Text("Help",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
 ),
        ListTile(
           leading: const Icon(Icons.contactless_rounded),
           subtitle: const Text("Questons? Need help?"),
              title: const Text("Contact Us",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),ListTile(
           leading: const Icon(Icons.privacy_tip),
          title: const Text("Terms and Privacy Policy",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),ListTile(
           leading: const Icon(Icons.info),   title: const Text("App info",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),
     
       
        
      ],
    ),
         
 
);
}
}
