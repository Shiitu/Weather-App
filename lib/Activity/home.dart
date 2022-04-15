import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_weather_icons/flutter_weather_icons.dart';




class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Future<data> getData() async
  // {
  //   final response = await http.get("https://mytimeapi.herokuapp.com/time/Asia/Kolkata");
  //   Response response = await get("https://mytimeapi.herokuapp.com/time/Asia/Kolkata");
  //   Map data = JsonDecoder(response.body);
  //   print(data['date']);
  // }

  // void  getData() async
  // {
  //   http.Response response = await http.get(Uri.parse("https://mytimeapi.herokuapp.com/time/Asia/Kolkata")); 
  //   Map data = jsonDecode(response.body);
  //   print(data['date']);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: PreferredSize(
        //   preferredSize: Size.fromHeight(0),
        //   child: AppBar(
        //     backgroundColor: Colors.blue,
        //   ),
        // )
       body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.grey,
              ]
            )
          ),
          child: Column(
            children: [
              Container( //Search Wala Container

                padding: EdgeInsets.symmetric(horizontal: 8),
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.circular(24)
                ),
                child: Row(

                  children: [
                   GestureDetector(
                     onTap: () {
                       print("Search Me");
                     },
                     child: Container(child: Icon(Icons.search,color: Colors.blueAccent,),margin: EdgeInsets.fromLTRB(3, 0, 7, 0),),
                   ),
                    Expanded(
                      child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Your City"
                      ),
                      ),
                    )
                  ],
                ),
              ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.green[200],
                      // border: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    padding: EdgeInsets.all(30),
                    child: Row(children: [
                      // Image.network("Image"),
                      Column (
                       children: [
                         Text("Rain", style: TextStyle(fontSize: 20,
                         fontWeight: FontWeight.bold),),
                         Text("In Delhi")
                       ],
                      )
                    ]),
                  ),
                ),
              ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.green[200],
                            // border: BorderRadius.circular(14),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.all(30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(WeatherIcons.wiThermometer),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("39", style: TextStyle(
                                    fontSize: 100
                                  ),),
                                  Text("C", style: TextStyle(
                                    fontSize: 30
                                  ),)
                                ],
                              )
                            ],
                          )
                        ),
                  ),
                ],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.green[200],
                              // border: BorderRadius.circular(14),
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10,),
                            padding: EdgeInsets.all(30),
                            child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(WeatherIcons.wiDayWindy),
                              ],
                            ),
                            SizedBox(height: 10,),
                              
                              Text("20", style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                              ),),
                              Text("Km/Hr")
                            ]),
                          ),
                ),
                Expanded(
                  child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.green[200],
                              // border: BorderRadius,
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
                            padding: EdgeInsets.all(30),
                            child:Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(WeatherIcons.wiHumidity),
                              ],
                            ),
                            SizedBox(height: 10,),
                              
                              Text("20", style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                              ),),
                              Text("Percentage")
                            ]),
                          ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Made by Shubham"),
                   Text("A Assignment"),
                ],
              )
            )
            ],
          )
          ),
        )
        );
      
  }
}