import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_test/screens/third_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              topCard(),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  'Preventions',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 3, 51, 90),
                      fontSize: 23),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  single_category(title: 'Avoid close\ncontact'),
                  single_category(title: 'Clean your\nhands often'),
                  single_category(title: 'Wear a\nfacemask'),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text(
                      'Find the right specialist',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 3, 51, 90),
                          fontSize: 23),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text(
                      'View all',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 3, 51, 90),
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, left: 18),
                    child: card_with_title_image(
                        title: 'General\nPhysican',
                        iconColor: Colors.blueAccent,
                        bgColor: Colors.lightBlueAccent),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, right: 18),
                    child: card_with_title_image(
                        title: 'Ear Nose\n& Throat',
                        iconColor: const Color.fromARGB(255, 102, 9, 3),
                        bgColor: Colors.redAccent),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, left: 18),
                    child: card_with_title_image(
                        title: 'General\nPhysican',
                        iconColor: Colors.blueAccent,
                        bgColor: Colors.lightBlueAccent),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, right: 18),
                    child: card_with_title_image(
                        title: 'Ear Nose\n& Throat',
                        iconColor: const Color.fromARGB(255, 102, 9, 3),
                        bgColor: Colors.redAccent),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget card_with_title_image(
      {required String title,
      required Color? iconColor,
      required Color? bgColor}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: bgColor,
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2.5,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Icon(
                CupertinoIcons.doc_append,
                size: 80,
                color: iconColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: Text(
                '$title',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: iconColor,
                    fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget single_category({required String title}) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 4,
          height: MediaQuery.of(context).size.width / 4,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: const Center(
              child: Icon(Icons.abc),
            ),
          ),
        ),
        Text(
          '$title',
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 3, 51, 90),
              fontSize: 15),
        )
      ],
    );
  }

  Widget topCard() {
    return Container(
      color: const Color.fromARGB(255, 3, 51, 90),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  'Welcome',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      fontSize: 25),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'DB',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 3, 51, 90),
                          fontSize: 10),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.height / 4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Do your own test!',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'How do you fell today?\nTake today\'s test',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.white24,
                        fontSize: 13),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: MaterialButton(
                      color: Colors.white,
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: ((context) => const ThirdScreen()))),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 20.0, right: 20, top: 8, bottom: 8),
                        child: Text(
                          'Test Now',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 3, 51, 90)),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
