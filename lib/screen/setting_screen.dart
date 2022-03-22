import 'package:flutter/material.dart';
import 'package:preferences_app/provider/theme_provider.dart';
import 'package:preferences_app/shares/preferences.dart';
import 'package:provider/provider.dart';

import '../widgets/widgets.dart';

class SettingScreen extends StatefulWidget {
  static const String routerName = 'Setting';

  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  // bool isDarkmode = false;
  // int gender = 1;
  // String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(SettingScreen.routerName),
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ajustes',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
              ),
              const Divider(),
              SwitchListTile.adaptive(
                value: Preferences.isdarkmode,
                title: const Text('Modo'),
                onChanged: (value) {
                  setState(() {
                    Preferences.darkmode = value;
                    final themProvider = Provider.of<ThemeProvider>(context, listen:  false);
                    value ? themProvider.setDarkMode() : themProvider.setLigthMode();
                  });
                },
              ),
              const Divider(),
              RadioListTile<int>(
                  value: 1,
                  groupValue: Preferences.isgenero,
                  title: const Text('Feminino'),
                  onChanged: (value) {
                    setState(() {
                     Preferences.genero= value ?? 1;
                    });
                  }),
              const Divider(),
              RadioListTile<int>(
                  value: 2,
                  groupValue: Preferences.isgenero,
                  title: const Text('Masculino'),
                  onChanged: (value) {
                    Preferences.genero = value ?? 2;
                    setState(() {});
                  }),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(30),
                child: TextFormField( 
                  initialValue:  Preferences.isname,
                  onChanged: (value){
                    
                    Preferences.name = value;
                    setState(() { });
                  },
                  decoration: const InputDecoration(
                      labelText: 'Nombre Usuario',
                      helperText: 'Nombre del Usuario'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
