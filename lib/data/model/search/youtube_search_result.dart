library youtube_search_result;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:youtube_search/data/model/search/search_item.dart';
import 'package:youtube_search/data/model/serializer/serializers.dart';

part 'youtube_search_result.g.dart';

abstract class YouTubeSearchResult
    implements Built<YouTubeSearchResult, YouTubeSearchResultBuilder> {
  // fields go here
  @nullable
  String get nextPageToken;
  BuiltList<SearchItem> get items;

  YouTubeSearchResult._();

  factory YouTubeSearchResult([updates(YouTubeSearchResultBuilder b)]) =
      _$YouTubeSearchResult;

  String toJson() {
    return json.encode(
        serializers.serializeWith(YouTubeSearchResult.serializer, this));
  }

  static YouTubeSearchResult fromJson(String jsonString) {
    return serializers.deserializeWith(
        YouTubeSearchResult.serializer, json.decode(jsonString));
  }

  static Serializer<YouTubeSearchResult> get serializer =>
      _$youTubeSearchResultSerializer;
}
