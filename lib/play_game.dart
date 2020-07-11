import 'package:flutter/material.dart';
import 'package:landmark_quiz_app/tile.dart';

import 'level.dart';

class PlayGame extends StatefulWidget {
  @override
  _PlayGameState createState() => _PlayGameState();
}

class _PlayGameState extends State<PlayGame> {
  List<bool> clicked;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tileList = getTileList();
    levelList.add(new Level(1, 5, 3));
    levelList.add(new Level(2, 3, 4));
    levelList.add(new Level(3, 1, 8));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Stack(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                child: Image.asset('assets/1.jpeg', fit: BoxFit.cover)
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              child: TileList(),
            )
          ],
        );
  }

  Widget TileList() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: GridView(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: MediaQuery.of(context).size.width / levelList[0].maxCrossAxisExtent,
          mainAxisSpacing: 0.0,
        ),
        children: List.generate(levelList[0].maxCrossAxisExtent * levelList[0].maxCrossAxisExtent, (index) {
          return Tile(parent: this, tileIndex: index);
        }),
      ),
    );
  }
}

class Tile extends StatefulWidget {
  int tileIndex;
  _PlayGameState parent;

  Tile({this.parent, this.tileIndex});
  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap:() {
          setState(() {
            tileList[widget.tileIndex].setIsSelected(true);
          });
        },
        child: Container(
          margin: EdgeInsets.all(10),
          color: tileList[widget.tileIndex].getIsSelected() ? Colors.white.withOpacity(0) : Colors.black,
        )
    );
  }
}
