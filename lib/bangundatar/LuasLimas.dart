import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas3/controlerall/ControllerPerhitungan.dart';

class luaslimas extends StatefulWidget {
  const luaslimas({Key? key}) : super(key: key);

  @override
  State<luaslimas> createState() => _luaslimasState();
}

class _luaslimasState extends State<luaslimas> {
  TextEditingController panjangsisi = TextEditingController();
  TextEditingController luasalas = TextEditingController();
  final LuasControllerLimas controller = Get.put(LuasControllerLimas());


  Widget myTextField(TextEditingController alt, String lable) {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextField(
        controller: alt,
        decoration: InputDecoration(
          labelText: lable,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asset/limas.png',
              width: 200,
              height: 110,
            ),
            SizedBox(height: 20),
            myTextField(panjangsisi, "panjang sisi"),
            myTextField(luasalas, "luas alas"),
            ElevatedButton(
              onPressed: () {
                double panjangSisi = double.parse(panjangsisi.text);
                double luasAlas = double.parse(luasalas.text);
                controller.hitungLuasLimas(panjangSisi, luasAlas);
              },
              child: Text("Hitung"),
            ),
            Obx(
                    () => Text(
                        '${controller.hasilLuasLimas}cm²'
                    )
            ),
          ],
        ),
      ),
    );
  }
}
