
import 'package:flutter/material.dart';
import 'package:flutteract1/dahsboard.dart';

class sample extends StatefulWidget {
  const sample({Key? key}) : super(key: key);


  @override
  State<sample> createState() => _sampleState();
}

class _sampleState extends State<sample> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(controller: _controller,readOnly: true,
              obscureText: true,
              textAlign: TextAlign.center ,style: TextStyle(fontSize: 40, color: Colors.white),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  const number = "1";
                  final input = _controller.text + number;
                  _controller.value = _controller.value.copyWith(text: input, selection: TextSelection.collapsed(offset: input.length));
                }, child: Text("1", style: TextStyle(fontSize: 40),),
                  style: ElevatedButton.styleFrom(shape: CircleBorder(), padding: EdgeInsets.all(25),primary: Colors.black, side: BorderSide(color: Colors.red, width: 3)),),
                SizedBox(width: 30,),

                ElevatedButton(onPressed: (){
                  const number = "2";
                  final input = _controller.text + number;
                  _controller.value = _controller.value.copyWith(text: input, selection: TextSelection.collapsed(offset: input.length));

                }, child: Text("2", style: TextStyle(fontSize: 40),),
                  style: ElevatedButton.styleFrom(shape: CircleBorder(), padding: EdgeInsets.all(25),primary: Colors.black, side: BorderSide(color: Colors.red, width: 3)),),
                SizedBox(width: 30,),

                ElevatedButton(onPressed: (){
                  const number = "3";
                  final input = _controller.text + number;
                  _controller.value = _controller.value.copyWith(text: input, selection: TextSelection.collapsed(offset: input.length));

                }, child: Text("3", style: TextStyle(fontSize: 40),),
                  style: ElevatedButton.styleFrom(shape: CircleBorder(), padding: EdgeInsets.all(25),primary: Colors.black, side: BorderSide(color: Colors.red, width: 3)),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  const number = "4";
                  final input = _controller.text + number;
                  _controller.value = _controller.value.copyWith(text: input, selection: TextSelection.collapsed(offset: input.length));

                }, child: Text("4", style: TextStyle(fontSize: 40),),
                  style: ElevatedButton.styleFrom(shape: CircleBorder(), padding: EdgeInsets.all(25),primary: Colors.black, side: BorderSide(color: Colors.red, width: 3)),),
                SizedBox(width: 30,),

                ElevatedButton(onPressed: (){
                  const number = "5";
                  final input = _controller.text + number;
                  _controller.value = _controller.value.copyWith(text: input, selection: TextSelection.collapsed(offset: input.length));

                }, child: Text("5", style: TextStyle(fontSize: 40),),
                  style: ElevatedButton.styleFrom(shape: CircleBorder(), padding: EdgeInsets.all(25),primary: Colors.black, side: BorderSide(color: Colors.red, width: 3)),),
                SizedBox(width: 30,),

                ElevatedButton(onPressed: (){
                  const number = "6";
                  final input = _controller.text + number;
                  _controller.value = _controller.value.copyWith(text: input, selection: TextSelection.collapsed(offset: input.length));

                }, child: Text("6", style: TextStyle(fontSize: 40),),
                  style: ElevatedButton.styleFrom(shape: CircleBorder(), padding: EdgeInsets.all(25),primary: Colors.black, side: BorderSide(color: Colors.red, width: 3)),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ElevatedButton(onPressed: (){
                  const number = "7";
                  final input = _controller.text + number;
                  _controller.value = _controller.value.copyWith(text: input, selection: TextSelection.collapsed(offset: input.length));

                }, child: Text("7", style: TextStyle(fontSize: 40),),
                  style: ElevatedButton.styleFrom(shape: CircleBorder(), padding: EdgeInsets.all(25),primary: Colors.black, side: BorderSide(color: Colors.red, width: 3)),),
                SizedBox(width: 30,),

                ElevatedButton(onPressed: (){
                  const number = "8";
                  final input = _controller.text + number;
                  _controller.value = _controller.value.copyWith(text: input, selection: TextSelection.collapsed(offset: input.length));

                }, child: Text("8", style: TextStyle(fontSize: 40),),
                  style: ElevatedButton.styleFrom(shape: CircleBorder(), padding: EdgeInsets.all(25),primary: Colors.black, side: BorderSide(color: Colors.red, width: 3)),),
                SizedBox(width: 30,),

                ElevatedButton(onPressed: (){
                  const number = "9";
                  final input = _controller.text + number;
                  _controller.value = _controller.value.copyWith(text: input, selection: TextSelection.collapsed(offset: input.length));

                }, child: Text("9", style: TextStyle(fontSize: 40),),
                  style: ElevatedButton.styleFrom(shape: CircleBorder(), padding: EdgeInsets.all(25),primary: Colors.black, side: BorderSide(color: Colors.red, width: 3)),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                ElevatedButton(onPressed: (){
                  _controller.clear();
                }, child: Icon(Icons.backspace),
                  style: ElevatedButton.styleFrom(shape: CircleBorder(), padding: EdgeInsets.all(25),primary: Colors.black, side: BorderSide(color: Colors.red, width: 3)),),
                SizedBox(width: 30,),
                ElevatedButton(onPressed: (){
                  const number = "0";
                  final input = _controller.text + number;
                  _controller.value = _controller.value.copyWith(text: input, selection: TextSelection.collapsed(offset: input.length));
                }, child: Text("0", style: TextStyle(fontSize: 40),),
                  style: ElevatedButton.styleFrom(shape: CircleBorder(), padding: EdgeInsets.all(25),primary: Colors.black, side: BorderSide(color: Colors.red, width: 3)),),
                SizedBox(width: 30,),

                ElevatedButton(onPressed: (){
                  if(_controller.text == "45456"){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const home()));
                    _controller.clear();
                  }else if (_controller.text != "45456"){
                    _controller.clear();

                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("Incorrect Passcode"),
                          content: const Text("Passcode Inputed is Incorrect, Try Again!"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                  }

                }, child: Text("OK", style: TextStyle(fontSize: 25),),
                  style: ElevatedButton.styleFrom(shape: CircleBorder(), padding: EdgeInsets.all(25),primary: Colors.black, side: BorderSide(color: Colors.red, width: 3)),),

                ],
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,

      floatingActionButton: Container(
        height: 50,
        width: 50,
        child: FloatingActionButton(
          onPressed: (){
            Navigator.pop(context);
          },
          backgroundColor: Colors.red,
          child: Icon(Icons.arrow_back),
        ),
      ),

    );
  }
}
