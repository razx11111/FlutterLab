import 'package:flutter/material.dart';
import 'package:flutter/src/material/input_decorator.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool isLiked = false;
  bool isDisliked = false;
  final _textControler = TextEditingController();
  String nume = " ";

  void curwa() {
    setState(() {
      if (isLiked == true) {
        isLiked = false;
        isDisliked = true;
      } else {
        isLiked = true;
        isDisliked = false;
      }
    });
  }

  Text goodReview() {
      return Text(
        "Eyyyy m8 thanks for the review",
        style: TextStyle(
          fontSize: 16.0,
          color: Color.fromARGB(255, 79, 51, 40),
        ),
        textAlign: TextAlign.center,
      );
  }

  Column badReview() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextField( 
          controller: _textControler,
          decoration: InputDecoration(
            hintText: "nume?", 
            labelStyle: TextStyle(color: Color.fromARGB(255, 79, 51, 40),),
            border: const OutlineInputBorder(),
          ),
        ),
        MaterialButton(
          onPressed: () {
            setState(() {
              nume = _textControler.text;
            });
          },
          child: Text("Submit", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 233, 202, 154),),),
          color: Color.fromARGB(255, 79, 51, 40),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 233, 202, 154),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/Nutpedia.png"),
                Text(
                  "What is a nut?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    decoration: TextDecoration.underline,
                    color: Color.fromARGB(255, 79, 51, 40),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                  child: Text(
                    "       A nut is a fruit consisting of a hard or tough nutshell protecting a kernel which is usually edible. In general usage and in a culinary sense, a wide variety of dry seeds are called nuts, but in a botanical context nut implies that the shell does not open to release the seed (indehiscent). Most seeds come from fruits that naturally free themselves from the shell, but this is not the case in nuts such as hazelnuts, chestnuts, and acorns, which have hard shell walls and originate from a compound ovary. The general and original usage of the term is less restrictive, and many nuts (in the culinary sense), such as almonds, pecans, pistachios, walnuts, and Brazil nuts, are not nuts in a botanical sense. Common usage of the term often refers to any hard-walled, edible kernel as a nut. Nuts are an energy-dense and nutrient-rich food source.",
                    style: TextStyle(
                      color: Color.fromARGB(255, 79, 51, 40),
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Text(
                  "FACTS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    decoration: TextDecoration.underline,
                    color: Color.fromARGB(255, 79, 51, 40),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                  child: Text(
                    "       So thing is nuts are very important for us humans but not many eat them so often, if you are interested, the National Center of Health Statistics made a study about the nut consumption in the US",
                    style: TextStyle(
                      color: Color.fromARGB(255, 79, 51, 40),
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
                  child: Image.asset("assets/graph.png"),
                ),
                Text(
                  "So as you can see there is a slight discrepancy between the gender nut consumption, women being just a little higher up on the charts HOWEVER that's only because your mom is a woman.",
                  style: TextStyle(
                    color: Color.fromARGB(255, 79, 51, 40),
                    fontSize: 16.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
                      child: Text(
                        "Was this experience enjoyable?",
                        style: TextStyle(
                          color: Color.fromARGB(255, 79, 51, 40),
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: curwa,
                      // goodReview;
                      icon: Icon(Icons.thumb_up_sharp),
                      color: isLiked
                          ? Colors.green
                          : Color.fromARGB(255, 79, 51, 40),
                    ),
                    IconButton(
                      onPressed: curwa,
                        // badReview;
                      icon: Icon(Icons.thumb_down_sharp),
                      color: isDisliked
                          ? Colors.red
                          : Color.fromARGB(255, 79, 51, 40),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if(isLiked)
                      goodReview(),
                    if(isDisliked)
                      badReview(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
