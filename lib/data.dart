import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';

final defaultInitialReaction = Reaction(
  icon: Text('No raction'),
);

final reactions = [
  Reaction(
    title: _buildTitle('Happy'),
    previewIcon: _buildReactionsPreviewIcon('assets/images/happy.png'),
    icon: _buildReactionsIcon(
      'assets/images/happy.png',
      Text(
        'Happy',
        style: TextStyle(
          color: Color(0XFF3b5998),
        ),
      ),
    ),
  ),
  Reaction(
    title: _buildTitle('Angry'),
    previewIcon: _buildReactionsPreviewIcon('assets/images/angry.png'),
    icon: _buildReactionsIcon(
      'assets/images/angry.png',
      Text(
        'Angry',
        style: TextStyle(
          color: Color(0XFFed5168),
        ),
      ),
    ),
  ),
  Reaction(
    title: _buildTitle('In love'),
    previewIcon: _buildReactionsPreviewIcon('assets/images/in-love.png'),
    icon: _buildReactionsIcon(
      'assets/images/in-love.png',
      Text(
        'In love',
        style: TextStyle(
          color: Color(0XFFffda6b),
        ),
      ),
    ),
  ),
  Reaction(
    title: _buildTitle('Sad'),
    previewIcon: _buildReactionsPreviewIcon('assets/images/sad.png'),
    icon: _buildReactionsIcon(
      'assets/images/sad.png',
      Text(
        'Sad',
        style: TextStyle(
          color: Color(0XFFffda6b),
        ),
      ),
    ),
  ),
];

Widget _buildTitle(String title) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 7.5, vertical: 2.5),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

Widget _buildReactionsPreviewIcon(String path) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.5, vertical: 5),
      child: Image.asset(path, height: 40),
    );

Widget _buildReactionsIcon(String path, Text text) => Container(
      color: Colors.transparent,
      child: Row(
        children: <Widget>[
          Image.asset(path, height: 20),
          const SizedBox(width: 5), //icon
          text,
        ],
      ),
    );
