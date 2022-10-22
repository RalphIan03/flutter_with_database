
import 'package:http/http.dart' as http;
import 'dart:convert';
Future <String> getData(String? username, String? password) async{
  try{
    String urls = "https://sampledatabaseapi.000webhostapp.com/get.php";
    var res = await http.get(Uri.parse(urls), headers: {"Accept":"application/json"});
    var data = await jsonDecode(res.body );
    bool checker = true;
    bool accountfound = false;
    int itiration = 0;
    int datalength = data.length;

    print(data);

    do{
      if(itiration >= datalength){
        print(' nothing found');
        checker = false;
      }else if (data[itiration]["username"] == username && data[itiration]["password"] == password) {
        print('found');
        accountfound = true;
        checker = false;
      }
      itiration++;
    }while(checker);

    if(accountfound){
      return 'found';
    }else{
      return 'notfound';
    }

  }catch (e){
    return e.toString();
  }


  //
  // for (var i = 0; i<data.length; i++){
  //
  //   if (data[i]["username"] == username && data[i]["password"] == password){
  //     return true;
  //   }
  // }

}