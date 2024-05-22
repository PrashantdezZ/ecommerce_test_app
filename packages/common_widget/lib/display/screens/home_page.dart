part of common_widget;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPos = 0;
  final DataBaseServices _services = DataBaseServices();
  late Future<QuerySnapshot<Map<String, dynamic>>> _productsFuture;
  late Future<QuerySnapshot<Map<String, dynamic>>> _categoryFuture;

  @override
  void initState() {
    super.initState();
    _productsFuture = _services.getDealoftheDayProducts("");
    _categoryFuture = _services.getCategory("");
  }

  changeSliderPosition(int index) {
    setState(() {
      currentPos = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackground,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: kBackground,
          appBar: AppBar(
            backgroundColor: kBackground,
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Icon(Icons.menu)),
            titleSpacing: screenWidth * 0.2,
            title: Row(
              children: [
                Image.asset(Assets.images.logo),
                SemiBoldText("Stylish", 18, kBlue)
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(27),
                  child: Image.asset(
                    Assets.images.prashant,
                    height: 40,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
          body: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 600) {
                // Mobile View
                return _buildMobileView();
              } else {
                // Desktop View
                return _buildDesktopView();
              }
            },
          ),

          // SingleChildScrollView(
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       SearchTextField(),
          //       Padding(
          //         padding: const EdgeInsets.all(10.0),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           mainAxisSize: MainAxisSize.max,
          //           children: [
          //             SemiBoldText("All Featured", 18, kBlack),
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 SortButton(),
          //                 sizedBoxWidth(16),
          //                 FilterButton()
          //               ],
          //             )
          //           ],
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.all(10.0),
          //         child: Container(
          //             height: 100,
          //             padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          //             decoration: BoxDecoration(boxShadow: [
          //               BoxShadow(
          //                 color: Color.fromRGBO(
          //                     0, 0, 0, 0.08), // Color with 8% opacity
          //                 offset: Offset(1, 1), // x=1, y=1
          //                 blurRadius: 16, // blur=16
          //                 spreadRadius: 0, // spread=0
          //               ),
          //             ], borderRadius: BorderRadius.circular(8), color: kWhite),
          //             child: ListView.builder(
          //               padding: EdgeInsets.all(0),
          //               shrinkWrap: true,
          //               scrollDirection: Axis.horizontal,
          //               itemCount: 6,
          //               itemBuilder: (context, index) {
          //                 return Padding(
          //                   padding: const EdgeInsets.only(right: 10.0),
          //                   child: Column(
          //                     children: [
          //                       ClipRRect(
          //                         borderRadius: BorderRadius.circular(40),
          //                         child: Image.asset(
          //                           Assets.images.prashant,
          //                           height: 56,
          //                           width: 56,
          //                           fit: BoxFit.cover,
          //                         ),
          //                       ),
          //                       sizedBoxHeight(8),
          //                       RegularText("Beauty", 10, kRed200)
          //                     ],
          //                   ),
          //                 );
          //               },
          //             )),
          //       ),
          //       _carouselSlider(),
          //       Padding(
          //         padding: const EdgeInsets.all(10.0),
          //         child: OfferCard(),
          //       ),
          //       sizedBoxHeight(12),
          //       Padding(
          //         padding: const EdgeInsets.all(10.0),
          //         child: Container(
          //           color: kBackground,
          //           height: screenHeight * .3,
          //           child: ListView.builder(
          //             shrinkWrap: true,
          //             itemCount: 4,
          //             scrollDirection: Axis.horizontal,
          //             itemBuilder: (context, index) {
          //               return Container(
          //                 width: 170,
          //                 margin: EdgeInsets.only(right: 12),
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(4),
          //                   color: kWhite,
          //                 ),
          //                 child: Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     ClipRRect(
          //                       borderRadius: BorderRadius.circular(4),
          //                       child: Image.asset(Assets.images.prashant,
          //                           height: 124, width: 170, fit: BoxFit.cover),
          //                     ),
          //                     Padding(
          //                       padding: const EdgeInsets.symmetric(
          //                           horizontal: 2.0, vertical: 6),
          //                       child: Column(
          //                         crossAxisAlignment: CrossAxisAlignment.start,
          //                         children: [
          //                           MediumText(
          //                               "Women printed kurta", 12, kBlack),
          //                           RegularText(
          //                               "lorem ipsun lorem ipsum lorem ipsum ",
          //                               12,
          //                               kBlack,
          //                               align: TextAlign.start),
          //                           RegularText("Rs.${700}", 16, kBlack),
          //                           Row(
          //                             children: [
          //                               RegularStrikedText(
          //                                   "Rs${2400}", 12, kGrey150),
          //                               sizedBoxWidth(6),
          //                               RegularText("${40}%Off", 12, kRed250),
          //                             ],
          //                           )
          //                         ],
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               );
          //             },
          //           ),
          //         ),
          //       ),
          //       sizedBoxHeight(40)
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }

  Widget _buildMobileView() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchTextField(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                SemiBoldText("All Featured", 18, kBlack),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SortButton(),
                    sizedBoxWidth(16),
                    FilterButton(),
                  ],
                ),
              ],
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CategoryWidget(),
          ),
          _carouselSlider(),
          // CarouselWidget(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: OfferCard(),
          ),
          sizedBoxHeight(12),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ProductWidget(offer:'sale'),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TrendingProducts(),
          ),
          sizedBoxHeight(12),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ProductWidget(offer:'sale'),
          ),
          sizedBoxHeight(40),
        ],
      ),
    );
  }

  Widget _buildDesktopView() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchTextField(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SemiBoldText("All Featured", 18, kBlack),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SortButton(),
                      sizedBoxWidth(16),
                      FilterButton(),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  height: 100,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(
                          0, 0, 0, 0.08), // Color with 8% opacity
                      offset: Offset(1, 1), // x=1, y=1
                      blurRadius: 16, // blur=16
                      spreadRadius: 0, // spread=0
                    ),
                  ], borderRadius: BorderRadius.circular(8), color: kWhite),
                  child: FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
                      future: _categoryFuture,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        } else {
                          if (!snapshot.hasData || snapshot.data == null) {
                            return Center(
                              child: Text("No Data Available"),
                            );
                          } else {
                            var docs = snapshot.data!.docs;
                            List<Category> category = docs.map((doc) {
                              return Category.fromMap(
                                  doc.data() as Map<String, dynamic>);
                            }).toList();
                            return ListView.builder(
                              padding: EdgeInsets.all(0),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: category.length,
                              itemBuilder: (context, index) {
                                Category e = category[index];
                                return Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(40),
                                        child: Image.asset(
                                          categoryImages[index],
                                          height: 56,
                                          width: 56,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      sizedBoxHeight(8),
                                      RegularText(e.name, 10, kRed200),
                                    ],
                                  ),
                                );
                              },
                            );
                          }
                        }
                      })),
            ),
            // CarouselWidget(),
            _carouselSlider(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: OfferCard(),
            ),
            sizedBoxHeight(12),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ProductWidget(offer: "sale",),
            ),
            sizedBoxHeight(40),
          ],
        ),
      ),
    );
  }

  Widget _carouselSlider() => Stack(
        children: [
          Container(
            height: screenHeight * 0.3,
            width: screenWidth,
            child: FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
                future: null,
                builder: (context, snapshot) {
                  return CarouselSlider.builder(
                      itemCount: trendingCollectionImages.length,
                      itemBuilder: (BuildContext context, int itemIndex,
                              int pageViewIndex) =>
                          Container(
                            width: screenWidth,
                            padding: const EdgeInsets.all(12),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                trendingCollectionImages[itemIndex],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                      options: CarouselOptions(
                          autoPlay: true,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            changeSliderPosition(index);
                            // setState(() {
                            //   currentPos = index;
                            // });
                          }));
                }),
          ),
          Positioned(
            bottom: 6,
            left: screenWidth * 0.45,
            right: 100,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: AnimatedSmoothIndicator(
                count: trendingCollectionImages.length,
                axisDirection: Axis.horizontal,
                activeIndex: currentPos,
                effect: const SlideEffect(
                  spacing: 6.0,
                  radius: 6.0,
                  dotWidth: 8.0,
                  dotHeight: 8.0,
                  paintStyle: PaintingStyle.fill,
                  dotColor: kDeactiveColor,
                  activeDotColor: kActiveSilderColor,
                ),
              ),
            ),
          ),
        ],
      );
}













