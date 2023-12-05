import 'package:flutter/material.dart';

import 'components/custom_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.animation?.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0C131D),
      body: SingleChildScrollView(
        child: Container(
          height: 1500,
          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffCCD0D3), width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: const Color(0xffCCD0D3),
                    borderRadius: BorderRadius.circular(10),
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.transparent, // Set to transparent to remove the bottom border
                        width: 4.0,
                      ),
                    ),
                  ),
                  controller: tabController,
                  labelPadding: EdgeInsets.symmetric(horizontal: 0),
                  tabs: [
                    Tab(
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          'assets/bat_ball.png',
                          height: 50,
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          'assets/football.png',
                          height: 50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    ///tab Cricket screen
                    Container(
                      color: Color(0xff0C131D),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              height: 280,
                              //color: Colors.yellow,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Live Matches", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22, color: Color(0xffCCD0D3)),),
                                      GestureDetector(
                                        onTap: (){},
                                          child: Text(
                                            "View",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                                color: Color(0xffCCD0D3),
                                            ),
                                          )
                                      )
                                    ],
                                  ),

                                  CustomCard(
                                    addressText1: "3rd 0DI,",
                                    addressText2: " FNB Stadium,",
                                    addressText3: " Zimbabwe",
                                    liveText: "Live",
                                    leftCountryImage: 'assets/flag_south_africa.png',
                                    leftRunText: "312",
                                    leftWicketText: "6",
                                    leftOversText: "49.2",
                                    vsImage: 'assets/vs.png',
                                    rightRunText: "312",
                                    rightWicketText: "6",
                                    rightOversText: "49.2",
                                    rightCountryImage: 'assets/flag_south_africa.png',
                                    leftCountryName: "SA",
                                    rightCountryName: "ZIM",
                                    tossImage: 'assets/toss.png',
                                    tossWinnwerText:  "SA won the Toss & select to Bat first",
                                    predictionText:"Prediction",
                                  ),

                              ],
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              height: 280,
                              //color: Colors.yellow,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Featured Matches", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22, color: Color(0xffCCD0D3)),),
                                      GestureDetector(
                                          onTap: (){},
                                          child: Text(
                                            "View",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Color(0xffCCD0D3),
                                            ),
                                          )
                                      )
                                    ],
                                  ),

                                  CustomCard(
                                    addressText1: "3rd 0DI,",
                                    addressText2: " FNB Stadium,",
                                    addressText3: " Zimbabwe",
                                    liveText: "Live",
                                    leftCountryImage: 'assets/flag_south_africa.png',
                                    leftRunText: "312",
                                    leftWicketText: "6",
                                    leftOversText: "49.2",
                                    vsImage: 'assets/vs.png',
                                    rightRunText: "312",
                                    rightWicketText: "6",
                                    rightOversText: "49.2",
                                    rightCountryImage: 'assets/flag_south_africa.png',
                                    leftCountryName: "SA",
                                    rightCountryName: "ZIM",
                                    tossImage: 'assets/toss.png',
                                    tossWinnwerText:  "SA won the Toss & select to Bat first",
                                    predictionText:"Prediction",
                                  ),

                                ],
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              height: 280,
                              //color: Colors.yellow,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Recent", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22, color: Color(0xffCCD0D3)),),
                                      GestureDetector(
                                          onTap: (){},
                                          child: Text(
                                            "View",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Color(0xffCCD0D3),
                                            ),
                                          )
                                      )
                                    ],
                                  ),

                                  CustomCard(
                                    addressText1: "3rd 0DI,",
                                    addressText2: " FNB Stadium,",
                                    addressText3: " Zimbabwe",
                                    liveText: "Live",
                                    leftCountryImage: 'assets/flag_south_africa.png',
                                    leftRunText: "312",
                                    leftWicketText: "6",
                                    leftOversText: "49.2",
                                    vsImage: 'assets/vs.png',
                                    rightRunText: "312",
                                    rightWicketText: "6",
                                    rightOversText: "49.2",
                                    rightCountryImage: 'assets/flag_south_africa.png',
                                    leftCountryName: "SA",
                                    rightCountryName: "ZIM",
                                    tossImage: 'assets/toss.png',
                                    tossWinnwerText:  "SA won the Toss & select to Bat first",
                                    predictionText:"Prediction",
                                  ),

                                ],
                              ),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              height: 280,
                              //color: Colors.yellow,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Upcoming", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22, color: Color(0xffCCD0D3)),),
                                      GestureDetector(
                                          onTap: (){},
                                          child: Text(
                                            "View",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Color(0xffCCD0D3),
                                            ),
                                          )
                                      )
                                    ],
                                  ),

                                  CustomCard(
                                    addressText1: "3rd 0DI,",
                                    addressText2: " FNB Stadium,",
                                    addressText3: " Zimbabwe",
                                    liveText: "Live",
                                    leftCountryImage: 'assets/flag_south_africa.png',
                                    leftRunText: "312",
                                    leftWicketText: "6",
                                    leftOversText: "49.2",
                                    vsImage: 'assets/vs.png',
                                    rightRunText: "312",
                                    rightWicketText: "6",
                                    rightOversText: "49.2",
                                    rightCountryImage: 'assets/flag_south_africa.png',
                                    leftCountryName: "SA",
                                    rightCountryName: "ZIM",
                                    tossImage: 'assets/toss.png',
                                    tossWinnwerText:  "SA won the Toss & select to Bat first",
                                    predictionText:"Prediction",
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),




                    ///tab football screen
                    Container(
                      color: Color(0xff0C131D),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/clock.png',
                            height: 100,
                          ),
                          SizedBox(height: 10,),
                          Text("Will Available Soon", style: TextStyle(fontSize: 20, color: Color(0xffCCD0D3)),)
                        ],
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
