import 'package:cloud_firestore/cloud_firestore.dart';
create(String collName, docName, name, price, image, int quantity) async {
  await FirebaseFirestore.instance.collection(collName).doc(docName).set({
    "name": name,
    "price": price,
    "quantity": quantity,
    "image": image,
  });
  print("Db created");
}

update(String collName, docName, field, var newField) async {
  await FirebaseFirestore.instance
      .collection(collName)
      .doc(docName)
      .update({field: newField});
  print("Db updated");
}

delete(String collName, docName) async {
  await FirebaseFirestore.instance.collection(collName).doc(docName).delete();
}
