import 'package:flutter/material.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            margin: EdgeInsets.fromLTRB(0,0,0,25),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/no-internet.png")
              )
            ),
          ),
          Text("No Internet Connection",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold
          ),
          ),

        ],
      ),
    );
  }
}
