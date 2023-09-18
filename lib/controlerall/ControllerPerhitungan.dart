import 'package:get/get.dart';

//Limas

class LuasControllerLimas extends GetxController {
  final panjangSisiAlas = 0.0.obs;
  final luasAlasLimas = RxDouble(0.0);
  final hasilLuasLimas = RxDouble(0.0);

  hitungLuasLimas(double panjangSisiAlas, double luasAlasLimas) {
    this.panjangSisiAlas.value = panjangSisiAlas;
    this.luasAlasLimas.value = luasAlasLimas;
    hasilLuasLimas.value = (panjangSisiAlas * luasAlasLimas) / 2;
  }
}

//Jajargenjang

class LuasControllerjajargenjang extends GetxController {
  final count = 0.obs;
  increment() => count.value++;

  final hasilLuasJajarGenjang = RxDouble(0.0);

  luasJajarGenjang(double alas, double tinggi) {
    hasilLuasJajarGenjang.value = alas * tinggi;
  }
}

//Lingkaran

class LuasControllerLingkaran extends GetxController {
  final jariJari = 0.0.obs;
  final hasilLuasLingkaran = RxDouble(0.0);

  hitungLuasLingkaran(double jariJari) {
    hasilLuasLingkaran.value = 3.14 * jariJari * jariJari;
  }
}



//Persegi

class Luascontrollerpersegi extends GetxController {
  final sisi = RxDouble(0.0);
  final hasilLuasPersegi = RxDouble(0.0);

  updateSisi(double value) {
    sisi.value = value;
    hitungLuas();
  }

  hitungLuas() {
    hasilLuasPersegi.value = sisi.value * sisi.value;
  }
}

//Persegipanjang

class Luascontrollerpersegipanjang extends GetxController {
  final panjang = RxDouble(0.0);
  final lebar = RxDouble(0.0);
  final hasilLuasPersegiPanjang = RxDouble(0.0);

  Panjang(double value) {
    panjang.value = value;
    hitungLuasPersegiPanjang();
  }

  Lebar(double value) {
    lebar.value = value;
    hitungLuasPersegiPanjang();
  }

  hitungLuasPersegiPanjang() {
    hasilLuasPersegiPanjang.value = panjang.value * lebar.value;
  }
}








