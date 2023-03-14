import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  ListScreen({Key? key}) : super(key: key);
  List<ListElement> first = [
    ListElement(id: 1, name: 'name'),
    ListElement(id: 2, name: 'n2me'),
    ListElement(id: 3, name: 'n3me'),
    ListElement(id: 4, name: 'n4me'),
    ListElement(id: 5, name: 'n5me'),
    ListElement(id: 6, name: 'n6me'),
    ListElement(id: 7, name: 'n7me'),
  ];

  List<ListElement> second = [
    ListElement(id: 8, name: 'date'),
    ListElement(id: 9, name: 'd2te'),
    ListElement(id: 10, name: 'd3te'),
    ListElement(id: 11, name: 'd4te'),
    ListElement(id: 12, name: 'd5te'),
    ListElement(id: 13, name: 'd6te'),
    ListElement(id: 14, name: 'd7te'),
  ];

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: widget.first.length,
          itemBuilder: ((context, index) {
            return listSingleWidget(index: index);
          })),
    );
  }

  listSingleWidget({required int index}) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blueAccent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('${widget.first[index].id}'),
                    Text('${widget.first[index].name}'),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Card(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('${widget.second[index].id}'),
                    Text('${widget.second[index].name}'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListElement {
  int id;
  String name;

  ListElement({required this.id, required this.name});
}
