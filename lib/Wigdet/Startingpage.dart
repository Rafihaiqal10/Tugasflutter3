import 'package:flutter/material.dart';
import 'package:tugas3/Wigdet/HomePage.dart';

class InitialDisplay extends StatelessWidget {
  const InitialDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("asset/jp.png", width: 400, height: 60,),
            SizedBox(height: 20),
            Text(
              "Jajargenjang | Limas | Lingkaran | Persegi | Persegi panjang",
              style: TextStyle(
                color: Colors.white,
                fontSize: 11  ,
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 90, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                primary: Colors.amberAccent,
              ),
              child: Text(
                'Mulai Menghitung',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: InitialDisplay(),
  ));
}
