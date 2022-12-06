import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: new Image.asset("lib/images/zome.png"),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Puzzels",
          style: TextStyle(
            color: Colors.pinkAccent,
          ),
        ),
      ),
      body: Column(
        children: [
          // Container(
          //   height: 110,
          //   margin: const EdgeInsets.only(top: 20, left: 10),
          //   child: ListView(
          //     scrollDirection: Axis.horizontal,
          //     children: [
          //       compartment("ashwin", true, "lib/images/zome.jpg"),
          //       compartment("ashwin", true, "lib/images/zome.jpg"),
          //       compartment("ashwin", true, "lib/images/zome.jpg"),
          //       compartment("ashwin", true, "lib/images/zome.jpg"),
          //       compartment("ashwin", true, "lib/images/zome.jpg"),
          //       compartment("ashwin", true, "lib/images/zome.jpg"),
          //     ],
          //   ),
          // ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 5),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Search ",
                    ),
                    onChanged: (value) {},
                    onFieldSubmitted: (val) {},
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SizedBox(
              height: 250,
              child: ListView(
                children: [
                  ListCard(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
