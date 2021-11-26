import 'package:flutter/material.dart';
import 'package:web_ubb/utils/utilities.dart';

class HorarioView extends StatefulWidget {
  const HorarioView({Key? key}) : super(key: key);

  @override
  State<HorarioView> createState() => _HorarioViewState();
}

class _HorarioViewState extends State<HorarioView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final _tabController = TabController(length: 5, vsync: this);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              TabBar(
                indicatorColor: Colors.white,
                controller: _tabController,
                isScrollable: true,
                tabs: const [
                  Tab(
                    text: 'Nivel I y II',
                  ),
                  Tab(
                    text: 'Nivel III y IV',
                  ),
                  Tab(
                    text: 'Nivel V y VI',
                  ),
                  Tab(
                    text: 'Nivel VII y VIII',
                  ),
                  Tab(
                    text: 'Nivel X',
                  ),
                ],
                labelColor: Colors.white,
              ),
              const Spacer(),
              IconButton(
                //TODO: Hacer que se haga la descarga del horario
                onPressed: () => irAWeb(
                    'https://mail-attachment.googleusercontent.com/attachment/u/0/?ui=2&ik=a93460ce0e'),
                icon: Icon(
                  Icons.download_rounded,
                  color: Colors.green[800],
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
          SizedBox(
            height: 600,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/img/nivel_I_y_II.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/img/nivel_III_y_IV.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/img/nivel_V_y_VI.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/img/nivel_VII_y_VIII.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/img/nivel_X.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
