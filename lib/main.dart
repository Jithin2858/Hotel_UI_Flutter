import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.favorite_border),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Container(
            //width: MediaQuery.of(context).size.width*0.90,
            height: 70,
            width: MediaQuery
                .of(context)
                .size
                .width,
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
            color: Colors.blue,
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Colors.grey,
                  size: 25,
                ),
                border: InputBorder.none,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300)),
                hoverColor: Colors.black,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Text("Hotel UI"),
      ),
      body:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 75, top: 20),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.2,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.15,
                    //color: Colors.blueGrey,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pinkAccent),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.hotel,
                          color: Colors.white,
                        ),
                        Text(
                          'Hotel',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.2,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.15,
                    //color: Colors.blueGrey,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.restaurant,
                          color: Colors.white,
                        ),
                        Text(
                          'Restaurant',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.2,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.15,
                    //color: Colors.blueGrey,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.amber),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.local_cafe_rounded,
                          color: Colors.white,
                        ),
                        Text(
                          'Cafe',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
           Stack(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
                 child: Container(
                   width: MediaQuery
                       .of(context)
                       .size
                       .width,
                   height: MediaQuery
                       .of(context)
                       .size
                       .height * 0.4,
                   //color: Colors.blueGrey,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(8),
                       image: const DecorationImage(
                           image: NetworkImage(
                               'https://images.unsplash.com/photo-1618773928121-c32242e63f39?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'
                           ),
                           fit: BoxFit.fill
                       )),
                 ),
               ),
               Positioned(
                 bottom: 0,
                   right: 0,
                   child: CircleAvatar(
                     backgroundColor: Colors.black,
                      child:Text(
                        "\$ 40") ,
                   ))
             ],
           ),
            const SizedBox(
              height: 8,
            ),
            Column(
              children:  [
                Row(
                  children: const [

                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text("Awesome room near Bouddha",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Row(
                    children: const [
                      Text("Bouddha,Kathmandu",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Text("(220 reviews)",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            )
              ],
            ),
          ],
        ),
    );
  }
}
