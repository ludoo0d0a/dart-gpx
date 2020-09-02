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
}
