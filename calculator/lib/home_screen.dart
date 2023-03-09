import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
  var list2 = ['DEL', 'C', '+', '='];
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalküleytır'),
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: screenWidth / 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: list.map((e) {
                      return Container(
                        key: Key(e.toString()),
                        width: 100,
                        height: 100,
                        color: Colors.grey,
                        child: Center(
                            child: Text(
                          e.toString(),
                          style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      );
                    }).toList(),
                  ),
                ),
                // Expanded(
                //   child: GridView.builder(
                //     shrinkWrap: true,
                //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 4,
                //       crossAxisSpacing: 10,
                //       mainAxisSpacing: 10,
                //     ),
                //     itemCount: list.length,
                //     itemBuilder: (BuildContext context, int index) {
                //       return Container(
                //         key: Key(index.toString()),
                //         width: 100,
                //         height: 100,
                //         color: Colors.grey,
                //         child: Text(list.elementAt(index).toString()),
                //       );
                //     },
                //   ),
                // ),
                Container(
                  height: screenWidth / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: list2.map((e) {
                      return Container(
                        key: Key(e.toString()),
                        width: 100,
                        height: 100,
                        color: Colors.amber,
                        child: Center(
                          child: Text(
                            e.toString(),
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
                // Flexible(
                //   child: GridView.builder(
                //     scrollDirection: Axis.horizontal,
                //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 4,
                //       crossAxisSpacing: 10,
                //       mainAxisSpacing: 10,
                //     ),
                //     itemCount: list2.length,
                //     itemBuilder: (BuildContext context, int index) {
                //       return Container(
                //         key: Key(index.toString()),
                //         width: 100,
                //         height: 100,
                //         color: Colors.amber,
                //         child: Text(list2.elementAt(index).toString()),
                //       );
                //     },
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
