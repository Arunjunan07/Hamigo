import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderDetailsRecord extends FirestoreRecord {
  OrderDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "r_name" field.
  String? _rName;
  String get rName => _rName ?? '';
  bool hasRName() => _rName != null;

  // "r_city" field.
  String? _rCity;
  String get rCity => _rCity ?? '';
  bool hasRCity() => _rCity != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "package_type" field.
  String? _packageType;
  String get packageType => _packageType ?? '';
  bool hasPackageType() => _packageType != null;

  // "order_id" field.
  int? _orderId;
  int get orderId => _orderId ?? 0;
  bool hasOrderId() => _orderId != null;

  void _initializeFields() {
    _rName = snapshotData['r_name'] as String?;
    _rCity = snapshotData['r_city'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _date = snapshotData['date'] as DateTime?;
    _packageType = snapshotData['package_type'] as String?;
    _orderId = castToType<int>(snapshotData['order_id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('OrderDetails');

  static Stream<OrderDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderDetailsRecord.fromSnapshot(s));

  static Future<OrderDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderDetailsRecord.fromSnapshot(s));

  static OrderDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrderDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderDetailsRecordData({
  String? rName,
  String? rCity,
  int? price,
  DateTime? date,
  String? packageType,
  int? orderId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'r_name': rName,
      'r_city': rCity,
      'price': price,
      'date': date,
      'package_type': packageType,
      'order_id': orderId,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrderDetailsRecordDocumentEquality
    implements Equality<OrderDetailsRecord> {
  const OrderDetailsRecordDocumentEquality();

  @override
  bool equals(OrderDetailsRecord? e1, OrderDetailsRecord? e2) {
    return e1?.rName == e2?.rName &&
        e1?.rCity == e2?.rCity &&
        e1?.price == e2?.price &&
        e1?.date == e2?.date &&
        e1?.packageType == e2?.packageType &&
        e1?.orderId == e2?.orderId;
  }

  @override
  int hash(OrderDetailsRecord? e) => const ListEquality().hash(
      [e?.rName, e?.rCity, e?.price, e?.date, e?.packageType, e?.orderId]);

  @override
  bool isValidKey(Object? o) => o is OrderDetailsRecord;
}
