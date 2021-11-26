import 'package:fluro/fluro.dart';

import 'package:web_ubb/routers/handlers/route_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static String rootRoute = '/';
  static String horarioRoute = '/horario';

  static void configureRoutes() {
    /**
      //! Ruta inicial
     */
    router.define(rootRoute,
        handler: RouteHandlers.rootHandler,
        transitionType: TransitionType.fadeIn);
    /**
      //! Ruta Horario
     */
    router.define(horarioRoute,
        handler: RouteHandlers.horarioHandler,
        transitionType: TransitionType.fadeIn);

    /**
     //! Ruta 404
     */
    router.notFoundHandler = RouteHandlers.notFoundPageHandler;
  }
}
