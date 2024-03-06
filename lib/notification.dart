import 'package:flutter/material.dart';

class MyWidget9 extends StatefulWidget {
  const MyWidget9({super.key});

  @override
  State<MyWidget9> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
       title: const Text('Notifications'),
        ),
       

        body: ListView(
      children: [
 ListTile(
           
           subtitle: const Text("play sounds for incoming and outgoing messages"),
              title: const Text("Conversation tones",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),
        ListTile(
           
           subtitle: const Text("Default(waterDrop_preview.ogg)"),
              title: const Text("Notificatin tones",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),ListTile(
           
           subtitle: const Text("Default"),
              title: const Text("Vibrate",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),ListTile( subtitle: const Text("Show notification for reaction to messages you send "),
              title: const Text("Reaction Notification",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),
       
        
      ],
    ),
);
}
}
