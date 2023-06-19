import 'package:flutter/material.dart';
import 'style.dart';

void main() {
  runApp(const MaterialApp(
    title: "VPN App",
    home: MyVPN(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyVPN extends StatefulWidget {
  const MyVPN({super.key});

  @override
  State<MyVPN> createState() => _MyVPNState();
}

class _MyVPNState extends State<MyVPN> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: btnColor,
                ),
                child: const Text(
                  "Go Premium",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 30),
              Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: btnColor,
                  ),
                  child: const Icon(
                    Icons.tune,
                    color: Colors.white,
                  ))
            ],
          ),
          const SizedBox(height: 30),
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(),
            child: const Text(
              "Doge VPN",
              style: TextStyle(
                  fontSize: 40, color: btnColor, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 30),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 220,
                height: 220,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
              ),
              Image.asset("assets/doge.png", width: 200, height: 200),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            child: const Column(children: [
              Text("Status : Connected", style: TextStyle(fontSize: 25)),
              SizedBox(
                height: 10,
              ),
              Text("00:22:33"),
            ]),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Selected Location"),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10)),
                height: 60,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Image.asset(
                          "assets/doge.png",
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(width: 20),
                        const Text(
                          "Republic of Korea",
                          style: TextStyle(fontSize: 15),
                        ),
                      ]),
                      const Row(
                        children: [
                          Icon(
                            Icons.refresh,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
