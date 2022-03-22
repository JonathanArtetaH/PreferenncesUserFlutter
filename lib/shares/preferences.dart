import 'package:shared_preferences/shared_preferences.dart';

class Preferences{

  static late SharedPreferences _prefs;
  static String _name = '';
  static bool _isdarktmode = false;
  static int _gender = 1;


  static Future init() async{
    _prefs = await SharedPreferences.getInstance();
  }
  //nombre
  static String  get isname {
    return _prefs.getString('name') ?? _name;
  }
  static set name(String name){
    _name = name;
    _prefs.setString('name', _name);
  }
  //modo dark
  static bool get isdarkmode {
      return _prefs.getBool('isdarkmode') ?? _isdarktmode;
    }
    static set darkmode(bool darkmode){
      _isdarktmode = darkmode;
      _prefs.setBool('isdarkmode', _isdarktmode);
    }

    //genero
     static int get isgenero {
      return _prefs.getInt('gender') ?? _gender;
    }
    static set genero(int genero){
      _gender = genero;
      _prefs.setInt('gender', _gender);
    }


}