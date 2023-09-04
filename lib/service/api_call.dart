import 'dart:convert';

import 'package:http/http.dart' as http;

class AllApiCall{

  void catFactData()async{
    String url = "https://api.genderize.io/?name=luc";
    var response = await http.get(Uri.parse(url));
    var data = jsonDecode(response.body);

    if(response.statusCode == 200){
      var l = data['count'];
      var f = data['name'];
      var g = data['gender'];
      var p = data['probability'];
      print(l);
      print(f);
      print(g);
      print(p);
    }
  }

}