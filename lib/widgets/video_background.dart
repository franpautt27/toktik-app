import 'package:flutter/material.dart';

class VideoBackground extends StatelessWidget {
  final List<Color> colors;
  final List<double> stops;
  const VideoBackground(
      {Key? key, this.stops = const [0, 1], this.colors = const [Colors.transparent, Colors.black87]})
      : assert(colors.length == stops.length, "Stops and colors must have the same length"), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: DecoratedBox(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: colors,
        stops: stops,
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
      )),
    ));
  }
}
