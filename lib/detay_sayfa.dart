import 'package:flutter/material.dart';

class DetaySayfa extends StatefulWidget {
  const DetaySayfa({super.key});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Oyun Ekranı"),
        leading: IconButton(onPressed: (){
          print("Appbar geri tuşu seçildi");
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new)),
      ),
      body: PopScope(
        canPop: true,
        onPopInvoked: (canPopState){
          print("Navigation geri tuşu seçildi");
        },
        child: const Center(
          child: Text("Merhaba"),
        ),
      ),
    );
  }
}