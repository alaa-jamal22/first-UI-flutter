import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: const Color.fromARGB(182, 0, 0, 0),
                title: const Text("GitHub"),
              ),
              body: Column(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(600)),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color.fromARGB(255, 0, 0, 0),
                              Color.fromRGBO(0, 0, 0, 0.748),
                            ]),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      child: Center(
                          child: CircleAvatar(
                        backgroundImage: AssetImage(
                            "asses/image/b37b05a713d8eebcbb475119e587859b.jpg"),
                        radius: 55,
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(600)),
                          gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: [
                                Color.fromARGB(255, 0, 0, 0),
                                Color.fromRGBO(0, 0, 0, 0.748),
                              ])),
                    ),
                  )
                ],
              )),
        ));
  }
}
