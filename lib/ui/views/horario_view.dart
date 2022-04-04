import 'package:flutter/material.dart';

import '../../utils/utilities.dart';

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
    return DefaultTabController(
      length: 5,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        physics: const BouncingScrollPhysics(),
        child: Container(
          constraints: const BoxConstraints(maxWidth: double.infinity),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.white,
                    controller: _tabController,
                    tabs: const [
                      Tab(
                        text: 'Nivel I',
                      ),
                      Tab(
                        text: 'Nivel II y III',
                      ),
                      Tab(
                        text: 'Nivel IV y V',
                      ),
                      Tab(
                        text: 'Nivel VII y VIII',
                      ),
                      Tab(
                        text: 'Nivel IX y X',
                      ),
                    ],
                    labelColor: Colors.white,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () => irAWeb(
                        'https://download1319.mediafire.com/s8zw66ej6yhg/kq45krg4ngaq6cc/Horario+ICI+2022-1++Plan+2957-1+-+V2+%2818-03-2022%29.xlsx'),
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
                //TODO: cambiar todo por un PageView para que se vea mejor
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/img/nivel_I.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/img/nivel_II_III.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/img/nivel_IV_V.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/img/nivel_VII_VIII.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('assets/img/nivel_IX_X.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
