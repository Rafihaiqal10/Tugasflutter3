import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas3/controlerall/ControllerPerhitungan.dart';

class luaspersegipanjang extends StatefulWidget {
  const luaspersegipanjang({Key? key}) : super(key: key);

  @override
  State<luaspersegipanjang> createState() => _luaspersegipanjangState();
}
 class _luaspersegipanjangState extends State<luaspersegipanjang>{
TextEditingController altPanjang = TextEditingController();
TextEditingController altLebar = TextEditingController();
final Luascontrollerpersegipanjang controller = Get.put(Luascontrollerpersegipanjang());


Widget myTextField(TextEditingController alt,String lable){
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
              'asset/pp.png',
              width: 200,
              height: 150,
            ),
            SizedBox(height: 10),
            myTextField(altLebar, "Lebar"),
            myTextField(altPanjang, "Panjang"),
            ElevatedButton(
              onPressed: () {
                double panjangValue = double.parse(altPanjang.text);
                double lebarValue = double.parse(altLebar.text);
                controller.Panjang(panjangValue);
                controller.Lebar(lebarValue);
              },
              child: Text("Hitung"),
            ),
            Obx(
                  () => Text(
                '${controller.hasilLuasPersegiPanjang.value.toStringAsFixed(2)} cm²',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
