import 'package:flutter/material.dart';

class ScreenPrivacy extends StatelessWidget {
  const ScreenPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text('Privacy'),
        ),


        body: ListView(
      children: [
        ListTile(
           leading: const Icon(Icons.key),
           subtitle: const Text("Security notifications,change number"),
              title: const Text("Account",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
  ),
        ListTile(
           leading: const Icon(Icons.lock),
           subtitle: const Text("Block contacts,disppearing messages"),
              title: const Text("Privacy",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),ListTile(
           leading: const Icon(Icons.circle_notifications),
           subtitle: const Text("Create,edit,profile photo"),
              title: const Text("Avatar",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),ListTile(
           leading: const Icon(Icons.key),
           subtitle: const Text("Theme,wallpapers,chat history"),
              title: const Text("Chats",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),
        ListTile(
           leading: const Icon(Icons.notification_add),
           subtitle: const Text("message,group & call tones"),
              title: const Text("Notification",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
 ),
        ListTile(
           leading: const Icon(Icons.storage),
           subtitle: const Text("Network usage,auto-download"),
              title: const Text("Storage and data",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),
        ListTile(
           leading: const Icon(Icons.language),
           subtitle: const Text("English(phone's language)"),
              title: const Text("Account",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        )
      ],
    ),);
}
}
