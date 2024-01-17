import 'package:aic_njoro/screens/announcements.dart';
import 'package:aic_njoro/screens/church_home.dart';
import 'package:aic_njoro/screens/events.dart';
import 'package:aic_njoro/screens/main_screen.dart';
import 'package:aic_njoro/screens/sermons.dart';
import 'package:flutter/cupertino.dart';

class NRouter {
  static const String CONNECT = 'CONNECT';
  static const String EVENTS = 'EVENTS';
  static const String SERMONS = 'SERMONS';
  static const String CHECKIN = 'CHECKIN';
  static const String ANNOUNCEMENTS = 'ANNOUNCEMENTS';
  static const String TESTIMONIALS = 'TESTIMONIALS';
  static const String GIVE = 'GIVE';
  static const String WEBSITE = 'WEBSITE';
  static const String PROGRAMMES = 'PROGRAMMES';
  static const String SOCIAL = 'SOCIAL';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case CONNECT:
        // CONNECT hasn't been implemented yet
        return CupertinoPageRoute(builder: (_) => ChurchHome());
      case EVENTS:
        return CupertinoPageRoute(builder: (_) => EventsPage());
      case SERMONS:
        return CupertinoPageRoute(builder: (_) => SermonsPage());
      case CHECKIN:
        // CHECKIN hasn't been implemented yet
        return CupertinoPageRoute(builder: (_) => ChurchHome());
      case ANNOUNCEMENTS:
        return CupertinoPageRoute(builder: (_) => const Announcements());
      case TESTIMONIALS:
        return CupertinoPageRoute(builder: (_) => ChurchHome());
      case GIVE:
        // GIVE hasn't been implemented yet
        return CupertinoPageRoute(builder: (_) => ChurchHome());
      case WEBSITE:
        // WEBSITE hasn't been implemented yet
        return CupertinoPageRoute(builder: (_) => ChurchHome());
      case PROGRAMMES:
        // PROGRAMMES hasn't been implemented yet
        return CupertinoPageRoute(builder: (_) => ChurchHome());
      case SOCIAL:
        // SOCIAL hasn't been implemented yet
        return CupertinoPageRoute(builder: (_) => ChurchHome());
      default:
        return CupertinoPageRoute(builder: (_) => const MainScreen());
    }
  }
}
