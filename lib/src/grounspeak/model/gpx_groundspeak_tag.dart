/// GPX tags names.
///
///
class GpxTagGroundspeakCache {
  static const ns = 'groundspeak';
  static const cache = '${GpxTagGroundspeakCache.ns}:cache';

  /// Attributes
  static const attr_id = 'id';
  static const attr_archived = 'archived';
  static const attr_available = 'available';

  static const name = '${GpxTagGroundspeakCache.ns}:name';
  static const placedBy = '${GpxTagGroundspeakCache.ns}:placed_by';
  static const owner = '${GpxTagGroundspeakCache.ns}:owner';
  static const type = '${GpxTagGroundspeakCache.ns}:type';
  static const container = '${GpxTagGroundspeakCache.ns}:container';
  static const attributes = '${GpxTagGroundspeakCache.ns}:attributes';
  static const difficulty = '${GpxTagGroundspeakCache.ns}:difficulty';
  static const terrain = '${GpxTagGroundspeakCache.ns}:terrain';
  static const country = '${GpxTagGroundspeakCache.ns}:country';
  static const state = '${GpxTagGroundspeakCache.ns}:state';
  static const shortDescription = '${GpxTagGroundspeakCache.ns}:short_description';
  static const longDescription = '${GpxTagGroundspeakCache.ns}:long_description';
  static const encodedHints = '${GpxTagGroundspeakCache.ns}:encoded_hints';
  static const logs = '${GpxTagGroundspeakCache.ns}:logs';
  static const travelbugs = '${GpxTagGroundspeakCache.ns}:travelbugs';
}

class GpxTagGroundspeakLog {
  /// Attributes
  static const attr_id = 'id';

  static const date = '${GpxTagGroundspeakCache.ns}:date';
  static const type = '${GpxTagGroundspeakCache.ns}:type';
  static const finder = '${GpxTagGroundspeakCache.ns}:finder';
  static const text = '${GpxTagGroundspeakCache.ns}:text';
  static const encoded = '${GpxTagGroundspeakCache.ns}:encoded';
}

class GpxTagGroundspeakTravelbug {}

class GpxTagGroundspeakState {}

class GpxTagGroundspeakDesc {
  /// Attributes
  static const attr_html = 'html';

  static const text = '${GpxTagGroundspeakCache.ns}:text';
}

class GpxTagGroundspeakUser {
  /// Attributes
  static const attr_id = 'id';

  static const name = '${GpxTagGroundspeakCache.ns}:name';
}

class GpxTagGroundspeakAttribute {
  /// Attributes
  static const attr_id = 'id';
  static const attr_inc = 'inc';

  static const text = '${GpxTagGroundspeakCache.ns}:text';
}
