// GENERATED CODE - DO NOT MODIFY BY HAND

part of youtube_search_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<YouTubeSearchResult> _$youTubeSearchResultSerializer =
    new _$YouTubeSearchResultSerializer();

class _$YouTubeSearchResultSerializer
    implements StructuredSerializer<YouTubeSearchResult> {
  @override
  final Iterable<Type> types = const [
    YouTubeSearchResult,
    _$YouTubeSearchResult
  ];
  @override
  final String wireName = 'YouTubeSearchResult';

  @override
  Iterable<Object> serialize(
      Serializers serializers, YouTubeSearchResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(SearchItem)])),
    ];
    if (object.nextPageToken != null) {
      result
        ..add('nextPageToken')
        ..add(serializers.serialize(object.nextPageToken,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  YouTubeSearchResult deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new YouTubeSearchResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'nextPageToken':
          result.nextPageToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SearchItem)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$YouTubeSearchResult extends YouTubeSearchResult {
  @override
  final String nextPageToken;
  @override
  final BuiltList<SearchItem> items;

  factory _$YouTubeSearchResult(
          [void Function(YouTubeSearchResultBuilder) updates]) =>
      (new YouTubeSearchResultBuilder()..update(updates)).build();

  _$YouTubeSearchResult._({this.nextPageToken, this.items}) : super._() {
    if (items == null) {
      throw new BuiltValueNullFieldError('YouTubeSearchResult', 'items');
    }
  }

  @override
  YouTubeSearchResult rebuild(
          void Function(YouTubeSearchResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YouTubeSearchResultBuilder toBuilder() =>
      new YouTubeSearchResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is YouTubeSearchResult &&
        nextPageToken == other.nextPageToken &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nextPageToken.hashCode), items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('YouTubeSearchResult')
          ..add('nextPageToken', nextPageToken)
          ..add('items', items))
        .toString();
  }
}

class YouTubeSearchResultBuilder
    implements Builder<YouTubeSearchResult, YouTubeSearchResultBuilder> {
  _$YouTubeSearchResult _$v;

  String _nextPageToken;
  String get nextPageToken => _$this._nextPageToken;
  set nextPageToken(String nextPageToken) =>
      _$this._nextPageToken = nextPageToken;

  ListBuilder<SearchItem> _items;
  ListBuilder<SearchItem> get items =>
      _$this._items ??= new ListBuilder<SearchItem>();
  set items(ListBuilder<SearchItem> items) => _$this._items = items;

  YouTubeSearchResultBuilder();

  YouTubeSearchResultBuilder get _$this {
    if (_$v != null) {
      _nextPageToken = _$v.nextPageToken;
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(YouTubeSearchResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$YouTubeSearchResult;
  }

  @override
  void update(void Function(YouTubeSearchResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$YouTubeSearchResult build() {
    _$YouTubeSearchResult _$result;
    try {
      _$result = _$v ??
          new _$YouTubeSearchResult._(
              nextPageToken: nextPageToken, items: items.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'YouTubeSearchResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
