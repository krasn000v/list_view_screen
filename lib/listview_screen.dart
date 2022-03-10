import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: StatefullList(),
      ),
    );
  }
}

class MyListItem extends StatelessWidget {
  const MyListItem({Key? key, required this.number}) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
        border: Border.all(),
      ),
      child: Text('Элемент № $number', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
    );
  }
}


class SimpleList extends StatelessWidget {
  const SimpleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        MyListItem(number: 1),
        MyListItem(number: 2),
        MyListItem(number: 3),
        MyListItem(number: 4),
        MyListItem(number: 5),
        MyListItem(number: 6),
        MyListItem(number: 7),
        MyListItem(number: 8),
        MyListItem(number: 9),
        MyListItem(number: 10),
        MyListItem(number: 11),
        MyListItem(number: 12),
        MyListItem(number: 13),
        MyListItem(number: 14),
        MyListItem(number: 15),
        MyListItem(number: 16),
        MyListItem(number: 17),
        MyListItem(number: 18),
        MyListItem(number: 19),
        MyListItem(number: 20),
      ],
    );
  }
}

class SimpleListBuilder extends StatefulWidget {
  SimpleListBuilder({Key? key}) : super(key: key);

  @override
  State<SimpleListBuilder> createState() => _SimpleListBuilderState();
}

class _SimpleListBuilderState extends State<SimpleListBuilder> {
  var list = List<int>.generate(50, (i) => i + 1);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
    return MyListItem(number: index);
    }
    );
  }
}

class SimpleListSeparated extends StatelessWidget {
  SimpleListSeparated({Key? key}) : super(key: key);

  var list = List<int>.generate(50, (i) => i + 1);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) {
          return MyListItem(number: index);
        },
      separatorBuilder: (BuildContext context, int index) => const Divider(thickness: 3),
    );
  }
}

class StatefullList extends StatefulWidget {
  const StatefullList({Key? key}) : super(key: key);

  @override
  _StatefullListState createState() => _StatefullListState();
}

class _StatefullListState extends State<StatefullList> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: const Icon(Icons.people),
          title: Text('Contacts $index'),
          selected: index == _selectedIndex,
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
        },
        );
      },
    );
  }
}




