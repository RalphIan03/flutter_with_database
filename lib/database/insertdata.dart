import 'dart:convert';

import 'package:http/http.dart' as http;


Future <String> inserttoBatabase(String uname, pass, name) async{
  try{
    String urls = "https://sampledatabaseapi.000webhostapp.com/insert.php";
    var res = await http.post(Uri.parse(urls), headers: {"Accept":"application/json"},
        body: {
          "username": uname,
          "pass": pass,
          "name": name
        }
    );
    var response = json.decode(res.body);
    print(response);
    return response;

  }catch (e){
    return e.toString();
  }



}