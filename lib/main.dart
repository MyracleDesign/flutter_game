import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flame/util.dart';
import 'package:flutter/services.dart';

import 'game-demo.dart';

void main() async {
  Util flameUtil = Util();
  await flameUtil.fullScreen();
  await flameUtil.setOrientation(DeviceOrientation.portraitUp);

  GameDemo game = new GameDemo();
  runApp(game.widget);

  TapGestureRecognizer tapper = TapGestureRecognizer();
  tapper.onTapDown = game.onTabDown;
  flameUtil.addGestureRecognizer(tapper);
}