// class CarouselWidget extends StatefulWidget {
//   const CarouselWidget({super.key});

//   @override
//   State<CarouselWidget> createState() => _CarouselWidgetState();
// }

// class _CarouselWidgetState extends State<CarouselWidget> {
//   final DataBaseServices _services = DataBaseServices();
//   late Future<QuerySnapshot<Map<String, dynamic>>> _carouselFuture;
//   int currentPos = 0;
//   @override
//   void initState() {
//     super.initState();
//     _carouselFuture = _services.getSalesBanner("");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           height: screenHeight * 0.3,
//           width: screenWidth,
//           child: FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
//               future: _carouselFuture,
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return Center(
//                     child: CircularProgressIndicator(),
//                   );
//                 } else {
//                   if (!snapshot.hasData || snapshot.data == null) {
//                     return Center(
//                       child: Text("No Data Available"),
//                     );
//                   } else {
//                     var docs = snapshot.data!.docs;
//                     List<Banners> banners = docs.map((doc) {
//                       return Banners.fromMap(
//                           doc.data() as Map<String, dynamic>);
//                     }).toList();
//                     return CarouselSlider.builder(
//                         itemCount: banners.length,
//                         itemBuilder: (BuildContext context, int itemIndex,
//                             int pageViewIndex) {
//                           Banners e = banners[itemIndex];
//                           print("image${e.toString()}");
//                           return Container(
//                             width: screenWidth,
//                             padding: const EdgeInsets.all(12),
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.circular(8),
//                               child: Image.network(
//                                 e.name,
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           );
//                         },
//                         options: CarouselOptions(
//                             autoPlay: true,
//                             viewportFraction: 1,
//                             onPageChanged: (index, reason) {
//                               setState(() {
//                                 currentPos = index;
//                               });
//                             }));
//                   }
//                 }
//               }),
//         ),
//         Positioned(
//           bottom: 6,
//           left: screenWidth * 0.45,
//           right: 100,
//           child: Padding(
//             padding: const EdgeInsets.all(0.0),
//             child: AnimatedSmoothIndicator(
//               count: trendingCollectionImages.length,
//               axisDirection: Axis.horizontal,
//               activeIndex: currentPos,
//               effect: const SlideEffect(
//                 spacing: 6.0,
//                 radius: 6.0,
//                 dotWidth: 8.0,
//                 dotHeight: 8.0,
//                 paintStyle: PaintingStyle.fill,
//                 dotColor: kDeactiveColor,
//                 activeDotColor: kActiveSilderColor,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }


