import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_ubb/routers/router.dart';
import 'package:web_ubb/services/navigation_service.dart';
import 'package:web_ubb/ui/core/theme/app_theme.dart';
import 'package:web_ubb/ui/shared/widget/custom_button.dart';
import 'package:web_ubb/ui/shared/widget/header.dart';
import 'package:web_ubb/utils/utilities.dart';

class MobileMode extends StatelessWidget {
  final Widget child;
  const MobileMode({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/fondo.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const FittedBox(
            fit: BoxFit.fill,
            child: Header(),
          ),
          Container(
            width: 400,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppThemeCustom.secondaryColor,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => irAWeb('https://intranet.ubiobio.cl/intranet/'),
                  child: const ButtonCustom(
                    icon: Icons.school_rounded,
                    text: 'Intranet',
                  ),
                ),
                GestureDetector(
                  onTap: () => irAWeb(
                      'https://arrau.chillan.ubiobio.cl/sistemaici/web/index.php/noticia/indexPortada/'),
                  child: const ButtonCustom(
                    icon: Icons.apartment_sharp,
                    text: 'ARRAU',
                  ),
                ),
                GestureDetector(
                  onTap: () => irAWeb('http://webface.ubiobio.cl/'),
                  child: const ButtonCustom(
                    icon: Icons.account_tree_rounded,
                    text: 'FACE',
                  ),
                ),
                GestureDetector(
                  onTap: () =>
                      NavigatorService.navigateTo(Flurorouter.horarioRoute),
                  child: const ButtonCustom(
                    icon: Icons.calendar_today_rounded,
                    text: 'Horario',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () async {},
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Row(
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.solidAddressCard,
                          color: Colors.white,
                          size: 32,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Malla Curricular',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () => irAWeb('https://ubiobio.cl/admision/'),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Row(
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.solidAddressBook,
                          color: Colors.white,
                          size: 32,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Admisión UBB',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: child,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            width: 250,
            height: 65,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/acreditacion.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
