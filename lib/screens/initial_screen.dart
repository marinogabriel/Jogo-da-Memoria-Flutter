import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return InitialScreenState();
  }
}

class InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        title: const Text(
          "Página Inicial",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FittedBox(
                fit: BoxFit.fill,
                child: Center(
                  child: Container(
                    height: size.height * 0.1,
                    padding: EdgeInsets.all(size.height * 0.01),
                  ),
                ),
              ),
              Container(
                height: size.height * 0.4,
                padding: const EdgeInsets.all(8.0),
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                    ),
                  ],
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 250, 250, 250),
                    Color.fromARGB(255, 255, 255, 255),
                  ]),
                ),
                child: ClipRRect(
                    child: Image.asset('../assets/images/BlackJackApp.png')),
              ),
              playButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget playButton() {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.18),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 158, 13, 13),
        ),
        child: Padding(
          padding: EdgeInsets.all(size.height * 0.05),
          child: Text(
            "Jogar",
            style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: size.height * 0.035,
                fontStyle: FontStyle.normal),
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, "/login");
        },
      ),
    );
  }
}
