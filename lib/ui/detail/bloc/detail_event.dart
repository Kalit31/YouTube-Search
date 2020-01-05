library detail_event;

import 'package:meta/meta.dart';
import 'package:built_value/built_value.dart';

part 'detail_event.g.dart';

@immutable
abstract class DetailEvent {}

abstract class ShowDetail extends DetailEvent
    implements Built<ShowDetail, ShowDetailBuilder> {
  // fields go here
  String get id;

  ShowDetail._();

  factory ShowDetail([updates(ShowDetailBuilder b)]) = _$ShowDetail;
}
