import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

class Bingo extends StatefulWidget {
  const Bingo({Key? key}) : super(key: key);

  @override
  State<Bingo> createState() => _BingoState();
}

class _BingoState extends State<Bingo> {

  bool hidder = false;
  void hidders(){
    setState(() {
      hidder = !hidder;
    });
  }

  List<List<Color?>> _colorarr = [  [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],
                                    [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],
                                    [Colors.grey[200],Colors.grey[200],Colors.red[100],Colors.grey[200],Colors.grey[200]],
                                    [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],
                                    [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],];

  List<List<Color?>> _colorarr2 = [ [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],
                                    [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],
                                    [Colors.grey[200],Colors.grey[200],Colors.red[100],Colors.grey[200],Colors.grey[200]],
                                    [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],
                                    [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],];

  List<List<Color?>> _colorarr3 = [ [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],
                                    [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],
                                    [Colors.grey[200],Colors.grey[200],Colors.red[100],Colors.grey[200],Colors.grey[200]],
                                    [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],
                                    [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],];

  void colorchange(){

    _colorarr = [  [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],
      [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],
      [Colors.grey[200],Colors.grey[200],Colors.red[100],Colors.grey[200],Colors.grey[200]],
      [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],
      [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],];

    _colorarr2 = [ [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],
      [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],
      [Colors.grey[200],Colors.grey[200],Colors.red[100],Colors.grey[200],Colors.grey[200]],
      [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],
      [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],];

    _colorarr3 = [ [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],
      [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],
      [Colors.grey[200],Colors.grey[200],Colors.red[100],Colors.grey[200],Colors.grey[200]],
      [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],
      [Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200],Colors.grey[200]],];

    win = [ ['x','x','x','x','x'],
      ['x','x','x','x','x'],
      ['x','x','y','x','x'],
      ['x','x','x','x','x'],
      ['x','x','x','x','x'],];

    win2 = [['x','x','x','x','x'],
      ['x','x','x','x','x'],
      ['x','x','y','x','x'],
      ['x','x','x','x','x'],
      ['x','x','x','x','x'],];

