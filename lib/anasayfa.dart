import 'package:calisma_yapisi/detay_sayfa.dart';
import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/oyun_ekrani.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState() çalıştı");
  }

  @override
  Widget build(BuildContext context) {
    print("build() çalıştı");
    return Scaffold(
      appBar: AppBar(title: const Text("Anasayfa"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuç : $sayac"),
            ElevatedButton(onPressed: (){
                setState(() {
                  sayac = sayac + 1;
                });
            }, child: const Text("Tıkla")),
            ElevatedButton(onPressed: (){
              var kisi = Kisiler(ad: "Mertcan", yas: 24, boy: 1.78, bekar: true);
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetaySayfa()))
                  .then((value){
                print("Anasayfaya dönüldü");
              });
            }, child: const Text("Başla")),
          ],
        ),
      ),
    );
  }
}