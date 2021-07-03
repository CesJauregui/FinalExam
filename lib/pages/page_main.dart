import 'package:final_exam/pages/premieres.dart';
import 'package:final_exam/pages/this_week.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 5),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15, top: 35),
                child: Text(
                  "Premieres",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              Premieres(),
              Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  "In this week",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              Week()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.blue,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_filter,
              color: Colors.indigo,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.local_movies_outlined,
              color: Colors.grey,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            label: ' '),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.toc,
              color: Colors.grey,
            ),
            label: ' '),
      ],
    );
  }
}
