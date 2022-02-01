import 'package:flutter/material.dart';

class BottomNavigationCurve extends StatefulWidget {
  const BottomNavigationCurve({Key? key}) : super(key: key);

  @override
  State<BottomNavigationCurve> createState() => _BottomNavigationCurveState();
}

class _BottomNavigationCurveState extends State<BottomNavigationCurve> {
  @override
  Widget build(BuildContext context) {
    int currentTab = 0;
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("Custom Painter"),
      ),
      body: Scaffold(
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              BottomAppBar(
                shape: CircularNotchedRectangle(),
                notchMargin: 10,
                child: Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                // currentScreen = Dashboard();
                                currentTab = 0;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.dashboard,
                                  color: currentTab == 0
                                      ? Colors.blue
                                      : Colors.grey,
                                ),
                                Text(
                                  "Dashboard",
                                  style: TextStyle(
                                      color: currentTab == 0
                                          ? Colors.blue
                                          : Colors.grey),
                                )
                              ],
                            ),
                          ),
                          MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                // currentScreen = Chat();
                                currentTab = 1;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.message,
                                  color: currentTab == 1
                                      ? Colors.blue
                                      : Colors.grey,
                                ),
                                Text(
                                  "Chat",
                                  style: TextStyle(
                                      color: currentTab == 1
                                          ? Colors.blue
                                          : Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Text(
                          "Add Event",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                // currentScreen = Profile();
                                currentTab = 2;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: currentTab == 2
                                      ? Colors.blue
                                      : Colors.grey,
                                ),
                                Text(
                                  "Profile",
                                  style: TextStyle(
                                      color: currentTab == 2
                                          ? Colors.blue
                                          : Colors.grey),
                                )
                              ],
                            ),
                          ),
                          MaterialButton(
                            minWidth: 40,
                            onPressed: () {
                              setState(() {
                                // currentScreen = Setting();
                                currentTab = 3;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.settings,
                                  color: currentTab == 3
                                      ? Colors.blue
                                      : Colors.grey,
                                ),
                                Text(
                                  "Settings",
                                  style: TextStyle(
                                      color: currentTab == 3
                                          ? Colors.blue
                                          : Colors.grey),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
