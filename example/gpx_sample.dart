import 'dart:io';

import 'package:gpx/gpx.dart';

// Future<String> get _localPath async {
//   final directory = await getApplicationDocumentsDirectory();
//
//   return directory.path;
// }

// Future<File> get _localFile async {
//   // final path = await _localPath;
//   return File('/Volumes/data/samples/GeoCaches.gpx');
// }

Future<void> main() async {
  // create gpx-xml from object
  // final gpx = Gpx();

  // final file = await _localFile;
  Directory current = Directory.current;
  print(current.path);
  print(' ');
  final file = File('${current.path}/example/samples/GeoCaches.gpx');
  // final file = File('${current.path}/samples/GeoCaches.gpx');
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

  print(wp0.cache);
  print(wp0.cache.shortDescription);
  print(wp0.cache.longDescription);

  // print(xmlGpx);
}
