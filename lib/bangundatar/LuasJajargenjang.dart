import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas3/controlerall/ControllerPerhitungan.dart';

class luasjajargenjang extends StatefulWidget {
  const luasjajargenjang({Key? key}) : super(key: key);

  @override
  State<luasjajargenjang> createState() => _luasjajargenjangState();
}

class _luasjajargenjangState extends State<luasjajargenjang> {
  TextEditingController alas = TextEditingController();
  TextEditingController tinggi = TextEditingController();
  final LuasControllerjajargenjang controller = Get.put(LuasControllerjajargenjang());

  Widget myTextField(TextEditingController alt, String label) {
    return Container(
      margin: EdgeInsets.all(20),
      child: TextField(
        controller: alt,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asset/jajargenjangimage.png',
              width: 200,
              height: 70,
            ),
            SizedBox(height: 20),
            myTextField(alas, "alas"),
            myTextField(tinggi, "tinggi"),
            ElevatedButton(
              onPressed: () {
                double alasValue = double.parse(alas.text);
                double tinggiValue = double.parse(tinggi.text);
                controller.luasJajarGenjang(alasValue, tinggiValue);
              },
              child: Text("Hitung"),
            ),
            Obx(
                  () => Text(
                '${controller.hasilLuasJajarGenjang.value}cm²',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
