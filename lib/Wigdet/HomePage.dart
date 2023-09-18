import 'package:flutter/material.dart';
import 'package:tugas3/bangundatar/LuasLimas.dart';
import 'package:tugas3/bangundatar/Luaslingkaran.dart';
import 'package:tugas3/main.dart';
import 'package:tugas3/bangundatar/LuasPersegi.dart';
import 'package:tugas3/bangundatar/LuasPersegiPanjang.dart';
import 'package:tugas3/bangundatar/LuasJajargenjang.dart';
import 'package:tugas3/bangundatar/Luaslingkaran.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Bangun Datar Calculator"),
        ),
        body: TabBarView(
          children: [
            luaslimas(),
            luaspersegi(),
            luaspersegipanjang(),
            luasjajargenjang(),
            luaslingkaran(),
          ],
        ),
        bottomNavigationBar: TabBar(
          labelPadding: EdgeInsets.all(0),
          labelStyle: TextStyle(fontSize: 12),
          tabs: [
            Tab(
              icon: Image.asset("asset/limas1.png"),
              text: "Limas",
            ),
            Tab(
              icon: Icon(Icons.crop_square),
              text: "Persegi",
            ),
            Tab(
              icon: Icon(Icons.crop_landscape),
              text: "Persegi P",
            ),
            Tab(
              icon: Image.asset("asset/jajargenjang.png"),
              text: "Jajargenjang",
            ),
            Tab(
              icon: Icon(Icons.circle_outlined),
              text: "Lingkaran",
            ),
          ],
        ),
      ),
    );
  }
}


