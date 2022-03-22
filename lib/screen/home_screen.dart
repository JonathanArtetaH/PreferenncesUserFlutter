import 'package:flutter/material.dart';
import 'package:preferences_app/shares/preferences.dart';

import '../widgets/widgets.dart'; 

class HomeScreen extends StatelessWidget {
  static const String routerName = 'Home';
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text(routerName),
      ),
      drawer:const SideMenu(),
      body: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Text('DarkMode: ${Preferences.isdarkmode}'),
         Text('Genero ${Preferences.isgenero}'),
         Text('Nombre Usuario ${Preferences.isname}'),
          ],
      ),
    );
  }
}