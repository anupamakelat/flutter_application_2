// ignore: duplicate_ignore
// ignore: prefer_const_constructors
// ignore: prefer_const_constructors
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

//
// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_application_2/help.dart';
import 'package:flutter_application_2/login.dart';
import 'package:flutter_application_2/main.dart';
import 'package:flutter_application_2/notification.dart';
import 'package:flutter_application_2/privacy.dart';
import 'package:flutter_application_2/profile.dart';

import 'package:shared_preferences/shared_preferences.dart';

// ignore: camel_case_types
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

// ignore: camel_case_types
class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Anupama.k'),
              accountEmail: Text('anupamakelat73@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('lib/assets/anu.jpg'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screenprofile()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.lock),
              title: const Text('Privacy'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenPrivacy()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('help'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => shared()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications_active),
              title: const Text('Notifications'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyWidget9()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                sigout(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        //text
        title: const Text("HOME"),
        centerTitle: true,

        //bg color
        backgroundColor: const Color.fromARGB(255, 47, 140, 211),

        //Actions
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt))
        ],
        //shape
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),

        //Elevation
        elevation: 30,
        shadowColor: Colors.black,
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 10,
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    alert(context);
                  },
                  title: const Text("Manju Warior"),
                  subtitle: const Text("23 minutes ago"),
                  leading: CircleAvatar(
                      backgroundImage: AssetImage("lib/assets/download.jpeg")),
                  trailing: const Icon(Icons.more_vert),
                ),
                const ListTile(
                  title: Text(
                    "From her comeback after 15 years of becoming superstar...",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                Image.asset('lib/assets/manju warrior.jpg'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.comment_rounded),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 10,
            child: Column(
              children: [
                const ListTile(
                  title: Text("Zayn Malik"),
                  subtitle: Text("45 minutes ago"),
                  leading: CircleAvatar(
                      backgroundImage:
                          AssetImage("lib/assets/download (1).jpeg")),
                  trailing: Icon(Icons.more_vert),
                ),
                const ListTile(
                  title: Text(
                    ".......!!!! ",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                Image.asset('lib/assets/love.jpg'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.comment_rounded),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 10,
            child: Column(
              children: [
                ListTile(
                  title: Text("LONDON"),
                  subtitle: Text("45 minutes ago"),
                  leading: CircleAvatar(
                      backgroundImage:
                          AssetImage("lib/assets/ahana krish.jpg")),
                  trailing: Icon(Icons.more_vert),
                ),
                ListTile(
                  title: Text(
                    "vacation at london ",
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                Image.asset('lib/assets/ahana.gif'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.comment_rounded),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }

  void alert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Manju'),
            content: Text('Manju is an actress in malayalam movie industry'),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back'))
            ],
          );
        });
  }

  //bldc object  ctx parameter
  void sigout(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        //ctx para builder fun
        return AlertDialog(
          title: Text('Logout'),
          content: Text('You want logout this App'),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Logouting(context);
                },
                child: Text('Yes')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('No'))
          ],
        );
      },
    );
  }

  // ignore: non_constant_identifier_names
  void Logouting(BuildContext ctx) async {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (ctx) => ScreenLogin()),
      (route) => false, // This line removes all previous routes from the stack
    );
    final shared = await SharedPreferences.getInstance();
    shared.setBool(save_key, false);
  }
}
