import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';

import 'data.dart' as Data;

class Item extends StatefulWidget {
  final String title;
  final String imgPath;
  final List<Reaction> reactions;

  const Item(this.title, this.imgPath, this.reactions);

  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      elevation: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 2,
              child: Image.asset(
                widget.imgPath,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              height: 1,
              color: Colors.grey[300],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .2,
                    // ここでリアクションボタンのセクションを実装
                    child: FittedBox(
                      child: FlutterReactionButtonCheck(
                        onReactionChanged: (reaction, index, isChecked) {
                          print('reaction selected index test: $index');
                        },
                        reactions: widget.reactions,
                        initialReaction: Data.defaultInitialReaction,
                        selectedReaction: widget.reactions[1],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              height: 1,
              color: Colors.grey[200],
            ),
          ],
        ),
      ),
    );
  }
}
