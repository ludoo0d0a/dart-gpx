/// A cache from groundspeak geocaching
class Cache {
  // id="7573230" available="True" archived="False"
  String id;
  bool available;
  bool archived;

  String name; // Les demi-arbres  // /groundspeak:name  //
  String placedBy; // MiJacko  // /groundspeak:placed_by  //
  User owner; //id="10111927"  // MiJacko (F=373 H=1)  // /groundspeak:owner  //
  String type; // Traditional Cache  // /groundspeak:type  //
  String container; // Micro  // /groundspeak:container  //
  List<Attribute> attributes;
  double difficulty; // 1.5  // /groundspeak:difficulty  //
  double terrain; // 1.5  // /groundspeak:terrain  //
  String country; // France  // /groundspeak:country  //
  String state; // Grand-Est  // /groundspeak:state  //
  Desc shortDescription;
  Desc longDescription;
  String encodedHints;
  List<Log> logs;
  List<Travelbug> travelbugs;

  @override
  String toString() => "Cache[${[
        id,
        name,
        available,
        archived,
        placedBy,
        type,
        container,
        difficulty,
        terrain,
        country,
        state,
        shortDescription,
        encodedHints
      ].join(",")}]";

  // @override
  // int get hashCode => hashObjects([
  //       id,
  //       name,
  //       available,
  //       archived,
  //       placedBy,
  //       type,
  //       container,
  //       difficulty,
  //       terrain,
  //       country,
  //       state,
  //       shortDescription,
  //       encodedHints
  //     ]);
}

class Log {
  String id;
  DateTime date;
  String type;
  User finder;
  String text;
  bool encoded;

  @override
  String toString() => "Log[${[id, date, type, finder, text, encoded].join(",")}]";
}

class Travelbug {}

class Desc {
  bool html;
  String text;

  @override
  String toString() => "Desc[${[html, text].join(",")}]";
}

class User {
  String id;
  String name;

  @override
  String toString() => "User[${[id, name].join(",")}]";
}

class Attribute {
  String id;
  String inc;
  String text;

  @override
  String toString() => "Attribute[${[id, inc, text].join(",")}]";
}
