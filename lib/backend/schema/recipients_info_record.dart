import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecipientsInfoRecord extends FirestoreRecord {
  RecipientsInfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "r_name" field.
  String? _rName;
  String get rName => _rName ?? '';
  bool hasRName() => _rName != null;

  // "r_address" field.
  String? _rAddress;
  String get rAddress => _rAddress ?? '';
  bool hasRAddress() => _rAddress != null;

  // "r_phno" field.
  int? _rPhno;
  int get rPhno => _rPhno ?? 0;
  bool hasRPhno() => _rPhno != null;

  // "s_address" field.
  String? _sAddress;
  String get sAddress => _sAddress ?? '';
  bool hasSAddress() => _sAddress != null;

  void _initializeFields() {
    _rName = snapshotData['r_name'] as String?;
    _rAddress = snapshotData['r_address'] as String?;
    _rPhno = castToType<int>(snapshotData['r_phno']);
    _sAddress = snapshotData['s_address'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RecipientsInfo');

  static Stream<RecipientsInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecipientsInfoRecord.fromSnapshot(s));

  static Future<RecipientsInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecipientsInfoRecord.fromSnapshot(s));

  static RecipientsInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecipientsInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecipientsInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecipientsInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecipientsInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecipientsInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecipientsInfoRecordData({
  String? rName,
  String? rAddress,
  int? rPhno,
  String? sAddress,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'r_name': rName,
      'r_address': rAddress,
      'r_phno': rPhno,
      's_address': sAddress,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecipientsInfoRecordDocumentEquality
    implements Equality<RecipientsInfoRecord> {
  const RecipientsInfoRecordDocumentEquality();

  @override
  bool equals(RecipientsInfoRecord? e1, RecipientsInfoRecord? e2) {
    return e1?.rName == e2?.rName &&
        e1?.rAddress == e2?.rAddress &&
        e1?.rPhno == e2?.rPhno &&
        e1?.sAddress == e2?.sAddress;
  }

  @override
  int hash(RecipientsInfoRecord? e) =>
      const ListEquality().hash([e?.rName, e?.rAddress, e?.rPhno, e?.sAddress]);

  @override
  bool isValidKey(Object? o) => o is RecipientsInfoRecord;
}
