import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_test/screens/second_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 51, 90),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          app_icon(),
          const Text(
            'Doctor\'s Helpline',
            style: TextStyle(
                fontWeight: FontWeight.w400, color: Colors.white, fontSize: 29),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'The tec helpline for Covid-19. Rather than\nrushing to the doctor or healthcare center, we\nwe can help remotely get a doctor.',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.white24,
                fontSize: 13),
          ),
          Expanded(
              child: Center(
            child: MaterialButton(
              color: Colors.white,
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: ((context) => SecondScreen()))),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: const Padding(
                padding:
                    EdgeInsets.only(left: 20.0, right: 20, top: 8, bottom: 8),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 3, 51, 90)),
                ),
              ),
            ),
          )),
          Text(
            'Powerd By',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white60, fontSize: 12),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  CupertinoIcons.airplane,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  CupertinoIcons.scissors_alt,
                  color: Colors.white,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget app_icon() {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.5,
      child: Center(
        child: Card(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          color: const Color.fromARGB(45, 255, 255, 255),
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: SvgPicture.asset(
              "assets/doctor.svg",
              width: MediaQuery.of(context).size.width / 2,
            ),
          ),
        ),
      ),
    );
  }
}
