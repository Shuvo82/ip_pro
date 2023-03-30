import 'package:flutter/material.dart';
import 'package:ip_pro/widgets/my_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String ip = "192.168.0.1";
  TextEditingController ipInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        //backgroundColor: Image.asset('assets/images/bg_highlight.png').color,
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg_highlight.png"),
              ),
              color: Color(0xff331962),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 100,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 27, vertical: 10),
                  child: TextField(
                    controller: ipInput,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(73.2),
                        ),
                      ),
                      fillColor: Color(0xff1e0c3f),
                      filled: true,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyButton(
                        text: "My IP",
                        icon_path: "assets/images/my_ip.png",
                        onPressed: () {}),
                    MyButton(
                        text: "Get Info",
                        icon_path: "assets/images/get_info.png",
                        onPressed: () {})
                  ],
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Information about the IP",
                        style: TextStyle(
                          color: Color(0xff917cbb),
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        ip,
                        style: const TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: SingleChildScrollView(
                    child: Container(
                      //color: Colors.red.shade100,
                      height: 300,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.,
                            children: [
                              const Text(
                                "City",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Dhagyifyumka",
                                style: TextStyle(
                                    color: Color(0xffa8a8a8), fontSize: 20),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "City",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Dhaka",
                                style: TextStyle(
                                    color: Color(0xffa8a8a8), fontSize: 20),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
