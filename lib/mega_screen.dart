import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class MegaScreen extends StatefulWidget {
  const MegaScreen({Key key}) : super(key: key);

  @override
  State<MegaScreen> createState() => _MegaScreenState();
}

class _MegaScreenState extends State<MegaScreen> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 50,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'MEGA',
              style: TextStyle(fontSize: 50),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 50),
                child: Stack(
                  children: [
                    Container(
                      height: 210,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 30),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            textBaseline: TextBaseline.alphabetic,
                            children: const [
                              Icon(Icons.door_front_door,
                                  color: Colors.white, size: 50),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Text(
                                  'Door',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 5,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Normall',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 30),
                            child: Row(
                              children: [
                                CustomSwitch(
                                  value: isSwitch,
                                  activeColor: Colors.blue,
                                  onChanged: (value){
                                    setState(() {
                                      isSwitch = value;
                                    });
                                    print(value);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
