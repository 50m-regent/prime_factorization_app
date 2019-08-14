import 'package:flutter/material.dart';

Size _displaySize;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Title(),
    );
  }
}

class Title extends StatelessWidget {
  Widget _button(String title, {Function onPressed}) {
    return FlatButton(
      onPressed: onPressed,
      child: Container(
        width: _displaySize.width / 2,
        height: _displaySize.width / 6,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(width: 3),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    _displaySize = MediaQuery.of(context).size;

    final Widget _title = Text(
      '素因数分解\nコロシアム',
      style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    );

    final Widget _startButton = _button(
      'Start',
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (BuildContext context, Animation animation, Animation secondaryAnimation) {
              return Game();
            },
          ),
        );
      },
    );
    final Widget _profileButton = _button(
      'Profile',
      onPressed: () {},
    );
    final Widget _rankingButton = _button(
      'Ranking',
      onPressed: () {},
    );

    final Widget _buttons = Container(
      height: _displaySize.height / 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _startButton,
          _profileButton,
          _rankingButton,
        ],
      ),
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _title,
            _buttons,
          ],
        ),
      ),
    );
  }
}

class Game extends StatefulWidget {
  createState() {
    return _GameState();
  }
}

class _GameState extends State<Game> {
  int _num;

  Widget _number() {
    return Text(
      '$_num',
    );
  }

  Widget _tenkey() {

  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _number(),
            //_tenkey,
          ],
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container();
  }
}