    win3 = [['x','x','x','x','x'],
      ['x','x','x','x','x'],
      ['x','x','y','x','x'],
      ['x','x','x','x','x'],
      ['x','x','x','x','x'],];

  }


  static const double _hieght = 20;
 var items = [
   'B',
   'I',
   'N',
   'G',
   'O',
 ];
 String dropdown = 'B';

 final TextEditingController _text = TextEditingController();

 var num = [  ['0', '0', '0','0','0'],
              ['0', '0', '0','0','0'],
              ['0', '0', '0','0','0'],
              ['0', '0', '0','0','0'],
              ['0', '0', '0','0','0']];

 var num2 = [ ['0', '0', '0','0','0'],
              ['0', '0', '0','0','0'],
              ['0', '0', '0','0','0'],
              ['0', '0', '0','0','0'],
              ['0', '0', '0','0','0']];

 var num3 = [ ['0', '0', '0','0','0'],
              ['0', '0', '0','0','0'],
              ['0', '0', '0','0','0'],
              ['0', '0', '0','0','0'],
              ['0', '0', '0','0','0']];

  var win = [ ['x','x','x','x','x'],
              ['x','x','x','x','x'],
              ['x','x','y','x','x'],
              ['x','x','x','x','x'],
              ['x','x','x','x','x'],];

  var win2 = [['x','x','x','x','x'],
              ['x','x','x','x','x'],
              ['x','x','y','x','x'],
              ['x','x','x','x','x'],
              ['x','x','x','x','x'],];

  var win3 = [['x','x','x','x','x'],
              ['x','x','x','x','x'],
              ['x','x','y','x','x'],
              ['x','x','x','x','x'],
              ['x','x','x','x','x'],];

  @override
  void initState(){
    WidgetsBinding.instance.addPostFrameCallback((_) {

      var minB = 1;
      var arrB = [0,0,0,0,0];
      for (var i = 0; i<5; i++){
        Random ran = new Random();
        int randomnum = minB + ran.nextInt(15);
        arrB [i] = randomnum;
        bool repeat = true;

        do{
            if (arrB[0] != randomnum && arrB[1] != randomnum && arrB[2] != randomnum && arrB[3] != randomnum && arrB[4] != randomnum){
              setState(() {
                num [i][0] = randomnum.toString();
              });
              repeat = false;
              arrB[i] = randomnum;
            }else if (arrB[0] == randomnum || arrB[1] == randomnum || arrB[2] == randomnum || arrB[3] == randomnum || arrB[4] == randomnum){
              Random ran = new Random();
              randomnum = minB + ran.nextInt(15);
            }

        }while(repeat);

      }
      var minI = 16;
      var arrI = [0,0,0,0,0];
      for (var i = 0; i<5; i++){
        Random ran = new Random();
        int randomnum = minI + ran.nextInt(15);
        bool repeat = true;
        do{
          if (arrI[0] != randomnum && arrI[1] != randomnum && arrI[2] != randomnum && arrI[3] != randomnum && arrI[4] != randomnum){
            setState(() {
              num [i][1] = randomnum.toString();
            });
            repeat = false;
            arrI[i] = randomnum;
          }else if (arrI[0] == randomnum || arrI[1] == randomnum || arrI[2] == randomnum || arrI[3] == randomnum || arrI[4] == randomnum){
            Random ran = new Random();
            randomnum = minI + ran.nextInt(15);
          }
        }while(repeat);


      }
      var minN = 31;
      var arrN = [0,0,0,0,0];
      for (var i = 0; i<5; i++){
        Random ran = new Random();
        int randomnum = minN + ran.nextInt(15);
        bool repeat = true;
        do{
          if (arrN[0] != randomnum && arrN[1] != randomnum && arrN[2] != randomnum && arrN[3] != randomnum && arrN[4] != randomnum){
            setState(() {
              num [i][2] = randomnum.toString();
            });
            repeat = false;
            arrN[i] = randomnum;
          }else if (arrN[0] == randomnum || arrN[1] == randomnum || arrN[2] == randomnum || arrN[3] == randomnum || arrN[4] == randomnum){
            Random ran = new Random();
            randomnum = minN + ran.nextInt(15);
          }
        }while(repeat);

      }
      var minG = 46;
      var arrG = [0,0,0,0,0];
      for (var i = 0; i<5; i++){
        Random ran = new Random();
        int randomnum = minG + ran.nextInt(15);
        bool repeat = true;
        do{
          if (arrG[0] != randomnum && arrG[1] != randomnum && arrG[2] != randomnum && arrG[3] != randomnum && arrG[4] != randomnum){
            setState(() {
              num [i][3] = randomnum.toString();
            });
            repeat = false;
            arrG[i] = randomnum;
          }else if (arrG[0] == randomnum || arrG[1] == randomnum || arrG[2] == randomnum || arrG[3] == randomnum || arrG[4] == randomnum){
            Random ran = new Random();
            randomnum = minG + ran.nextInt(15);
          }
        }while(repeat);
      }
      var minO = 61;
      var arrO = [0,0,0,0,0];
      for (var i = 0; i<5; i++){
        Random ran = new Random();
        int randomnum = minO + ran.nextInt(15);
        bool repeat = true;
        do{
          if (arrO[0] != randomnum && arrO[1] != randomnum && arrO[2] != randomnum && arrO[3] != randomnum && arrO[4] != randomnum){
            setState(() {
              num [i][4] = randomnum.toString();
            });
            repeat = false;
            arrO[i] = randomnum;
          }else if (arrO[0] == randomnum || arrO[1] == randomnum || arrO[2] == randomnum || arrO[3] == randomnum || arrO[4] == randomnum){
            Random ran = new Random();
            randomnum = minO + ran.nextInt(15);
          }
        }while(repeat);
      }

      //card 2

      var arrB2 = [0,0,0,0,0];
      for (var i = 0; i<5; i++){
        Random ran = new Random();
        int randomnum = minB + ran.nextInt(15);
        arrB2 [i] = randomnum;
        bool repeat = true;

        do{
          if (arrB2[0] != randomnum && arrB2[1] != randomnum && arrB2[2] != randomnum && arrB2[3] != randomnum && arrB2[4] != randomnum){
            setState(() {
              num2 [i][0] = randomnum.toString();
            });
            repeat = false;
            arrB2[i] = randomnum;
          }else if (arrB2[0] == randomnum || arrB2[1] == randomnum || arrB2[2] == randomnum || arrB2[3] == randomnum || arrB2[4] == randomnum){
            Random ran = new Random();
            randomnum = minB + ran.nextInt(15);
          }

        }while(repeat);

      }
      // var minI = 16;
      var arrI2 = [0,0,0,0,0];
      for (var i = 0; i<5; i++){
        Random ran = new Random();
        int randomnum = minI + ran.nextInt(15);
        bool repeat = true;
        do{
          if (arrI2[0] != randomnum && arrI2[1] != randomnum && arrI2[2] != randomnum && arrI2[3] != randomnum && arrI2[4] != randomnum){
            setState(() {
              num2 [i][1] = randomnum.toString();
            });
            repeat = false;
            arrI2[i] = randomnum;
          }else if (arrI2[0] == randomnum || arrI2[1] == randomnum || arrI2[2] == randomnum || arrI2[3] == randomnum || arrI2[4] == randomnum){
            Random ran = new Random();
            randomnum = minI + ran.nextInt(15);
          }
        }while(repeat);
      }
      var arrN2 = [0,0,0,0,0];
      for (var i = 0; i<5; i++){
        Random ran = new Random();
        int randomnum = minN + ran.nextInt(15);
        bool repeat = true;
        do{
          if (arrN2[0] != randomnum && arrN2[1] != randomnum && arrN2[2] != randomnum && arrN2[3] != randomnum && arrN2[4] != randomnum){
            setState(() {
              num2 [i][2] = randomnum.toString();
            });
            repeat = false;
            arrN2[i] = randomnum;
          }else if (arrN2[0] == randomnum || arrN2[1] == randomnum || arrN2[2] == randomnum || arrN2[3] == randomnum || arrN2[4] == randomnum){
            Random ran = new Random();
            randomnum = minN + ran.nextInt(15);
          }
        }while(repeat);

      }
      // var minG = 46;
      var arrG2 = [0,0,0,0,0];
      for (var i = 0; i<5; i++){
        Random ran = new Random();
        int randomnum = minG + ran.nextInt(15);
        bool repeat = true;
        do{
          if (arrG2[0] != randomnum && arrG2[1] != randomnum && arrG2[2] != randomnum && arrG2[3] != randomnum && arrG2[4] != randomnum){
            setState(() {
              num2 [i][3] = randomnum.toString();
            });
            repeat = false;
            arrG2[i] = randomnum;
          }else if (arrG2[0] == randomnum || arrG2[1] == randomnum || arrG2[2] == randomnum || arrG2[3] == randomnum || arrG2[4] == randomnum){
            Random ran = new Random();
            randomnum = minG + ran.nextInt(15);
          }
        }while(repeat);
      }

      arrO = [0,0,0,0,0];
      for (var i = 0; i<5; i++){
        Random ran = new Random();
        int randomnum = minO + ran.nextInt(15);
        bool repeat = true;
        do{
          if (arrO[0] != randomnum && arrO[1] != randomnum && arrO[2] != randomnum && arrO[3] != randomnum && arrO[4] != randomnum){
            setState(() {
              num2 [i][4] = randomnum.toString();
            });
            repeat = false;
            arrO[i] = randomnum;
          }else if (arrO[0] == randomnum || arrO[1] == randomnum || arrO[2] == randomnum || arrO[3] == randomnum || arrO[4] == randomnum){
            Random ran = new Random();
            randomnum = minO + ran.nextInt(15);
          }
        }while(repeat);
      }

      //card3
      arrB2 = [0,0,0,0,0];
      for (var i = 0; i<5; i++){
        Random ran = new Random();
        int randomnum = minB + ran.nextInt(15);
        arrB2 [i] = randomnum;
        bool repeat = true;

        do{
          if (arrB2[0] != randomnum && arrB2[1] != randomnum && arrB2[2] != randomnum && arrB2[3] != randomnum && arrB2[4] != randomnum){
            setState(() {
              num3 [i][0] = randomnum.toString();
            });
            repeat = false;
            arrB2[i] = randomnum;
          }else if (arrB2[0] == randomnum || arrB2[1] == randomnum || arrB2[2] == randomnum || arrB2[3] == randomnum || arrB2[4] == randomnum){
            Random ran = new Random();
            randomnum = minB + ran.nextInt(15);
          }

        }while(repeat);

      }
      // var minI = 16;
      arrI2 = [0,0,0,0,0];
      for (var i = 0; i<5; i++){
        Random ran = new Random();
        int randomnum = minI + ran.nextInt(15);
        bool repeat = true;
        do{
          if (arrI2[0] != randomnum && arrI2[1] != randomnum && arrI2[2] != randomnum && arrI2[3] != randomnum && arrI2[4] != randomnum){
            setState(() {
              num3 [i][1] = randomnum.toString();
            });
            repeat = false;
            arrI2[i] = randomnum;
          }else if (arrI2[0] == randomnum || arrI2[1] == randomnum || arrI2[2] == randomnum || arrI2[3] == randomnum || arrI2[4] == randomnum){
            Random ran = new Random();
            randomnum = minI + ran.nextInt(15);
          }
        }while(repeat);
      }
      arrN2 = [0,0,0,0,0];
      for (var i = 0; i<5; i++){
        Random ran = new Random();
        int randomnum = minN + ran.nextInt(15);
        bool repeat = true;
        do{
          if (arrN2[0] != randomnum && arrN2[1] != randomnum && arrN2[2] != randomnum && arrN2[3] != randomnum && arrN2[4] != randomnum){
            setState(() {
              num3 [i][2] = randomnum.toString();
            });
            repeat = false;
            arrN2[i] = randomnum;
          }else if (arrN2[0] == randomnum || arrN2[1] == randomnum || arrN2[2] == randomnum || arrN2[3] == randomnum || arrN2[4] == randomnum){
            Random ran = new Random();
            randomnum = minN + ran.nextInt(15);
          }
        }while(repeat);

      }
      // var minG = 46;
      arrG2 = [0,0,0,0,0];
      for (var i = 0; i<5; i++){
        Random ran = new Random();
        int randomnum = minG + ran.nextInt(15);
        bool repeat = true;
        do{
          if (arrG2[0] != randomnum && arrG2[1] != randomnum && arrG2[2] != randomnum && arrG2[3] != randomnum && arrG2[4] != randomnum){
            setState(() {
              num3 [i][3] = randomnum.toString();
            });
            repeat = false;
            arrG2[i] = randomnum;
          }else if (arrG2[0] == randomnum || arrG2[1] == randomnum || arrG2[2] == randomnum || arrG2[3] == randomnum || arrG2[4] == randomnum){
            Random ran = new Random();
            randomnum = minG + ran.nextInt(15);
          }
        }while(repeat);
      }

      arrO = [0,0,0,0,0];
      for (var i = 0; i<5; i++){
        Random ran = new Random();
        int randomnum = minO + ran.nextInt(15);
        bool repeat = true;
        do{
          if (arrO[0] != randomnum && arrO[1] != randomnum && arrO[2] != randomnum && arrO[3] != randomnum && arrO[4] != randomnum){
            setState(() {
              num3 [i][4] = randomnum.toString();
            });
            repeat = false;
            arrO[i] = randomnum;
          }else if (arrO[0] == randomnum || arrO[1] == randomnum || arrO[2] == randomnum || arrO[3] == randomnum || arrO[4] == randomnum){
            Random ran = new Random();
            randomnum = minO + ran.nextInt(15);
          }
        }while(repeat);
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Let's Play Bingo"),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DropdownButton(
                    style: TextStyle(fontSize: 30, color: Colors.black),
                    value: dropdown,
                      items: items.map((String items) {
                    return DropdownMenuItem(value: items,child:  Text(items),);
                  }).toList(), onChanged: (String? newValue) {
                    setState(() {
                      dropdown = newValue!;
                    });
                  } ),
                SizedBox(width: 20,),
                ElevatedButton(onPressed: (){

                  switch(dropdown){
                    case "B": {
                      for (var i = 0; i<5; i++){
                        if (num[i][0] == _text.text){
                          setState(() {
                            _colorarr[i][0] = Colors.red[100];
                            win[i][0] = 'y';
                          });
                        }
                      }

                      for (var i = 0; i<5; i++){
                        if (num2[i][0] == _text.text){
                          setState(() {
                            _colorarr2[i][0] = Colors.red[100];
                            win2[i][0] = 'y';
                          });
                        }
                      }

                      for (var i = 0; i<5; i++){
                        if (num3[i][0] == _text.text){
                          setState(() {
                            _colorarr3[i][0] = Colors.red[100];
                            win3[i][0] = 'y';
                          });
                        }
                      }
                      //card2
                        _text.clear();
                    }break;
                    case "I": {

                      for (var i = 0; i<5; i++){
                        if (num[i][1] == _text.text){
                          setState(() {
                            _colorarr[i][1] = Colors.red[100];
                            win[i][1] = 'y';
                          });
                        }
                      }
                      for (var i = 0; i<5; i++){
                        if (num2[i][1] == _text.text){
                          setState(() {
                            _colorarr2[i][1] = Colors.red[100];
                            win2[i][1] = 'y';
                          });
                        }
                      }

                      for (var i = 0; i<5; i++){
                        if (num3[i][1] == _text.text){
                          setState(() {
                            _colorarr3[i][1] = Colors.red[100];
                            win3[i][1] = 'y';
                          });
                        }
                      }
                        _text.clear();
                    }break;

                    case "N": {

                      for (var i = 0; i<5; i++){
                          if (num[i][2] == _text.text){
                            setState(() {
                              _colorarr[i][2] = Colors.red[100];
                              win[i][2] = 'y';
                            });
                          }
                      }
                      for (var i = 0; i<5; i++){
                        if (num2[i][2] == _text.text){
                          setState(() {
                            _colorarr2[i][2] = Colors.red[100];
                            win2[i][2] = 'y';
                          });
                        }
                      }
                      for (var i = 0; i<5; i++){
                        if (num3[i][2] == _text.text){
                          setState(() {
                            _colorarr3[i][2] = Colors.red[100];
                            win3[i][2] = 'y';
                          });
                        }
                      }
                        _text.clear();
                    }break;

                    case "G": {

                      for (var i = 0; i<5; i++){
                        if (num[i][3] == _text.text){
                          setState(() {
                            _colorarr[i][3] = Colors.red[100];
                            win[i][3] = 'y';
                          });
                        }
                      }
                      for (var i = 0; i<5; i++){
                        if (num2[i][3] == _text.text){
                          setState(() {
                            _colorarr2[i][3] = Colors.red[100];
                            win2[i][3] = 'y';
                          });
                        }
                      }
                      for (var i = 0; i<5; i++){
                        if (num3[i][3] == _text.text){
                          setState(() {
                            _colorarr3[i][3] = Colors.red[100];
                            win3[i][3] = 'y';
                          });
                        }
                      }
                      _text.clear();
                    }break;
                    case "O": {
                      for (var i = 0; i<5; i++){
                        if (num[i][4] == _text.text){
                          setState(() {
                            _colorarr[i][4] = Colors.red[100];
                            win[i][4] = 'y';
                          });
                        }
                      }
                      for (var i = 0; i<5; i++){
                        if (num2[i][4] == _text.text){
                          setState(() {
                            _colorarr2[i][4] = Colors.red[100];
                            win2[i][4] = 'y';
                          });
                        }
                      }
                      for (var i = 0; i<5; i++){
                        if (num3[i][4] == _text.text){
                          setState(() {
                            _colorarr3[i][4] = Colors.red[100];
                            win3[i][4] = 'y';
                          });
                        }
                      }
                      _text.clear();
                    }break;
                  }

                  //wincase
                  //hori
                  if (win[0][0] == 'y' && win[1][0] == 'y' && win[2][0] == 'y' && win[3][0] == 'y' && win[4][0] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Chelly Gador"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win[0][1] == 'y' && win[1][1] == 'y' && win[2][1] == 'y' && win[3][1] == 'y' && win[4][1] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Chelly Gador"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win[0][2] == 'y' && win[1][2] == 'y' && win[2][2] == 'y' && win[3][2] == 'y' && win[4][2] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Chelly Gador"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win[0][3] == 'y' && win[1][3] == 'y' && win[2][3] == 'y' && win[3][3] == 'y' && win[4][3] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Chelly Gador"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win[0][4] == 'y' && win[1][4] == 'y' && win[2][4] == 'y' && win[3][4] == 'y' && win[4][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Chelly Gador"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }

                  //verti
                  else if (win[0][0] == 'y' && win[0][1] == 'y' && win[0][2] == 'y' && win[0][3] == 'y' && win[0][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Chelly Gador"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win[1][0] == 'y' && win[1][1] == 'y' && win[1][2] == 'y' && win[1][3] == 'y' && win[1][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Chelly Gador"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  } else if (win[2][0] == 'y' && win[2][1] == 'y' && win[2][2] == 'y' && win[2][3] == 'y' && win[2][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Chelly Gador"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win[3][0] == 'y' && win[3][1] == 'y' && win[3][2] == 'y' && win[3][3] == 'y' && win[3][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Chelly Gador"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win[4][0] == 'y' && win[4][1] == 'y' && win[4][2] == 'y' && win[4][3] == 'y' && win[4][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Chelly Gador"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }
                  //slant
                  else if (win[0][0] == 'y' && win[1][1] == 'y' && win[2][2] == 'y' && win[3][3] == 'y' && win[4][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Chelly Gador"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win[4][0] == 'y' && win[3][1] == 'y' && win[2][2] == 'y' && win[1][3] == 'y' && win[0][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Chelly Gador"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }

                  //card2
                  else if (win2[0][0] == 'y' && win2[1][0] == 'y' && win2[2][0] == 'y' && win2[3][0] == 'y' && win2[4][0] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Ken Castro"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win2[0][1] == 'y' && win2[1][1] == 'y' && win2[2][1] == 'y' && win2[3][1] == 'y' && win2[4][1] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Ken Castro"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win2[0][2] == 'y' && win2[1][2] == 'y' && win2[2][2] == 'y' && win2[3][2] == 'y' && win2[4][2] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Ken Castro"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win2[0][3] == 'y' && win2[1][3] == 'y' && win2[2][3] == 'y' && win2[3][3] == 'y' && win2[4][3] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Ken Castro"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win2[0][4] == 'y' && win2[1][4] == 'y' && win2[2][4] == 'y' && win2[3][4] == 'y' && win2[4][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Ken Castro"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }

                  //verti
                  else if (win2[0][0] == 'y' && win2[0][1] == 'y' && win2[0][2] == 'y' && win2[0][3] == 'y' && win2[0][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Ken Castro"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win2[1][0] == 'y' && win2[1][1] == 'y' && win2[1][2] == 'y' && win2[1][3] == 'y' && win2[1][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Ken Castro"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  } else if (win2[2][0] == 'y' && win2[2][1] == 'y' && win2[2][2] == 'y' && win2[2][3] == 'y' && win2[2][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Ken Castro"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win2[3][0] == 'y' && win2[3][1] == 'y' && win2[3][2] == 'y' && win2[3][3] == 'y' && win2[3][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Ken Castro"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win2[4][0] == 'y' && win2[4][1] == 'y' && win2[4][2] == 'y' && win2[4][3] == 'y' && win2[4][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Ken Castro"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }
                  //slant
                  else if (win2[0][0] == 'y' && win2[1][1] == 'y' && win2[2][2] == 'y' && win2[3][3] == 'y' && win2[4][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Ken Castro"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win2[4][0] == 'y' && win2[3][1] == 'y' && win2[2][2] == 'y' && win2[1][3] == 'y' && win2[0][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Ken Castro"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }

                  //card3
                  else if (win3[0][0] == 'y' && win3[1][0] == 'y' && win3[2][0] == 'y' && win3[3][0] == 'y' && win3[4][0] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Jolly Niervo"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win3[0][1] == 'y' && win3[1][1] == 'y' && win3[2][1] == 'y' && win3[3][1] == 'y' && win3[4][1] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Jolly Niervo"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win3[0][2] == 'y' && win3[1][2] == 'y' && win3[2][2] == 'y' && win3[3][2] == 'y' && win3[4][2] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Jolly Niervo"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win3[0][3] == 'y' && win3[1][3] == 'y' && win3[2][3] == 'y' && win3[3][3] == 'y' && win3[4][3] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Jolly Niervo"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();

                  }else if (win3[0][4] == 'y' && win3[1][4] == 'y' && win3[2][4] == 'y' && win3[3][4] == 'y' && win3[4][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Jolly Niervo"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }

                  //verti
                  else if (win3[0][0] == 'y' && win3[0][1] == 'y' && win3[0][2] == 'y' && win3[0][3] == 'y' && win3[0][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Jolly Niervo"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win3[1][0] == 'y' && win3[1][1] == 'y' && win3[1][2] == 'y' && win3[1][3] == 'y' && win3[1][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Jolly Niervo"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  } else if (win3[2][0] == 'y' && win3[2][1] == 'y' && win3[2][2] == 'y' && win3[2][3] == 'y' && win3[2][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Jolly Niervo"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win3[3][0] == 'y' && win3[3][1] == 'y' && win3[3][2] == 'y' && win3[3][3] == 'y' && win3[3][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Jolly Niervo"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win3[4][0] == 'y' && win3[4][1] == 'y' && win3[4][2] == 'y' && win3[4][3] == 'y' && win3[4][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Jolly Niervo"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }
                  //slant
                  else if (win3[0][0] == 'y' && win3[1][1] == 'y' && win3[2][2] == 'y' && win3[3][3] == 'y' && win3[4][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Jolly Niervo"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }else if (win3[4][0] == 'y' && win3[3][1] == 'y' && win3[2][2] == 'y' && win3[1][3] == 'y' && win3[0][4] == 'y'){
                    showDialog <String>(context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("BINGO!!!!"),
                          content: const Text("Winner: Jolly Niervo"),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context), child: Text("OK"))
                          ],
                        ));
                    hidders();
                  }
                  else{
                    // print(win[0][0]+ win[1][1] +win[2][2]+win[3][3]+win[4][4] );
                    print("no");
                  }
                }, child: Text("Enter")),
                  SizedBox(width: 10,),
                  Visibility(
                    visible: hidder,
                    child: ElevatedButton(
                      onPressed: (){
                        initState();
                        colorchange();
                        hidders();
                      },
                      child: Text('Restart'),
                      style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                    ),
                  ),
                ],
              ),

              Container(
                  margin: EdgeInsets.symmetric(horizontal: 150,),
                  child: TextField(controller: _text, textAlign: TextAlign.center,style: TextStyle(fontSize: 30),)),

              SizedBox(height: 30,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.all(Radius.circular(20)), boxShadow: [
                  BoxShadow( color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 7,
                      offset: Offset(0, 3))
                ]),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('asset/chili2.jpg'),
                      radius: 20,
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Chelly Mae Gador", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration( color: Colors.grey[200], borderRadius: BorderRadius.circular(10), boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 4,
                  blurRadius: 7,
                  offset: Offset(0,3),
                  )
                ]),
                child: Table(
                  border: TableBorder.all(color: Colors.black),
                  children: [
                    TableRow(children: [
                      Column(children: [Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text("B", style: TextStyle(fontSize: 20),),
                      )]),
                      Column(children: [Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text("I", style: TextStyle(fontSize: 20),),
                      )]),
                      Column(children: [Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text("N", style: TextStyle(fontSize: 20),),
                      )]),
                      Column(children: [Padding(
                        padding: const EdgeInsets.symmetric(vertical:20),
                        child: Text("G", style: TextStyle(fontSize: 20),),
                      )]),
                      Column(children: [Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text("O", style: TextStyle(fontSize: 20),),
                      )]),
                    ]),
                    TableRow(children: [
                      Container(
                        color: _colorarr[0][0],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[0][0]),
                        )]),
                      ),
                      Container(
                        color: _colorarr[0][1],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[0][1]),
                        )]),
                      ),
                      Container(
                        color: _colorarr[0][2],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[0][2]),
                        )]),
                      ),
                      Container(
                        color: _colorarr[0][3],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[0][3]),
                        )]),
                      ),
                      Container(
                        color: _colorarr[0][4],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical:_hieght),
                          child: Text(num[0][4]),
                        )]),
                      ),
                    ],),
                    TableRow(children: [
                      Container(
                        color: _colorarr[1][0],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[1][0]),
                        )]),
                      ),
                      Container(
                        color: _colorarr[1][1],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[1][1]),
                        )]),
                      ),
                      Container(
                        color: _colorarr[1][2],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[1][2]),
                        )]),
                      ),
                      Container(
                        color: _colorarr[1][3],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[1][3]),
                        )]),
                      ),
                      Container(
                        color: _colorarr[1][4],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[1][4]),
                        )]),
                      ),
                    ],),
                    TableRow(children: [
                      Container(
                        color: _colorarr[2][0],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[2][0]),
                        )]),
                      ),
                      Container(
                        color: _colorarr[2][1],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[2][1]),
                        )]),
                      ),
                      GestureDetector(
                        onDoubleTap: (){
                          setState(() {
                            _colorarr[2][2] = Colors.red[100];
                          });
                        },
                        child: Container(
                          color: _colorarr[2][2],
                          child: Column(children: [Padding(
                            padding: const EdgeInsets.symmetric(vertical: _hieght),
                            child: Text("Free"),
                          )]),
                          
                        ),
                      ),
                      Container(
                        color: _colorarr[2][3],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[2][3]),
                        )]),
                      ),
                      Container(
                        color: _colorarr[2][4],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[2][4]),
                        )]),
                      ),
                    ],),
                    TableRow(children: [
                      Container(
                        color: _colorarr[3][0],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[3][0]),
                        )]),
                      ),
                      Container(
                        color: _colorarr[3][1],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[3][1] ),
                        )]),
                      ),
                      Container(
                        color: _colorarr[3][2],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[3][2]),
                        )]),
                      ),
                      Container(
                        color: _colorarr[3][3],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[3][3]),
                        )]),
                      ),
                      Container(
                        color: _colorarr[3][4],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[3][4]),
                        )]),
                      ),
                    ],),
                    TableRow(children: [
                      Container(
                        color: _colorarr[4][0],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[4][0]),
                        )]),
                      ),
                      Container(
                        color: _colorarr[4][1],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[4][1]),
                        )]),
                      ),
                      Container(
                        color: _colorarr[4][2],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[4][2] ),
                        )]),
                      ),
                      Container(
                        color: _colorarr[4][3],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[4][3]),
                        )]),
                      ),
                      Container(
                        color: _colorarr[4][4],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num[4][4]),
                        )]),
                      ),
                    ],),
                  ],
                ),
              ),

              //card2
              SizedBox(height: 50,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(20)), boxShadow: [
                  BoxShadow( color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 7,
                      offset: Offset(0, 3))
                ]),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('asset/kin.jpg'),
                      radius: 20,
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ken Castro", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration( color: Colors.grey[200], borderRadius: BorderRadius.circular(10), boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 7,
                    offset: Offset(0,3),
                  )
                ]),
                child: Table(
                  border: TableBorder.all(color: Colors.black),
                  children: [
                    TableRow(children: [
                      Column(children: [Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text("B", style: TextStyle(fontSize: 20),),
                      )]),
                      Column(children: [Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text("I", style: TextStyle(fontSize: 20),),
                      )]),
                      Column(children: [Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text("N", style: TextStyle(fontSize: 20),),
                      )]),
                      Column(children: [Padding(
                        padding: const EdgeInsets.symmetric(vertical:20),
                        child: Text("G", style: TextStyle(fontSize: 20),),
                      )]),
                      Column(children: [Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text("O", style: TextStyle(fontSize: 20),),
                      )]),
                    ]),
                    TableRow(children: [
                      Container(
                        color: _colorarr2[0][0],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[0][0]),
                        )]),
                      ),
                      Container(
                        color: _colorarr2[0][1],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[0][1]),
                        )]),
                      ),
                      Container(
                        color: _colorarr2[0][2],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[0][2]),
                        )]),
                      ),
                      Container(
                        color: _colorarr2[0][3],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[0][3]),
                        )]),
                      ),
                      Container(
                        color: _colorarr2[0][4],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical:_hieght),
                          child: Text(num2[0][4]),
                        )]),
                      ),
                    ],),
                    TableRow(children: [
                      Container(
                        color: _colorarr2[1][0],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[1][0]),
                        )]),
                      ),
                      Container(
                        color: _colorarr2[1][1],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[1][1]),
                        )]),
                      ),
                      Container(
                        color: _colorarr2[1][2],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[1][2]),
                        )]),
                      ),
                      Container(
                        color: _colorarr2[1][3],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[1][3]),
                        )]),
                      ),
                      Container(
                        color: _colorarr2[1][4],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[1][4]),
                        )]),
                      ),
                    ],),
                    TableRow(children: [
                      Container(
                        color: _colorarr2[2][0],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[2][0]),
                        )]),
                      ),
                      Container(
                        color: _colorarr2[2][1],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[2][1]),
                        )]),
                      ),
                      GestureDetector(
                        onDoubleTap: (){
                          setState(() {
                            _colorarr2[2][2] = Colors.red[100];
                          });
                        },
                        child: Container(
                          color: _colorarr2[2][2],
                          child: Column(children: [Padding(
                            padding: const EdgeInsets.symmetric(vertical: _hieght),
                            child: Text("Free"),
                          )]),

                        ),
                      ),
                      Container(
                        color: _colorarr2[2][3],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[2][3]),
                        )]),
                      ),
                      Container(
                        color: _colorarr2[2][4],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[2][4]),
                        )]),
                      ),
                    ],),
                    TableRow(children: [
                      Container(
                        color: _colorarr2[3][0],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[3][0]),
                        )]),
                      ),
                      Container(
                        color: _colorarr2[3][1],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[3][1] ),
                        )]),
                      ),
                      Container(
                        color: _colorarr2[3][2],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[3][2]),
                        )]),
                      ),
                      Container(
                        color: _colorarr2[3][3],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[3][3]),
                        )]),
                      ),
                      Container(
                        color: _colorarr2[3][4],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[3][4]),
                        )]),
                      ),
                    ],),
                    TableRow(children: [
                      Container(
                        color: _colorarr2[4][0],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[4][0]),
                        )]),
                      ),
                      Container(
                        color: _colorarr2[4][1],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[4][1]),
                        )]),
                      ),
                      Container(
                        color: _colorarr2[4][2],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[4][2] ),
                        )]),
                      ),
                      Container(
                        color: _colorarr2[4][3],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[4][3]),
                        )]),
                      ),
                      Container(
                        color: _colorarr2[4][4],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num2[4][4]),
                        )]),
                      ),
                    ],),
                  ],
                ),
              ),

              //card3
              SizedBox(height: 50,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(20)), boxShadow: [
                  BoxShadow( color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 7,
                      offset: Offset(0, 3))
                ]),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('asset/joly2.jpg'),
                      radius: 20,
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Jolly Niervo", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration( color: Colors.grey[200], borderRadius: BorderRadius.circular(10), boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 7,
                    offset: Offset(0,3),
                  )
                ]),
                child: Table(
                  border: TableBorder.all(color: Colors.black),
                  children: [
                    TableRow(children: [
                      Column(children: [Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text("B", style: TextStyle(fontSize: 20),),
                      )]),
                      Column(children: [Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text("I", style: TextStyle(fontSize: 20),),
                      )]),
                      Column(children: [Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text("N", style: TextStyle(fontSize: 20),),
                      )]),
                      Column(children: [Padding(
                        padding: const EdgeInsets.symmetric(vertical:20),
                        child: Text("G", style: TextStyle(fontSize: 20),),
                      )]),
                      Column(children: [Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text("O", style: TextStyle(fontSize: 20),),
                      )]),
                    ]),
                    TableRow(children: [
                      Container(
                        color: _colorarr3[0][0],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[0][0]),
                        )]),
                      ),
                      Container(
                        color: _colorarr3[0][1],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[0][1]),
                        )]),
                      ),
                      Container(
                        color: _colorarr3[0][2],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[0][2]),
                        )]),
                      ),
                      Container(
                        color: _colorarr3[0][3],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[0][3]),
                        )]),
                      ),
                      Container(
                        color: _colorarr3[0][4],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical:_hieght),
                          child: Text(num3[0][4]),
                        )]),
                      ),
                    ],),
                    TableRow(children: [
                      Container(
                        color: _colorarr3[1][0],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[1][0]),
                        )]),
                      ),
                      Container(
                        color: _colorarr3[1][1],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[1][1]),
                        )]),
                      ),
                      Container(
                        color: _colorarr3[1][2],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[1][2]),
                        )]),
                      ),
                      Container(
                        color: _colorarr3[1][3],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[1][3]),
                        )]),
                      ),
                      Container(
                        color: _colorarr3[1][4],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[1][4]),
                        )]),
                      ),
                    ],),
                    TableRow(children: [
                      Container(
                        color: _colorarr3[2][0],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[2][0]),
                        )]),
                      ),
                      Container(
                        color: _colorarr3[2][1],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[2][1]),
                        )]),
                      ),
                      GestureDetector(
                        onDoubleTap: (){
                          setState(() {
                            _colorarr3[2][2] = Colors.red[100];
                          });
                        },
                        child: Container(
                          color: _colorarr3[2][2],
                          child: Column(children: [Padding(
                            padding: const EdgeInsets.symmetric(vertical: _hieght),
                            child: Text("Free"),
                          )]),

                        ),
                      ),
                      Container(
                        color: _colorarr3[2][3],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[2][3]),
                        )]),
                      ),
                      Container(
                        color: _colorarr3[2][4],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[2][4]),
                        )]),
                      ),
                    ],),
                    TableRow(children: [
                      Container(
                        color: _colorarr3[3][0],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[3][0]),
                        )]),
                      ),
                      Container(
                        color: _colorarr3[3][1],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[3][1] ),
                        )]),
                      ),
                      Container(
                        color: _colorarr3[3][2],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[3][2]),
                        )]),
                      ),
                      Container(
                        color: _colorarr3[3][3],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[3][3]),
                        )]),
                      ),
                      Container(
                        color: _colorarr3[3][4],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[3][4]),
                        )]),
                      ),
                    ],),
                    TableRow(children: [
                      Container(
                        color: _colorarr3[4][0],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[4][0]),
                        )]),
                      ),
                      Container(
                        color: _colorarr3[4][1],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[4][1]),
                        )]),
                      ),
                      Container(
                        color: _colorarr3[4][2],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[4][2] ),
                        )]),
                      ),
                      Container(
                        color: _colorarr3[4][3],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[4][3]),
                        )]),
                      ),
                      Container(
                        color: _colorarr3[4][4],
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.symmetric(vertical: _hieght),
                          child: Text(num3[4][4]),
                        )]),
                      ),
                    ],),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
