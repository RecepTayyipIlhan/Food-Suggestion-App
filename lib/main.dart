import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          title: Text(
            "Suggest Food To Me",
            style: TextStyle(color: Colors.white70),
          ),
        ),
        body: SafeArea(
          child: FoodPage(),
        ),
      ),
    );
  }
}
int raise(int sayi){
  if(sayi==5){
    sayi=1;
  }else{
    sayi++;
  }
  print(sayi);

  return sayi;
}

class FoodPage extends StatefulWidget {
  @override
  State<FoodPage> createState() => _FoodPageState();
}
String search_food(Map foods,String food_path){

    String selected_food="";
    for(String food in foods.keys){
      if(food_path==food){
        selected_food=foods[food];
      }

    }
  return selected_food;
}

class _FoodPageState extends State<FoodPage> {
  int soup_num=1;

  int food_num=1;

  int sweet_num=1;

  Map<String,String>foods={
    "assets/corba_1.jpg":"Mercimek Çorbası",
    "assets/corba_2.jpg":"Domates Çorbası",
    "assets/corba_3.jpg":"Tavuk Çorbası",
    "assets/corba_4.jpg":"Düğün Çorbası",
    "assets/corba_5.jpg":"Sebze Çorbası",
    "assets/yemek_1.jpg":"Dolma Yemeği",
    "assets/yemek_2.jpg":"Mantı Yemeği",
    "assets/yemek_3.jpg":"Kuru Fasulye",
    "assets/yemek_4.jpg":"İçli Köfte",
    "assets/yemek_5.jpg":"Izgara Balık",
    "assets/tatli_1.jpg":"Kadayıf",
    "assets/tatli_2.jpg":"Baklava",
    "assets/tatli_3.jpg":"Sütlaç",
    "assets/tatli_4.jpg":"Kazan Dibi",
    "assets/tatli_5.jpg":"Dondurma",
  };

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(child: Padding(padding: EdgeInsets.all(12),child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.yellowAccent),
              onPressed: (){
                int sayi=raise(soup_num);
                setState(() {
                      soup_num=sayi;
                });;},
              child: Image.asset("assets/corba_$soup_num.jpg")

          ))),
          Text(
            search_food(foods,"assets/corba_$soup_num.jpg" ),
            style: TextStyle(fontSize: 20,color: Colors.white70),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 15,
              color: Colors.white,

            ),
          ),
          Expanded(child: Padding(padding: EdgeInsets.all(12),child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.yellowAccent),
              onPressed: (){
                  int sayi=raise(food_num);
                  setState(() {
                  food_num=sayi;
                  });;
              },child: Image.asset("assets/yemek_$food_num.jpg")))),
          Text(
            search_food(foods,"assets/yemek_$food_num.jpg" ),
            style: TextStyle(fontSize: 20,color: Colors.white70),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 15,
              color: Colors.white,

            ),
          ),
          Expanded(child: Padding(padding: EdgeInsets.all(12),child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.yellowAccent),
              onPressed: (){int sayi=raise(sweet_num);
              setState(() {
                sweet_num=sayi;
              });;},
              child: Image.asset("assets/tatli_$sweet_num.jpg")))),
          Text(
            search_food(foods,"assets/tatli_$sweet_num.jpg" ),
            style: TextStyle(fontSize: 20,color: Colors.white70),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 15,
              color: Colors.white,

            ),
          ),
        ],
      ),
    );
  }
}

