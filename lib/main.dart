import 'package:child_roster/screens/Infants.dart';
import 'package:child_roster/screens/PreK.dart';
import 'package:child_roster/screens/SchoolKids.dart';
import 'package:child_roster/screens/Toddler1.dart';
import 'package:child_roster/screens/Toddler2.dart';
import 'package:child_roster/screens/WaitingList.dart';
// import 'package:child_roster/screens/WaitingList.dart';
// import 'package:child_roster/widgets/ChildInputField.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'widgets/ExpansionList.dart';

// @override
// Widget build(BuildContext context) {
//   return AnimatedSplashScreen(
//     splash: 'images/splash.png',
//     nextScreen: HomeScreen(),
//     splashTransition: SplashTransition.rotationTransition,
//   );
// }

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset(
        'assets/images/PolkaDot.png'),
        nextScreen: HomeScreen(),
        splashTransition: SplashTransition.slideTransition,
        backgroundColor: Colors.pinkAccent,
        

      ),
    );
  }
}
// backgroundColor: Colors.black
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.black,
         body: Container (
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage('assets/images/bumbleBee.gif'),
               fit: BoxFit.cover,
              //  colorFilter: ColorFilter.mode(
              //    Colors.red.withOpacity(0.5),
              //    BlendMode.darken)
              )
            )
          ),
          // backgroundColor: Colors.black,
          // backgroundImage: AssetImage('assets/images/bumbleBee.gif')),
        
        appBar: AppBar(
          title: Text('Stepping Stones'),
          backgroundColor: Colors.grey[700],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                      Colors.black87,
                      Colors.grey[600]
                    ]),
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        Material(
                          elevation: 10,
                          borderRadius: BorderRadius.all(Radius.circular(80.0)),
                          child: Container(
                            height: 100.0,
                            width: 100.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage(
                                  'assets/images/MickeyMinnie.png'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Stepping Stones',
                            style:
                                TextStyle(color: Colors.white, fontSize: 25.0),
                          ),
                        )
                      ],
                    ),
                  )),
              CustomListTile(
                  Icons.pregnant_woman_rounded,
                  'Waiting List',
                  () => Navigator.pop(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new WaitingList()))),
              CustomListTile(
                  Icons.child_friendly_rounded,
                  'Infants 0-12 Months',
                  () => Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Infants()))),
              CustomListTile(
                  Icons.baby_changing_station_rounded,
                  'Toddler 1 12-24 Months',
                  () => Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Toddler1()))),
              CustomListTile(
                  Icons.palette_sharp,
                  'Toddler 2 24-36 Months',
                  () => Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Toddler2()))),
              CustomListTile(
                  Icons.create_sharp,
                  'Pre -K 3-5yrs',
                  () => Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => new PreK()))),
              CustomListTile(
              
                  Icons.airport_shuttle_rounded,
                  
                  'School Kids 5-12yrs',
                  () => Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new SchoolKids()))),
            ],
          ),
        ));
  }

  DrawerWidget({ListView child}) {}
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
        child: InkWell(
          splashColor: Colors.pinkAccent,
          onTap: onTap,
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        text,
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

