import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarouselRecord extends FirestoreRecord {
  CarouselRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "diskon" field.
  double? _diskon;
  double get diskon => _diskon ?? 0.0;
  bool hasDiskon() => _diskon != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _diskon = castToType<double>(snapshotData['diskon']);
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carousel');

  static Stream<CarouselRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarouselRecord.fromSnapshot(s));

  static Future<CarouselRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarouselRecord.fromSnapshot(s));

  static CarouselRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarouselRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarouselRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarouselRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarouselRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarouselRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarouselRecordData({
  String? image,
  double? diskon,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'diskon': diskon,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarouselRecordDocumentEquality implements Equality<CarouselRecord> {
  const CarouselRecordDocumentEquality();

  @override
  bool equals(CarouselRecord? e1, CarouselRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.diskon == e2?.diskon &&
        e1?.title == e2?.title;
  }

  @override
  int hash(CarouselRecord? e) =>
      const ListEquality().hash([e?.image, e?.diskon, e?.title]);

  @override
  bool isValidKey(Object? o) => o is CarouselRecord;
}
