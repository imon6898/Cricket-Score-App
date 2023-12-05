import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String addressText1;
  final String addressText2;
  final String addressText3;
  final String liveText;
  final String leftCountryImage;
  final String leftRunText;
  final String leftWicketText;
  final String leftOversText;
  final String vsImage;
  final String rightRunText;
  final String rightWicketText;
  final String rightOversText;
  final String rightCountryImage;
  final String leftCountryName;
  final String rightCountryName;
  final String tossImage;
  final String tossWinnwerText;
  final String predictionText;

  CustomCard({
    required this.addressText1,
    required this.addressText2,
    required this.addressText3,
    required this.liveText,
    required this.leftCountryImage,
    required this.leftRunText,
    required this.leftWicketText,
    required this.leftOversText,
    required this.vsImage,
    required this.rightRunText,
    required this.rightWicketText,
    required this.rightOversText,
    required this.rightCountryImage,
    required this.leftCountryName,
    required this.rightCountryName,
    required this.tossImage,
    required this.tossWinnwerText,
    required this.predictionText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
        color: Color(0xff15212D),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  children: [
                    Text(
                      addressText1,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffCCD0D3),
                      ),
                    ),
                    Text(
                      addressText2,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffCCD0D3),
                      ),
                    ),
                    Text(
                      addressText3,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffCCD0D3),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 80,
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10))),
                child: Center(
                  child: Text(
                    liveText,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffCCD0D3),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            leftCountryImage,
                            height: 40,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  leftRunText,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffCCD0D3),
                                  ),
                                ),
                                Text(
                                  '-',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffCCD0D3),
                                  ),
                                ),
                                Text(
                                  leftWicketText,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffCCD0D3),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  leftOversText,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xffCCD0D3),
                                  ),
                                ),
                                Text(
                                  ' Overs',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xffCCD0D3),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )),

                Image.asset(
                  vsImage,
                  height: 60,
                ),

                Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  rightRunText,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffCCD0D3),
                                  ),
                                ),
                                Text(
                                  '-',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffCCD0D3),
                                  ),
                                ),
                                Text(
                                  rightWicketText,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffCCD0D3),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  rightOversText,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xffCCD0D3),
                                  ),
                                ),
                                Text(
                                  ' Overs',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xffCCD0D3),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(
                          width: 5,
                        ),

                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            rightCountryImage,
                            height: 40,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  leftCountryName,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffCCD0D3),
                  ),
                ),
                Text(
                  rightCountryName,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffCCD0D3),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  tossImage,
                  height: 20,
                ),
                Text(
                  tossWinnwerText,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffCCD0D3),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ".",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff15212D),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: Color(0xff2C5370)),
                  child: Center(
                    child: Text(
                      predictionText,
                      style: TextStyle(fontSize: 16, color: Color(0xffCCD0D3)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
