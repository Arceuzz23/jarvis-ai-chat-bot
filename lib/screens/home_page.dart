import 'package:flutter/material.dart';
import 'package:jarvis/widgets/featrue.dart';
import 'package:lottie/lottie.dart';

class home extends StatefulWidget {
  const home({super.key});
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  bool isListening = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.menu),
                    color: Colors.white,
                  iconSize: 30,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('JARVIS',
                    style: TextStyle(
                      fontSize: 85,
                      fontFamily: 'rubik80',
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10,),
              Text('What can I help you with today, sir?',
                style: TextStyle(
                  fontSize: 17,

                  fontFamily: 'comfortaa',
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 45,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('Here are some features:',
                      style: TextStyle(
                        fontSize: 17,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'comfortaa',
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),SizedBox(height: 10,),

              feature_box(color: Colors.red.shade600, textDescription: 'A smarter way to stay organised and informed with ChatGpt', textHeading: 'ChatGpt'),
              feature_box(color: Colors.red.shade600, textDescription: 'Get inspired and stay creative with your personal assistant powered by Dall-E', textHeading: 'Dall-E'),
              feature_box(color: Colors.red.shade600, textDescription: 'Voice assistant powered by Dall-E and ChatGpt', textHeading: 'Smart Voice Assistant'),
              SizedBox(height: 95,),


              GestureDetector(
                onTap: (){
                  setState(() {
                    isListening = !isListening;
                  });
                },
                child: SizedBox(
                  child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),
                    transitionBuilder: (child, animation) {
                      return FadeTransition(opacity: animation, child: child);
                    },
                    child: isListening
                        ? Container(
                        alignment: Alignment.center,
                        height: 100,
                        width: 100,
                        child: Lottie.asset('assets/animations/mic.json',
                          height: 100,
                          width: 100,))
                        : Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(

                        border: Border.all(
                          color: Colors.black,
                          width: 12,
                        ),
                        color: Color(0xFFFF0A01),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      height: 100,
                      width: 100,
                        child: Image.asset('assets/icons/mic.png',
                          height: 35,
                          width: 35,
                        ),
                    ),
                  ),
                ),
              ),
          ],
              ),
              ),
          ),
    );
  }
}
