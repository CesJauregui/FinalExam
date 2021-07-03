import 'package:flutter/material.dart';

class Week extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeCont = MediaQuery.of(context).size;
    return Container(
      color: Colors.grey[200],
      height: sizeCont.width * 0.77,
      child: ListView(
        children: [
          CardFilmsWeek(AssetImage("assets/narcos.jpg"), "Narcos",
              "José Padilha", "57 min", "4.7"),
          CardFilmsWeek(AssetImage("assets/ragnarok.jpg"), "Regnarok",
              "Taika Waititi", "48 min", "4.8"),
          CardFilmsWeek(AssetImage("assets/riverdale.jpg"), "Riverdale",
              "Toland Krieger", "44 min", "4.6"),
          CardFilmsWeek(AssetImage("assets/sabrina.jpeg"), "Sabrina",
              "Roberto Aguirre-Sacasa", "63 min", "4.5"),
          CardFilmsWeek(
              AssetImage("assets/7pecados.jpg"),
              "Los 7 pecados capitales",
              "Noriyuki Abe Yasuto Nishikata",
              "21 min",
              "4.9"),
        ],
      ),
    );
  }
}

//AssetImage("assets/narcos.jpg")
class CardFilmsWeek extends StatelessWidget {
  final img;
  final title;
  final director;
  final time;
  final pointStarts;
  CardFilmsWeek(
      this.img, this.title, this.director, this.time, this.pointStarts);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      margin: EdgeInsets.symmetric(vertical: 3),
      width: double.infinity,
      height: 90,
      color: Colors.white,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    padding: EdgeInsets.symmetric(vertical: 2),
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(7),
                      image: DecorationImage(
                        image: this.img,
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        new BoxShadow(
                          color: Color(0xffA4A4A4),
                          offset: Offset(1.0, 5.0),
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 18,
                        ),
                        Text(
                          this.pointStarts,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(this.director),
              Text(this.time),
            ],
          )
        ],
      ),
    );
  }
}
