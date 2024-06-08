import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FinalpriceRecord extends FirestoreRecord {
  FinalpriceRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "priceEnd" field.
  double? _priceEnd;
  double get priceEnd => _priceEnd ?? 0.0;
  bool hasPriceEnd() => _priceEnd != null;

  void _initializeFields() {
    _priceEnd = castToType<double>(snapshotData['priceEnd']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('finalprice');

  static Stream<FinalpriceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FinalpriceRecord.fromSnapshot(s));

  static Future<FinalpriceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FinalpriceRecord.fromSnapshot(s));

  static FinalpriceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FinalpriceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FinalpriceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FinalpriceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FinalpriceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FinalpriceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFinalpriceRecordData({
  double? priceEnd,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'priceEnd': priceEnd,
    }.withoutNulls,
  );

  return firestoreData;
}

class FinalpriceRecordDocumentEquality implements Equality<FinalpriceRecord> {
  const FinalpriceRecordDocumentEquality();

  @override
  bool equals(FinalpriceRecord? e1, FinalpriceRecord? e2) {
    return e1?.priceEnd == e2?.priceEnd;
  }

  @override
  int hash(FinalpriceRecord? e) => const ListEquality().hash([e?.priceEnd]);

  @override
  bool isValidKey(Object? o) => o is FinalpriceRecord;
}
