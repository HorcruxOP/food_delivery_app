import 'package:cloud_firestore/cloud_firestore.dart';

createOrderDeatils(
  String collName,
  docName,
  name,
  totalPrice,
  phoneNumber,
  address,
  paymentMethod,
  deliveryMethod,
) async {
  List<Map<String, dynamic>> orders = [];

  Map<String, dynamic> documentData = {
    'name': name,
    'totalPrice': totalPrice,
    'phoneNumber': phoneNumber,
    'address': address,
    'paymentMethod': paymentMethod,
    'deliveryMethod': deliveryMethod,
  };

  orders.add(documentData);
  await FirebaseFirestore.instance
      .collection(collName)
      .doc(docName)
      .update({'ordersList': FieldValue.arrayUnion(orders)});
  print("Db created");
}
