part of global;

const productCollection = "products";
const categoryCollection = "category";
const offerCollection = "offers";
const salesBanner = "sales_banner";

class DataBaseServices {
  final _fireStore = FirebaseFirestore.instance;

    CollectionReference? _productRef;

  Future<QuerySnapshot<Map<String, dynamic>>> getDealoftheDayProducts(offers) async{
   
    QuerySnapshot<Map<String, dynamic>> productsSnapshot = await FirebaseFirestore.instance
      .collection('products')
      .get();

  for (QueryDocumentSnapshot<Map<String, dynamic>> productDoc in productsSnapshot.docs) {
    CollectionReference<Map<String, dynamic>> offerCollectionRef = productDoc.reference.collection('offers');

    QuerySnapshot<Map<String, dynamic>> offerQuerySnapshot = await offerCollectionRef
        .where('offer_type', isEqualTo: offers)
        .get();

    if (offerQuerySnapshot.docs.isNotEmpty) {
      return productsSnapshot;
    }
  }

  return productsSnapshot;

   
  }
  getCategory(offers) {
   
    return FirebaseFirestore.instance
        .collection(categoryCollection).get();

   
  }
  getSalesBanner(offers) {
   
    return FirebaseFirestore.instance
        .collection(salesBanner).get();

   
  }

  Stream<QuerySnapshot> getProducts() {
    return _productRef!.snapshots();
  }
}

