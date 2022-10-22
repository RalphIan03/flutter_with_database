
import 'package:flutter/material.dart';
import 'package:flutteract1/bingo.dart';
import 'package:flutteract1/main.dart';
import 'package:flutter_map_arcgis/flutter_map_arcgis.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:syncfusion_flutter_maps/maps.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}
class _homeState extends State<home> {
  bool _showhide = false;
  bool _close = false;

  void hidder(){
    setState(() {
      _showhide = !_showhide;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("App"),
          backgroundColor: Colors.red,
          automaticallyImplyLeading: false,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.feed),),
              Tab(icon: Icon(Icons.message),),
              Tab(icon: Icon(Icons.notifications),),
            ],
          ),
          actions: [
            IconButton(onPressed: (){
              // showDialog <String>(context:
              // context, builder: (BuildContext context) =>
              //     AlertDialog(
              //       title: const Text("Logout"),
              //       content: const Text("Do you want to logout?"),
              //       actions: [
              //         TextButton(onPressed: (){
              //           _close = true;
              //           Navigator.pop(context);
              //         }, child: Text("Logout")),
              //         TextButton(onPressed: (){
              //           Navigator.pop(context);
              //           _close = false;
              //         }, child: Text("Cancel")),
              //       ],
              // ));
              // if (_close){
              //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> homepage()));
              // }
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => homepage()));
            },
                icon: Icon(Icons.logout))
          ],
        ),

        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
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
                              radius: 50,
                            ),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Chelly Mae Gador", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                Text("Description:\nWe met at UM Digos College", style: TextStyle(fontSize: 15),)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
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
                              radius: 50,
                            ),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ken Castro", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                Text("Description:\nWe met at UM Digos College", style: TextStyle(fontSize: 15),)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
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
                              radius: 50,
                            ),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Jolly Niervo", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                Text("Description:\nWe met at UM Digos College", style: TextStyle(fontSize: 15),)
                              ],
                            )
                          ],
                        ),
                      ),

                      // Visibility(
                      //     visible: _showhide,
                      //     child: Column(
                      //       children: [
                      //         SizedBox(height: 20,),
                      //         Container(
                      //           margin: EdgeInsets.symmetric(horizontal: 20),
                      //           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      //           decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(20)), boxShadow: [
                      //             BoxShadow( color: Colors.grey.withOpacity(0.5),
                      //                 spreadRadius: 4,
                      //                 blurRadius: 7,
                      //                 offset: Offset(0, 3))
                      //           ]),
                      //           child: Row(
                      //             children: [
                      //               CircleAvatar(
                      //                 backgroundImage: AssetImage('asset/jaz.jpg'),
                      //                 radius: 50,
                      //               ),
                      //               SizedBox(width: 20,),
                      //               Column(
                      //                 crossAxisAlignment: CrossAxisAlignment.start,
                      //                 children: [
                      //                   Text("Jazzin Llena", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      //                   Text("Description:\nWe met at UM Digos College", style: TextStyle(fontSize: 15),)
                      //                 ],
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //         SizedBox(height: 20,),
                      //         Container(
                      //           margin: EdgeInsets.symmetric(horizontal: 20),
                      //           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      //           decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(20)), boxShadow: [
                      //             BoxShadow( color: Colors.grey.withOpacity(0.5),
                      //                 spreadRadius: 4,
                      //                 blurRadius: 7,
                      //                 offset: Offset(0, 3))
                      //           ]),
                      //           child: Row(
                      //             children: [
                      //               CircleAvatar(
                      //                 backgroundImage: AssetImage('asset/jez.jpg'),
                      //                 radius: 50,
                      //               ),
                      //               SizedBox(width: 20,),
                      //               Column(
                      //                 crossAxisAlignment: CrossAxisAlignment.start,
                      //                 children: [
                      //                   Text("Jezel Camarillo", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      //                   Text("Description:\nWe met at UM Digos College", style: TextStyle(fontSize: 15),)
                      //                 ],
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //         SizedBox(height: 20,),
                      //         Container(
                      //           margin: EdgeInsets.symmetric(horizontal: 20),
                      //           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      //           decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(20)), boxShadow: [
                      //             BoxShadow( color: Colors.grey.withOpacity(0.5),
                      //                 spreadRadius: 4,
                      //                 blurRadius: 7,
                      //                 offset: Offset(0, 3))
                      //           ]),
                      //           child: Row(
                      //             children: [
                      //               CircleAvatar(
                      //                 backgroundImage: AssetImage('asset/marc.jpg'),
                      //                 radius: 50,
                      //               ),
                      //               SizedBox(width: 20,),
                      //               Column(
                      //                 crossAxisAlignment: CrossAxisAlignment.start,
                      //                 children: [
                      //                   Text("Marc Mirafuentes", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      //                   Text("Description:\nWe met at UM Digos College", style: TextStyle(fontSize: 15),)
                      //                 ],
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //         SizedBox(height: 20,),
                      //         Container(
                      //           margin: EdgeInsets.symmetric(horizontal: 20),
                      //           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      //           decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(20)), boxShadow: [
                      //             BoxShadow( color: Colors.grey.withOpacity(0.5),
                      //                 spreadRadius: 4,
                      //                 blurRadius: 7,
                      //                 offset: Offset(0, 3))
                      //           ]),
                      //           child: Row(
                      //             children: [
                      //               CircleAvatar(
                      //                 backgroundImage: AssetImage('asset/marv.jpg'),
                      //                 radius: 50,
                      //               ),
                      //               SizedBox(width: 20,),
                      //               Column(
                      //                 crossAxisAlignment: CrossAxisAlignment.start,
                      //                 children: [
                      //                   Text("Marvin Alimento", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      //                   Text("Description:\nWe met at UM Digos College", style: TextStyle(fontSize: 15),)
                      //                 ],
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //         SizedBox(height: 20,),
                      //         Container(
                      //           margin: EdgeInsets.symmetric(horizontal: 20),
                      //           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      //           decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.all(Radius.circular(20)), boxShadow: [
                      //             BoxShadow( color: Colors.grey.withOpacity(0.5),
                      //                 spreadRadius: 4,
                      //                 blurRadius: 7,
                      //                 offset: Offset(0, 3))
                      //           ]),
                      //           child: Row(
                      //             children: [
                      //               CircleAvatar(
                      //                 backgroundImage: AssetImage('asset/ron.jpg'),
                      //                 radius: 50,
                      //               ),
                      //               SizedBox(width: 20,),
                      //               Column(
                      //                 crossAxisAlignment: CrossAxisAlignment.start,
                      //                 children: [
                      //                   Text("Rhona Magsayo", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                      //                   Text("Description:\nWe met at UM Digos College", style: TextStyle(fontSize: 15),)
                      //                 ],
                      //               )
                      //             ],
                      //           ),
                      //         ),
                      //       ],
                      //     )),


                      SizedBox(height: 20,),
                      ElevatedButton(
                        // onPressed: hidder,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Bingo()));

                        },
                        child: Text("Play Bingo",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight:
                              FontWeight.bold,
                              fontFamily: 'Silkscreen'),),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 30,),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            primary: Colors.red
                        ),
                      ),
                      SizedBox(height: 20,),

                    ],
                  )


              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Flexible(child: FlutterMap(
                      options: MapOptions(
                        center: LatLng(6.85, 125.32),
                        zoom: 11,
                        plugins: [EsriPlugin()]
                      ),
                      layers: [
                        TileLayerOptions(
                          urlTemplate: 'https://snowmap.fast-sfc.com/base_snow_map/{z}/{x}/{y}.png',
                          subdomains: ['a','b','c'],

                          // urlTemplate: 'http://{s}.google.com/vt/lyrs=m&x={x}&y={y}&z={z}',
                          // subdomains: ['mt0', 'mt1', 'mt2', 'mt3'],
                        //  urlTemplate: "https://basemaps-api.arcgis.com/arcgis/rest/services/styles/aabf53b930424dd789e49f250efb940f?type=style&token=AAPKb1a5cc63f20e471aaf692be519fd75e8hGk-jno8G4qtekW1KBTTH7nhrhknj8jyb1zbboc-XWNGAeYvsDm74zJBipd4AcKi",
                          // additionalOptions: {
                          //   'YOUR_API_KEY': 'AAPKb1a5cc63f20e471aaf692be519fd75e8hGk-jno8G4qtekW1KBTTH7nhrhknj8jyb1zbboc-XWNGAeYvsDm74zJBipd4AcKi'
                          // }
                        ),
                      FeatureLayerOptions('https://services7.arcgis.com/KpSishw2wZ2cdcqw/arcgis/rest/services/digos/FeatureServer/0', "polygon",
                        render: (dynamic attributes){
                        return PolygonOptions(
                          borderColor: Colors.blue,
                          color: Colors.white,
                          borderStrokeWidth: 2
                        );
                        }
                      ),
                      ],
                    ))
                  ],
                ),
              )),
            Center(child: Text("No Notifications", style: TextStyle(fontFamily: 'Silkscreen', fontSize: 30),),),
          ],

        ),
      ),
    );
  }
}
