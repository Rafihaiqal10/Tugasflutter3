import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas3/controlerall/ControllerPerhitungan.dart';

class luaspersegi extends StatefulWidget {
  const luaspersegi({Key? key}) : super(key: key);

  @override
  State<luaspersegi> createState() => _luaspersegiState();
}

class _luaspersegiState extends State<luaspersegi> {
  TextEditingController sisi = TextEditingController();
  final Luascontrollerpersegi controller = Get.put(Luascontrollerpersegi());

  Widget myTextField(TextEditingController alt, String lable) {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextField(
        controller: alt,
        decoration: InputDecoration(
          labelText: lable,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
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
              'asset/Persegi.png',
              width: 300,
              height: 170,
            ),
            SizedBox(height: 20),
            myTextField(sisi, "Sisi"),
            ElevatedButton(
              onPressed: () {
                controller.updateSisi(double.parse(sisi.text.toString()));
              },
              child: Text("Hitung"),
            ),
            Obx(
                  () => Text(
                '${controller.hasilLuasPersegi.value}cm²',),
            ),
          ],
        ),
      ),
    );
  }
}
