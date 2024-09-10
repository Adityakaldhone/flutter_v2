import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(key: key,)
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[200],
        centerTitle: true,
        title: const Text("PageTransitions" , style: TextStyle(fontFamily: 'Montserret' , fontSize: 18),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Card(
              elevation: 1,
              child: Container(
                padding:const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.teal[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        
                        opaque: true,
                        duration: const Duration(milliseconds: 300),
                        type: PageTransitionType.rightToLeftWithFade,
                        child: const ThirdPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "right to left ",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Card(
              elevation: 1,
              child: Container(
                padding:const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.teal[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        duration: const Duration(milliseconds: 300),
                        type: PageTransitionType.leftToRight,
                        child: const ThirdPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "left to right ",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Card(
              elevation: 1,
              child: Container(
                padding:const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.teal[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        duration: const Duration(milliseconds: 300),
                        type: PageTransitionType.bottomToTop,
                        child: const ThirdPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "bottom to top ",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Card(
              elevation: 1,
              child: Container(
                padding:const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.teal[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        duration: const Duration(milliseconds: 300),
                        type: PageTransitionType.topToBottom,
                        child: const ThirdPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "top to bottom ",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Card(
              elevation: 1,
              child: Container(
                width: 70,
                height: 30,
                alignment: Alignment.center,
                padding:const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.teal[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        duration: const Duration(milliseconds: 300),
                        type: PageTransitionType.fade,
                        child: const ThirdPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "fade",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Card(
              elevation: 1,
              child: Container(
                padding:const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.teal[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        duration: const Duration(milliseconds: 300),
                        type: PageTransitionType.theme,
                        child: const ThirdPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "theme",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Card(
              elevation: 1,
              child: Container(
                // alignment: Alignment.center,
                padding:const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.teal[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        alignment: Alignment.center,
                        duration: const Duration(milliseconds: 300),
                        type: PageTransitionType.scale,
                        child: const ThirdPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "scale",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Card(
              elevation: 1,
              child: Container(
                padding:const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.teal[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        alignment: Alignment.center,
                        duration: const Duration(milliseconds: 700),
                        type: PageTransitionType.rotate,
                        child: const ThirdPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "rotate",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[200],
        centerTitle: true,
        title: const Text("last page"),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
              Navigator.of(context).pop();
          },
          child:const Text("Last Page")),
      ),
    );
  }
}
