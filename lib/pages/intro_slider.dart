import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  ///Changed a little bit of buttons styling and text for the thumbnail lol
  ///Thanks for coming here :-)

  final List<PageViewModel> pages = [
    PageViewModel(

        title: 'HELLO KOLKATA',
        body: 'We deals with the second hand,original Mobile handset with proper invoice and with all accessories visit us for more exciting offers',
        footer: SizedBox(
          height: 45,
          width: 150,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                elevation: 8
            ),
            onPressed: () {},
            child: const Text("Let's Go", style: TextStyle(fontSize: 20)),
          ),
        ),
        // image: Center(
        //   child: Image.asset('assets/1.png'),
        // ),



        image:   Center(
          child: Container(
            margin: EdgeInsets.only(top: 25),
            width: 1000,
            height: 2000,
            alignment: Alignment.center,
            child: Image.asset(
              "assets/1.png",
              fit: BoxFit.fitWidth,
              width: 1000,
              height: 2000,
            ),

          ),
        ),
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(
              fontSize: 20.0,
             color: Colors.white,
              fontFamily: 'Poppins-BlackItalic',
            ),

          bodyTextStyle: TextStyle(color: Colors.white,fontFamily: 'Roboto-Italic'),
        )
    ),
    PageViewModel(
        title: 'BEST APP DEALS',
        body: 'Hello kolkata always gives priority to our customer for best products in best ever price.',
        footer: SizedBox(
          height: 45,
          width: 150,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              // primary: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                elevation: 8
            ),
            onPressed: () {},
            child: const Text("Why to wait!", style: TextStyle(fontSize: 20),),
          ),
        ),
        // image: Center(
        //   child: Image.asset('assets/2.png'),
        // ),
        // image:Container(
        //   height: double.maxFinite, //// USE THIS FOR THE MATCH WIDTH AND HEIGHT
        //   width: double.maxFinite,
        //   child:
        //   Image.asset('assets/2.png', fit: BoxFit.fill),
        // ),


        image:   Center(
          child: Container(
            margin: EdgeInsets.only(top: 25),
            width: 2000,
            height: 2000,
            alignment: Alignment.center,
            child: Image.asset(
              "assets/2.png",
              fit: BoxFit.cover,
              width: 2000,
              height: 2000,
            ),

          ),
        ),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            fontFamily: 'Poppins-BlackItalic',
          ),

          bodyTextStyle: TextStyle(color: Colors.white,fontFamily: 'Roboto-Italic'),
        )
    ),
    PageViewModel(
        title: 'DEALS THAT MAKES YOU AMAZE',
        body: 'Install our appliction to get best discounts on every purchase.Install the App Now',
        footer: SizedBox(
          height: 45,
          width: 150,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                elevation: 8
            ),
            onPressed: () {},
            child: const Text("Let's Start", style: TextStyle(fontSize: 20)),
          ),
        ),
        // image: Center(
        //   child: Image.asset('assets/3.png'),
        // ),
  //       image:Container(
  //         height: double.maxFinite, //// USE THIS FOR THE MATCH WIDTH AND HEIGHT
  //         width: double.maxFinite,
  // child:
  // Image.asset('assets/3.png', fit: BoxFit.fill),
  // ),


        image:   Center(
          child: Container(
            margin: EdgeInsets.only(top: 25),
            width: 2000,
            height: 2000,
            alignment: Alignment.center,
            child: Image.asset(
              "assets/3.png",
              fit: BoxFit.cover,
              width: 2000,
              height: 2000,
            ),

          ),
        ),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
              fontSize: 18,
              color: Colors.white,
            fontFamily: 'Poppins-BlackItalic',
          ),

          bodyTextStyle: TextStyle(color: Colors.white,fontFamily: 'Roboto-Italic'),
        )
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 80, 12, 12),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(6,6),
            color: Colors.black38,
            activeSize: Size.square(10),
            activeColor: Colors.red,
          ),
          showDoneButton: true,
          done: const Text('Done', style: TextStyle(fontSize: 20,color: Colors.white),),
          showSkipButton: true,
          skip: const Text('Skip', style: TextStyle(fontSize: 20,color: Colors.white),),
          showNextButton: true,
          next: const Icon(Icons.arrow_forward, size: 25,color: Colors.white,),
          onDone: () => onDone(context),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()));
  }
}
