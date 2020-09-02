import 'package:gpx/src/gpx_reader_base.dart';
import 'package:gpx/src/grounspeak/model/gpx_groundspeak_tag.dart';
import 'package:xml/xml_events.dart';

import 'model/cache.dart';

class GpxReaderCache extends GpxReaderBase {
  Cache readCache(Iterator<XmlEvent> iterator) {
    final cache = Cache();
    final elm = iterator.current;

    // String id;
    // bool available;
    // bool archived;

    if (elm is XmlStartElementEvent) {
      cache.id = elm.attributes.firstWhere((attr) => attr.name == GpxTagGroundspeakCache.attr_id).value;
      cache.available =
          _parseBool(elm.attributes.firstWhere((attr) => attr.name == GpxTagGroundspeakCache.attr_available).value);
      cache.archived =
          _parseBool(elm.attributes.firstWhere((attr) => attr.name == GpxTagGroundspeakCache.attr_archived).value);

      if (!elm.isSelfClosing) {
        while (iterator.moveNext()) {
          final val = iterator.current;

          if (val is XmlStartElementEvent) {
            switch (val.name) {
              case GpxTagGroundspeakCache.name:
                cache.name = _readString(iterator, GpxTagGroundspeakCache.name);
                break;
              // String placed_by; // MiJacko  // /groundspeak:placed_by  //
              case GpxTagGroundspeakCache.placedBy:
                cache.placedBy = _readString(iterator, GpxTagGroundspeakCache.placedBy);
                break;
              // User owner; //id="10111927"  // MiJacko (F=373 H=1)  // /groundspeak:owner  //
              case GpxTagGroundspeakCache.owner:
                cache.owner = _readUser(iterator, GpxTagGroundspeakCache.owner);
                break;
              // String type; // Traditional Cache  // /groundspeak:type  //
              case GpxTagGroundspeakCache.type:
                cache.type = _readString(iterator, GpxTagGroundspeakCache.type);
                break;
              // String container; //
              case GpxTagGroundspeakCache.container:
                cache.container = _readString(iterator, GpxTagGroundspeakCache.container);
                break;
              // List<Attribute> attributes; //
              // double difficulty; // 1.5  // /groundspeak:difficulty  //
              case GpxTagGroundspeakCache.difficulty:
                cache.difficulty = double.parse(_readString(iterator, GpxTagGroundspeakCache.difficulty));
                break;
              // double terrain; // 1.5  // /groundspeak:terrain  //
              case GpxTagGroundspeakCache.terrain:
                cache.terrain = double.parse(_readString(iterator, GpxTagGroundspeakCache.terrain));
                break;
              // String country; // France  // /groundspeak:country  //
              case GpxTagGroundspeakCache.container:
                cache.container = _readString(iterator, GpxTagGroundspeakCache.container);
                break;
              // String state; // Grand-Est  // /groundspeak:state  //
              case GpxTagGroundspeakCache.container:
                cache.container = _readString(iterator, GpxTagGroundspeakCache.container);
                break;
              // Desc short_description; // html="False"  //
              // // /groundspeak:short_description  //
              case GpxTagGroundspeakCache.shortDescription:
                cache.shortDescription = _readDesc(iterator, GpxTagGroundspeakCache.shortDescription);
                break;
              // Desc long_description; // html="True" //
              case GpxTagGroundspeakCache.longDescription:
                cache.longDescription = _readDesc(iterator, GpxTagGroundspeakCache.longDescription);
                break;
              // String encoded_hints; //>Glissière  // /groundspeak:encoded_hints>
              case GpxTagGroundspeakCache.container:
                cache.container = _readString(iterator, GpxTagGroundspeakCache.container);
                break;
              // List<Log> logs;
              case GpxTagGroundspeakCache.logs:
                cache.logs = _readLogs(iterator, GpxTagGroundspeakCache.logs);
                break;
              // List<Travelbug> travelbugs;

              case GpxTagGroundspeakCache.travelbugs:
                cache.travelbugs = _readTravelbugs(iterator, GpxTagGroundspeakCache.travelbugs);
                break;
            }
          }

          if (val is XmlEndElementEvent && val.name == GpxTagGroundspeakCache.cache) {
            break;
          }
        }
      }
    }

    return cache;
  }

  bool _parseBool(String value) {
    return "True" == value;
  }

  String _readString(Iterator<XmlEvent> iterator, String name) => super.readString(iterator, name);

  Desc _readDesc(Iterator<XmlEvent> iterator, String tagName) {
    final desc = Desc();

    final elm = iterator.current;

    if (elm is XmlStartElementEvent) {
      desc.html = _parseBool(elm.attributes.firstWhere((attr) => attr.name == GpxTagGroundspeakDesc.attr_html).value);
    }

    desc.text = _readString(iterator, tagName);

    return desc;
  }

  List<Log> _readLogs(Iterator<XmlEvent> iterator, String logs) {
    List<Log> logs = null;

    // TODO

    return logs;
  }

  List<Travelbug> _readTravelbugs(Iterator<XmlEvent> iterator, String travelbugs) {
    List<Travelbug> travelbugs = null;

    // TODO

    return travelbugs;
  }

  User _readUser(Iterator<XmlEvent> iterator, String tagName) {
    var user = User();
    final elm = iterator.current;

    if (elm is XmlStartElementEvent) {
      user.id = elm.attributes.firstWhere((attr) => attr.name == GpxTagGroundspeakUser.attr_id).value;
    }

    if (elm is XmlTextEvent) {
      user.name = elm.text;
    }
    return user;
  }
}
