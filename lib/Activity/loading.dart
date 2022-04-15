import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shub_mausam/Activity/home.dart';


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // startApp(){
  //   super.initState();
  // }
  void initState() {
    super.initState();
    _navigatetohome();
  }
  _navigatetohome() async{
    await Future.delayed(Duration(seconds: 5), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context)=> Home()
    ));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("images/download.png", height: 200, width: 200),
          SizedBox(height: 20,),
          Text("SHUB MAUSAM ", style: TextStyle( fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),), 
          // SizedBox(height: 15,), 
          Text("Made By Shubham", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
          SizedBox(height: 50,),
          SpinKitHourGlass(
            color: Color.fromARGB(255, 105, 0, 0),
            size: 50.0,
)
          ],
      )
      ),
      backgroundColor: Colors.green[200],
    );
  }
}
