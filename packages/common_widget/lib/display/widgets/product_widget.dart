part of common_widget;

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  final DataBaseServices _services = DataBaseServices();
  late Future<QuerySnapshot<Map<String, dynamic>>> _productsFuture;
  late Future<QuerySnapshot<Map<String, dynamic>>> _categoryFuture;

  @override
  void initState() {
    super.initState();
    _productsFuture = _services.getDealoftheDayProducts("");
    _categoryFuture = _services.getCategory("");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.08), // Color with 8% opacity
            offset: Offset(1, 1), // x=1, y=1
            blurRadius: 16, // blur=16
            spreadRadius: 0, // spread=0
          ),
        ], borderRadius: BorderRadius.circular(8), color: kWhite),
        child: FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
            future: _categoryFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
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
                    return Category.fromMap(doc.data() as Map<String, dynamic>);
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
            }));
  }
}

class ProductWidget extends StatefulWidget {
  final String offer;
  const ProductWidget({super.key, required this.offer});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  final DataBaseServices _services = DataBaseServices();
  late Future<QuerySnapshot<Map<String, dynamic>>> _productsFuture;

  @override
  void initState() {
    super.initState();
    _productsFuture = _services.getDealoftheDayProducts(widget.offer);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackground,
      height: screenHeight * .3,
      child: FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
          future: _productsFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
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
                List<Product> products = docs.map((doc) {
                  return Product.fromMap(doc.data() as Map<String, dynamic>);
                }).toList();
                // List<Product> data = snapshot.data.
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: products.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    Product e = products[index];
                    return Container(
                      width: 170,
                      margin: EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: kWhite,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.asset(images1[index],
                                height: 124, width: 170, fit: BoxFit.cover),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 2.0, vertical: 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MediumText(e.name, 12, kBlack),
                                RegularText(e.description, 12, kBlack,
                                    align: TextAlign.start),
                                RegularText("Rs.${e.finalPrice}", 16, kBlack),
                                Row(
                                  children: [
                                    RegularStrikedText(
                                        "Rs${e.mrp}", 12, kGrey150),
                                    sizedBoxWidth(6),
                                    RegularText("${40}%Off", 12, kRed250),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }
            }
          }),
    );
  }
}
