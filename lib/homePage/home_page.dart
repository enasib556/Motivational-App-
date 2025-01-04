import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> quotes = ['hsiuhdiu', 'skjahja', 'skjhkqh'];
  int currentIndex = 0; 

  void showNextQuote() {
    setState(() {
      currentIndex = (currentIndex + 1) % quotes.length; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F1E4),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text(
          "Motivational App",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.format_quote,size: 80,),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Container(
                child:  Center(
                  child: Text(
                    quotes[currentIndex], // عرض الاقتباس الحالي
                    style: TextStyle(color: Colors.teal, fontSize: 20),
                  ),
                ),
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                   border: Border.all(color: Colors.teal, width: 2.5),
              // color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(166, 223, 206, 206),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: showNextQuote, // تحديث الاقتباس عند الضغط
              child: const Text(
                "See Quotes",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shadowColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}