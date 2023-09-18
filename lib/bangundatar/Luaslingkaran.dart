import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas3/controlerall/ControllerPerhitungan.dart';

class luaslingkaran extends StatefulWidget {
  const luaslingkaran({Key? key}) : super(key: key);

  @override
  State<luaslingkaran> createState() => _luaslingkaranState();
}

class _luaslingkaranState extends State<luaslingkaran> {
  TextEditingController jarijari = TextEditingController();
  final LuasControllerLingkaran controller = Get.put(LuasControllerLingkaran());

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
              'asset/Lingkaran.png',
              width: 300,
              height: 130,
            ),
            SizedBox(height: 20),
            myTextField(jarijari, "jari-jari"),
            ElevatedButton(
              onPressed: () {
                double jariJari = double.parse(jarijari.text);
                controller.hitungLuasLingkaran(jariJari);
              },
              child: Text("Hitung"),
            ),
            Obx(() => Text('${controller.hasilLuasLingkaran} cm²')),
          ],
        ),
      ),
    );
  }
}
