import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/normal_game.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/complete_model.dart';

class LauncherScreen extends StatefulWidget {
  const LauncherScreen({super.key});

  @override
  State<LauncherScreen> createState() => _LauncherScreenState();
}

class _LauncherScreenState extends State<LauncherScreen> {
  late final CompleteModel completeModel = CompleteModel();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  double sliderValue = 0;
  List<String> list = <String>['2x2', '4x4', '6x6', '8x8'];
  String dropdownValue = '';

  @override
  void initState() {
    dropdownValue = '2x2';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Escolha a dimensão do tabuleiro:',
          style: GoogleFonts.poppins(
            color: const Color(0xff1D1617),
            fontSize: size.height * 0.02,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "",
                style: TextStyle(
                  color: const Color(0xffADA4A5),
                  fontSize: size.height * 0.018,
                ),
              ),
              dropDown(),
            ],
          ),
        ),
        submitButton()
      ],
    );
  }

  DropdownButton<String> dropDown() {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
      underline: Container(
        height: 2,
        color: const Color.fromARGB(255, 0, 0, 0),
      ),
      onChanged: (String? value) {
        setState(() {
          switch (value) {
            case '2x2':
              NormalGame.helper.dropdownValue = 2;
              break;
            case '4x4':
              NormalGame.helper.dropdownValue = 4;
              break;
            case '6x6':
              NormalGame.helper.dropdownValue = 6;
              break;
            default:
              NormalGame.helper.dropdownValue = 8;
          }
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  Widget submitButton() {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.1),
      child: FractionallySizedBox(
        widthFactor: 0.7,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 255, 0, 38),
          ),
          child: Padding(
            padding: EdgeInsets.only(
                top: size.height * 0.02, bottom: size.height * 0.02),
            child: Text(
              "Iniciar Partida",
              style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: size.height * 0.02,
                  fontStyle: FontStyle.normal),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, "/game");
          },
        ),
      ),
    );
  }
}
