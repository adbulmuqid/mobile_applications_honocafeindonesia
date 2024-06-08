import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistorycardRecord extends FirestoreRecord {
  HistorycardRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "product_id" field.
  String? _productId;
  String get productId => _productId ?? '';
  bool hasProductId() => _productId != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "final_price" field.
  double? _finalPrice;
  double get finalPrice => _finalPrice ?? 0.0;
  bool hasFinalPrice() => _finalPrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "noMeja" field.
  String? _noMeja;
  String get noMeja => _noMeja ?? '';
  bool hasNoMeja() => _noMeja != null;

  // "product_ref" field.
  DocumentReference? _productRef;
  DocumentReference? get productRef => _productRef;
  bool hasProductRef() => _productRef != null;

  void _initializeFields() {
    _productId = snapshotData['product_id'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _finalPrice = castToType<double>(snapshotData['final_price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _noMeja = snapshotData['noMeja'] as String?;
    _productRef = snapshotData['product_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('historycard');

  static Stream<HistorycardRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistorycardRecord.fromSnapshot(s));

  static Future<HistorycardRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HistorycardRecord.fromSnapshot(s));

  static HistorycardRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistorycardRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistorycardRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistorycardRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistorycardRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistorycardRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistorycardRecordData({
  String? productId,
  double? price,
  double? finalPrice,
  int? quantity,
  DocumentReference? userRef,
  String? noMeja,
  DocumentReference? productRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'product_id': productId,
      'price': price,
      'final_price': finalPrice,
      'quantity': quantity,
      'user_ref': userRef,
      'noMeja': noMeja,
      'product_ref': productRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistorycardRecordDocumentEquality implements Equality<HistorycardRecord> {
  const HistorycardRecordDocumentEquality();

  @override
  bool equals(HistorycardRecord? e1, HistorycardRecord? e2) {
    return e1?.productId == e2?.productId &&
        e1?.price == e2?.price &&
        e1?.finalPrice == e2?.finalPrice &&
        e1?.quantity == e2?.quantity &&
        e1?.userRef == e2?.userRef &&
        e1?.noMeja == e2?.noMeja &&
        e1?.productRef == e2?.productRef;
  }

  @override
  int hash(HistorycardRecord? e) => const ListEquality().hash([
        e?.productId,
        e?.price,
        e?.finalPrice,
        e?.quantity,
        e?.userRef,
        e?.noMeja,
        e?.productRef
      ]);

  @override
  bool isValidKey(Object? o) => o is HistorycardRecord;
}
