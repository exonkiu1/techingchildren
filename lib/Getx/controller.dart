import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:techingchildren/var/map_alefba.dart';
class controller extends GetxController {
  RxBool stop = false.obs;
  RxList<RxInt> mounts = List.generate(alefba.length, (index)=>0.obs).obs;

  void save_time(String char_alefba)async {
  stop.value = false;
  final SharedPreferences prefs = await SharedPreferences.getInstance();
    print(stop.value);
    for (var i = 0; i < 80; i++) {
   if (stop.value!=true) {
    await Future.delayed(Duration(seconds: 2),()=>prefs.setInt('${char_alefba}', (prefs.getInt('${char_alefba}')??0 )+2));

    } else{
      print('${char_alefba} = ${prefs.getInt('${char_alefba}')??0}');
    }
  }

}
    void getmounts() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    for (var i = 0; i < alefba.length; i++) {
      mounts[i].value = prefs.getInt(alefba.keys.elementAt(i))??0;
    }   
}
}