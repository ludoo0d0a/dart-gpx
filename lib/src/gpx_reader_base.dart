import 'package:xml/xml_events.dart';

class GpxReaderBase {
  String readString(Iterator<XmlEvent> iterator, String tagName) {
    final elm = iterator.current;
    if (!(elm is XmlStartElementEvent && elm.name == tagName && !elm.isSelfClosing)) {
      return null;
    }

    var string = '';
    while (iterator.moveNext()) {
      final val = iterator.current;

      if (val is XmlTextEvent) {
        string += val.text;
      }

      if (val is XmlEndElementEvent && val.name == tagName) {
        break;
      }
    }

    return string;
  }

  DateTime readDate(Iterator<XmlEvent> iterator, String name) {
    return DateTime.parse(readString(iterator, name));
  }

  double readDouble(Iterator<XmlEvent> iterator, String name) {
    return double.parse(readString(iterator, name));
  }

  int readInt(Iterator<XmlEvent> iterator, String name) {
    return int.parse(readString(iterator, name));
  }

  bool parseBool(String value) {
    return "True" == value;
  }

  String getAttributeValue(XmlStartElementEvent elm, String tagName) =>
      elm.attributes.firstWhere((attr) => attr.name == tagName).value;

  // String _readString(Iterator<XmlEvent> iterator, String name) => super.readString(iterator, name);

}
