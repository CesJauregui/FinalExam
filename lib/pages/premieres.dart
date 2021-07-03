import 'package:flutter/material.dart';

class Premieres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 230,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CardPremieres(AssetImage("assets/strangerThings.jpg"),
              "Stranger Things 4", "2021", "4.7"),
          CardPremieres(
              AssetImage("assets/lucifer.jpg"), "Lucifer", "2016", "4.6"),
          CardPremieres(AssetImage("assets/casaPapel.jpeg"), "La casa de papel",
              "2017", "4.5"),
          CardPremieres(
              AssetImage("assets/vikingos.jpg"), "Vikingos", "2013", "4.6"),
        ],
      ),
    );
  }
}
//AssetImage("assets/strangerThings.jpg","Stranger Things 4", "2021", "4,7"),

class CardPremieres extends StatelessWidget {
  final img;
  final title;
  final year;
  final pointStar;

  CardPremieres(this.img, this.title, this.year, this.pointStar);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14, vertical: 15),
      width: 270,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                padding: EdgeInsets.symmetric(horizontal: 9, vertical: 8),
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
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
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 18,
                    ),
                    Text(
                      this.pointStar,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.title,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                this.year,
                style: TextStyle(color: Colors.grey[700], fontSize: 14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
