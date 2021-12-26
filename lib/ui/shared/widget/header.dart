import 'package:flutter/material.dart';
import 'package:web_ubb/routers/router.dart';
import 'package:web_ubb/services/navigation_service.dart';
import 'package:web_ubb/ui/core/theme/app_theme.dart';
import 'package:web_ubb/utils/utilities.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 25),
                    width: 200,
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/logoubb.png'),
                      ),
                      color: Colors.transparent,
                    ),
                  ),
                  GestureDetector(
                    onTap: () =>
                        NavigatorService.navigateTo(Flurorouter.rootRoute),
                    child: const MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Text(
                          'Ingeniería Civil en Informática',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: AppThemeCustom.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
            GestureDetector(
              onTap: () => irAWeb('https://www.ubiobio.cl'),
              child: Container(
                constraints: const BoxConstraints(
                  maxWidth: 270,
                ),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Container(
                    margin: const EdgeInsets.only(right: 45, top: 30),
                    width: 270,
                    height: 32,
                    decoration: BoxDecoration(
                        color: AppThemeCustom.secondaryColor,
                        borderRadius: BorderRadius.circular(30)),
                    child: const Center(
                        child: Text(
                      'Universidad del Bío-Bío',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
