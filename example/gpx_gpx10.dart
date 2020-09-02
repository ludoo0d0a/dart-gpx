import 'dart:io';

import 'package:gpx/gpx.dart';

Future<void> main() async {
  Directory current = Directory.current;
  print(current.path);
  print(' ');
  final file = File('${current.path}/example/samples/gpx10.gpx');
  final contents = await file.readAsString();
  final xmlGpx = GpxReader().fromString(contents);
  print("version: ${xmlGpx.version}");
  print("creator: ${xmlGpx.creator}");
  print("author: ${xmlGpx.metadata.author}");
  print("desc: ${xmlGpx.metadata.desc}");
  print("version: ${xmlGpx.version}");
  print("${xmlGpx.wpts.length} wpts");

  Wpt wp0 = xmlGpx.wpts[0];
  print("wp0: ${wp0}");

  print(xmlGpx);
}
