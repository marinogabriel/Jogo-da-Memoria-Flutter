import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/gameplay_screen.dart';
import 'package:flutter_application_1/screens/laucher_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return ProfileScreenState();
  }
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        title: const Text(
          "Página Inicial",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(right: size.width * 0.035),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: size.height * 0.01),
                      height: size.height * 0.1,
                      padding: EdgeInsets.all(size.height * 0.01),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                          ),
                        ],
                        shape: BoxShape.circle,
                        gradient: LinearGradient(colors: [
                          Colors.black,
                          Colors.red,
                        ]),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(120),
                        child: Image.network(
                            'https://t3.ftcdn.net/jpg/05/16/27/58/360_F_516275801_f3Fsp17x6HQK0xQgDQEELoTuERO4SsWV.jpg'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.width * 0.03),
                  child: Text(
                    "ulisses@ft.unicamp.br",
                    style: TextStyle(
                      fontSize: size.height * 0.018,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.01),
                  child: Text(
                    "Moedas: 5000",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: size.height * 0.013,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.01),
                  child: Text(
                    "Pontos: 2840",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: size.height * 0.013,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.01),
                  child: Text(
                    "Vitórias: 39",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: size.height * 0.013,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.01),
                  child: Text(
                    "Derrotas: 14",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: size.height * 0.013,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.01),
                  child: Text(
                    "Porcentagem de Vitória: 50.6%",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: size.height * 0.013,
                    ),
                  ),
                ),
                playButton(),
                configButton(),
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.25),
                  height: size.height * 0.15,
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
                      Colors.black,
                      Colors.red,
                    ]),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(120),
                      child: Image.asset('../assets/images/BlackJackApp.png')),
                ),
              ],
            ),
          ),
          const VerticalDivider(),
          Padding(
            padding: EdgeInsets.only(right: size.width * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Histórico de Rodadas",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 177, 48, 39),
                      fontSize: size.height * 0.025),
                ),
                SizedBox(
                  height: size.height * 0.8,
                  width: size.width * 0.5,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        trailing: Icon(Icons.verified),
                        title: Text(
                          "Vitória",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: size.height * 0.018,
                          ),
                        ),
                        subtitle: Text('Mesa #42',
                            style: TextStyle(
                              fontSize: size.height * 0.013,
                            )),
                      ),
                      ListTile(
                        trailing: Icon(Icons.ac_unit),
                        title: Text(
                          "Derrota",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: size.height * 0.018,
                          ),
                        ),
                        subtitle: Text('Mesa #1',
                            style: TextStyle(
                              fontSize: size.height * 0.013,
                            )),
                      ),
                      ListTile(
                        trailing: Icon(Icons.verified),
                        title: Text(
                          "Vitória",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: size.height * 0.018,
                          ),
                        ),
                        subtitle: Text('Mesa #2',
                            style: TextStyle(
                              fontSize: size.height * 0.013,
                            )),
                      ),
                      ListTile(
                        trailing: Icon(Icons.verified),
                        title: Text(
                          "Vitória",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: size.height * 0.018,
                          ),
                        ),
                        subtitle: Text('Mesa #42',
                            style: TextStyle(
                              fontSize: size.height * 0.013,
                            )),
                      ),
                      ListTile(
                        title: Text(
                          "Derrota",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: size.height * 0.018,
                          ),
                        ),
                        trailing: Icon(Icons.ac_unit),
                        subtitle: Text('Mesa #4',
                            style: TextStyle(
                              fontSize: size.height * 0.013,
                            )),
                      ),
                      ListTile(
                        title: Text(
                          "Derrota",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: size.height * 0.018,
                          ),
                        ),
                        trailing: Icon(Icons.ac_unit),
                        subtitle: Text('Mesa #42',
                            style: TextStyle(
                              fontSize: size.height * 0.013,
                            )),
                      ),
                      ListTile(
                        title: Text(
                          "Derrota",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: size.height * 0.018,
                          ),
                        ),
                        trailing: Icon(Icons.ac_unit),
                        subtitle: Text('Mesa #3',
                            style: TextStyle(
                              fontSize: size.height * 0.013,
                            )),
                      ),
                      ListTile(
                        title: Text(
                          "Vitória",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: size.height * 0.018,
                          ),
                        ),
                        trailing: Icon(Icons.verified),
                        subtitle: Text('Mesa #42',
                            style: TextStyle(
                              fontSize: size.height * 0.013,
                            )),
                      ),
                      ListTile(
                        trailing: Icon(Icons.ac_unit),
                        title: Text(
                          "Derrota",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: size.height * 0.018,
                          ),
                        ),
                        subtitle: Text('Mesa #4',
                            style: TextStyle(
                              fontSize: size.height * 0.013,
                            )),
                      ),
                      ListTile(
                        trailing: Icon(Icons.ac_unit),
                        title: Text(
                          "Derrota",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: size.height * 0.018,
                          ),
                        ),
                        subtitle: Text('Mesa #42',
                            style: TextStyle(
                              fontSize: size.height * 0.013,
                            )),
                      ),
                      ListTile(
                        title: Text(
                          "Vitória",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: size.height * 0.018,
                          ),
                        ),
                        trailing: Icon(Icons.verified),
                        subtitle: Text('Mesa #33',
                            style: TextStyle(
                              fontSize: size.height * 0.013,
                            )),
                      ),
                      ListTile(
                        trailing: Icon(Icons.verified),
                        title: Text(
                          "Vitória",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: size.height * 0.018,
                          ),
                        ),
                        subtitle: Text('Mesa #2',
                            style: TextStyle(
                              fontSize: size.height * 0.013,
                            )),
                      ),
                      ListTile(
                        trailing: Icon(Icons.verified),
                        title: Text(
                          "Vitória",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: size.height * 0.018,
                          ),
                        ),
                        subtitle: Text('Mesa #17',
                            style: TextStyle(
                              fontSize: size.height * 0.013,
                            )),
                      ),
                      ListTile(
                        trailing: Icon(Icons.verified),
                        title: Text(
                          "Vitória",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: size.height * 0.018,
                          ),
                        ),
                        subtitle: Text('Mesa #4',
                            style: TextStyle(
                              fontSize: size.height * 0.013,
                            )),
                      ),
                      ListTile(
                        trailing: Icon(Icons.ac_unit),
                        title: Text(
                          "Derrota",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: size.height * 0.018,
                          ),
                        ),
                        subtitle: Text('Mesa #7',
                            style: TextStyle(
                              fontSize: size.height * 0.013,
                            )),
                      ),
                    ],
                  ),
                ),
                logoutButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget logoutButton() {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.020),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 255, 0, 38),
        ),
        child: Padding(
          padding: EdgeInsets.all(size.height * 0.010),
          child: Text(
            "Sair",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: size.height * 0.013,
                fontStyle: FontStyle.normal),
          ),
        ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            backgroundColor: Color.fromARGB(255, 153, 0, 0),
            builder: (context) {
              return Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Tem certeza que deseja sair?",
                          style: GoogleFonts.poppins(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: size.height * 0.02,
                          ),
                        ),
                        TextButton(
                            child: Text(
                              "Sim",
                              style: GoogleFonts.poppins(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: size.height * 0.015,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                              Navigator.of(context).pop();
                            }),
                        TextButton(
                            child: Text(
                              "Não",
                              style: GoogleFonts.poppins(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: size.height * 0.015,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                      ],
                    ),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget playButton() {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.05),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 0, 183, 255),
        ),
        child: Padding(
          padding: EdgeInsets.all(size.height * 0.010),
          child: Text(
            "Jogar",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: size.height * 0.015,
                fontStyle: FontStyle.normal),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LauncherScreen()),
          );
        },
      ),
    );
  }

  Widget configButton() {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.05),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 155, 45, 2),
        ),
        child: Padding(
          padding: EdgeInsets.all(size.height * 0.010),
          child: Text(
            "Configurações",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: size.height * 0.015,
                fontStyle: FontStyle.normal),
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}