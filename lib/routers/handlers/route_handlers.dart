import 'package:fluro/fluro.dart';

import 'package:web_ubb/ui/views/home_view.dart';
import 'package:web_ubb/ui/views/horario_view.dart';
import 'package:web_ubb/ui/views/not_found_page.dart';

class RouteHandlers {
  static Handler rootHandler = Handler(handlerFunc: (context, params) {
    return const HomeView();
  });

  static Handler horarioHandler = Handler(handlerFunc: (context, params) {
    return const HorarioView();
  });

  static Handler notFoundPageHandler = Handler(handlerFunc: (context, params) {
    return const NotFoundPageView();
  });
}
