import 'package:flutter/material.dart';

enum PopUpItems {
  itemOne(Icon(Icons.star)),
  itemTwo(Icon(Icons.share));

  const PopUpItems(this.value);
  final Icon value;
}
