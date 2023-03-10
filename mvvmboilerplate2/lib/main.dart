import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);
  static final List<Widget> _widgetOptions = <Widget>[
    Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff7c94b6),
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.amber.withOpacity(0.2), BlendMode.dstATop),
          image: const NetworkImage(
            'https://lh3.googleusercontent.com/lMGMrNKNBJOUkYPh58Lr5o6wy5L-2EM8l0mDLKv2HUtnM3RLfQ9XaFbhFz0JtjQLYqE9nePKhpKqOba37h2BtKBJUh6Rx2Jh-3arGzRvXg',
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Home',
            style: optionStyle,
          ),
        ],
      ),
    ),
    Container(
      decoration: BoxDecoration(color: Colors.teal),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Business',
            style: optionStyle,
          ),
        ],
      ),
    ),
    Container(
      // width: 1000,
      // height: 1000,
      decoration: BoxDecoration(color: Colors.grey),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'School',
            style: optionStyle,
          ),
        ],
      ),
    ),
  ];

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool selected = false;

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[800]?.withOpacity(0.5),
        title: const Text('App Bar '),
        actions: [
          IconButton(
            icon: Icon(Icons.forward),
            onPressed: () {
              // do something when the button is pressed
            },
          ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            MyStatefulWidget._widgetOptions.elementAt(_selectedIndex),
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Center(
                child: AnimatedContainer(
                  width: selected ? 200.0 : 100.0,
                  height: selected ? 100.0 : 200.0,
                  color: selected ? Colors.amber : Colors.transparent,
                  alignment: selected
                      ? Alignment.center
                      : AlignmentDirectional.topCenter,
                  duration: const Duration(seconds: 2),
                  curve: Curves.fastOutSlowIn,
                  child: const FlutterLogo(size: 75),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
