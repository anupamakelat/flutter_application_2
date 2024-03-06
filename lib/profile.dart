import 'package:flutter/material.dart';

class Screenprofile extends StatelessWidget {
  const Screenprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('My Profile'),
       ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
         const CircleAvatar(
           backgroundImage: AssetImage('lib/assets/anu.jpg'),
           maxRadius: 120,
         ),
         ListTile(
           onTap: (){},
           leading: const Icon(Icons.person),
           title: const Text('Name',style: TextStyle(fontSize: 15,color: Colors.black54),),
           subtitle: const Text('Anupama .k',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic, fontWeight: FontWeight.w700,color: Colors.black),),
 trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.edit)),
         ), ListTile(
           onTap: (){},
           leading: const Icon(Icons.mail),
           title: const Text('Email',style: TextStyle(fontSize: 15,color: Colors.black54),),
           subtitle: const Text('anupamakelat73@gmail.com',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black),),
           trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.edit)),
         ), ListTile(
           onTap: (){},
 leading: const Icon(Icons.phone),
           title: const Text('Phone',style: TextStyle(fontSize: 15,color: Colors.black54),),
           subtitle: const Text('+91 9995103906',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black),),
           trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.edit)),
         ),
          
       ],
     ) ,
    
         
 
);
}
}