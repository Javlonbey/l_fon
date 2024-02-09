import 'package:flutter/material.dart';
import 'package:l_fon/app/app_color.dart';
import 'package:l_fon/app/page/content_page.dart';
import 'package:l_fon/app/page/secondary_page.dart';
import 'package:l_fon/app/widgets/my_listwidgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 47),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: [
                              Container(
                                height: 45,
                                width: 270,
                                decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(7)),
                                child: TextField(
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: AppColors.whiteColor),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    hintText: "Я ищу...",
                                    hintStyle: const TextStyle(
                                        color: AppColors.lolgreyColor),
                                    prefixIcon: const Icon(Icons.search),
                                  ),
                                ),
                              ),
                              SizedBox(width: 38),
                              const Text(
                                'Фильтр',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppColors.greenColor,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Expanded(
                          child: MyListwidgets(),
                        ),
                        const SizedBox(height: 670),
                      ],
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 190,
                      bottom: 420,
                      child: Center(
                        child: Container(
                          color: Colors.transparent,
                          padding: const EdgeInsets.only(top: 20),
                          child: const Text(
                            'Работа в два клика',
                            style: TextStyle(
                              fontSize: 20,
                              color: AppColors.blakColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SecondaryPage(),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(top: 590),
                      child: Container(
                        height: 100,
                        color: Colors.green,
                        width: 420,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 35),
                              child: Text(
                                'Выгодна на lalafo!',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: AppColors.blakColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/images/MA.jpg',
                              height: 95,
                              width: 141,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 730),
                      child: ContentPage(),
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
