import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarduriRecord extends FirestoreRecord {
  CarduriRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "nume" field.
  String? _nume;
  String get nume => _nume ?? '';
  bool hasNume() => _nume != null;

  // "serie_card" field.
  String? _serieCard;
  String get serieCard => _serieCard ?? '';
  bool hasSerieCard() => _serieCard != null;

  // "tip_card" field.
  String? _tipCard;
  String get tipCard => _tipCard ?? '';
  bool hasTipCard() => _tipCard != null;

  // "numarCalatoriiRamase" field.
  int? _numarCalatoriiRamase;
  int get numarCalatoriiRamase => _numarCalatoriiRamase ?? 0;
  bool hasNumarCalatoriiRamase() => _numarCalatoriiRamase != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _nume = snapshotData['nume'] as String?;
    _serieCard = snapshotData['serie_card'] as String?;
    _tipCard = snapshotData['tip_card'] as String?;
    _numarCalatoriiRamase =
        castToType<int>(snapshotData['numarCalatoriiRamase']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carduri');

  static Stream<CarduriRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarduriRecord.fromSnapshot(s));

  static Future<CarduriRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarduriRecord.fromSnapshot(s));

  static CarduriRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarduriRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarduriRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarduriRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarduriRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarduriRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarduriRecordData({
  int? id,
  String? nume,
  String? serieCard,
  String? tipCard,
  int? numarCalatoriiRamase,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'nume': nume,
      'serie_card': serieCard,
      'tip_card': tipCard,
      'numarCalatoriiRamase': numarCalatoriiRamase,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarduriRecordDocumentEquality implements Equality<CarduriRecord> {
  const CarduriRecordDocumentEquality();

  @override
  bool equals(CarduriRecord? e1, CarduriRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.nume == e2?.nume &&
        e1?.serieCard == e2?.serieCard &&
        e1?.tipCard == e2?.tipCard &&
        e1?.numarCalatoriiRamase == e2?.numarCalatoriiRamase;
  }

  @override
  int hash(CarduriRecord? e) => const ListEquality().hash(
      [e?.id, e?.nume, e?.serieCard, e?.tipCard, e?.numarCalatoriiRamase]);

  @override
  bool isValidKey(Object? o) => o is CarduriRecord;
}
