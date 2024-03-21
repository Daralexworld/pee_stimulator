import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class HomPage extends StatefulWidget {
  const HomPage({super.key});

  @override
  State<HomPage> createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.yellow, Colors.orange, Colors.red],
              ),
              borderRadius: BorderRadius.all(Radius.circular(6.0))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Let's Pee",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 2,
              ),
              const Text(
                "Save yourself from \nawkward situation",
                style: TextStyle(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                    height: size.height / 3.5,
                    child: const Image(image: AssetImage("assets/funny.jpg"))),
              ),
              SizedBox(
                height: size.height / 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    final player = AudioCache();
                    player.loadPath("pee.mp3");
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.orange,
                    elevation: 10,
                    backgroundColor: Colors.black,
                  ),
                  child: const Text("play"))
            ],
          ),
        ),
      ),
    );
  }
}
