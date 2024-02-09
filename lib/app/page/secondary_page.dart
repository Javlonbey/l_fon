import 'package:flutter/material.dart';
import 'package:l_fon/app/app_color.dart';
import 'package:l_fon/app/model/home_model.dart';

class SecondaryPage extends StatelessWidget {
  const SecondaryPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 266,
      left: 10,
      right: 10,
      bottom: 240,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SizedBox(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: (MediaQuery.of(context).size.width -
                                  10 -
                                  10 -
                                  10) /
                              3,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.blgreyColor,
                            image: DecorationImage(
                              image: AssetImage(
                                imageUrl1[index],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          padding: const EdgeInsets.only(top: 20),
                        ),
                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            intText[index],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: AppColors.blakColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: (MediaQuery.of(context).size.width -
                                  10 -
                                  10 -
                                  10) /
                              3,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.blgreyColor,
                            image: DecorationImage(
                              image: AssetImage(
                                imageUrl2[index],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            intText2[index],
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: AppColors.blakColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
