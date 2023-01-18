import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int selected = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 18,
          ),
          top_appbar(),
          SizedBox(
            height: 20,
          ),
          calender_slot(),
          text_view(string: 'Morning'),
          time_card(),
          text_view(string: 'Afternoon'),
          time_card(),
          text_view(string: 'Evening'),
          time_card(),
        ],
      ),
    ));
  }

  Widget time_card() {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Row(
        children: [
          time_single_card(string: '10:00AM'),
          time_single_card(string: '11:00AM'),
          time_single_card(string: '12:00AM'),
        ],
      ),
    );
  }

  Widget time_single_card({required String string}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('10:00AM'),
      ),
    );
  }

  Widget text_view({required String string}) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Text(
        '$string',
        style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 3, 51, 90),
            fontSize: 18),
      ),
    );
  }

  Widget calender_slot() {
    return Container(
      color: const Color.fromARGB(255, 236, 236, 236),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              'Choose your slot',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                  fontSize: 15),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              single_calenderTag(day: 'Mon', date: '12', count: 1),
              single_calenderTag(day: 'Tue', date: '13', count: 2),
              single_calenderTag(day: 'Wed', date: '14', count: 3),
              single_calenderTag(day: 'Thu', date: '15', count: 4),
              single_calenderTag(day: 'Fri', date: '16', count: 5),
              single_calenderTag(day: 'Sat', date: '17', count: 6),
            ],
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  Widget single_calenderTag(
      {required String day, required String date, required int count}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = count;
        });
      },
      child: Card(
        elevation: selected == count ? 4 : 0,
        color: selected == count
            ? Colors.blue
            : const Color.fromARGB(255, 236, 236, 236),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 18.0, left: 8, right: 8, bottom: 8),
              child: Text(
                day,
                style: TextStyle(
                    color: selected == count ? Colors.white : Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, left: 8, right: 8, bottom: 18),
              child: Text(
                date,
                style: TextStyle(
                    color: selected == count ? Colors.white : Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget top_appbar() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(CupertinoIcons.back)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Dr. Lura Alexandra',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 3, 51, 90),
                  fontSize: 23),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'MPCGP(INT),MBBS,DNB',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                  fontSize: 13),
            ),
          ],
        )
      ],
    );
  }
}
