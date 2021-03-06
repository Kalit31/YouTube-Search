import 'package:built_collection/built_collection.dart';
import 'package:youtube_search/data/model/detail/model_detail.dart';
import 'package:youtube_search/data/model/search/search_item.dart';
import 'package:youtube_search/data/network/youtube_data_source.dart';

class YoutubeRepository {
  YoutubeDataSource _youtubeDataSource;

  YoutubeRepository(this._youtubeDataSource);

  String _lastSearchQuery;
  String _nextPageToken;

  Future<BuiltList<SearchItem>> searchVideos(String query) async {
    final searchResult = await _youtubeDataSource.searchVideos(query: query);
    _cacheValues(query: query, nextPageToken: searchResult.nextPageToken);
    if (searchResult.items.isEmpty) {
      throw NoSearchResultsException();
    }
    return searchResult.items;
  }

  Future<BuiltList<SearchItem>> fetchNextResultPage() async {
    if (_lastSearchQuery == null) {
      throw SearchNotInitiatedException();
    }
    if (_nextPageToken == null) {
      throw NoNextPageTokenException();
    }

    final nextPageSearchResult = await _youtubeDataSource.searchVideos(
      query: _lastSearchQuery,
      pageToken: _nextPageToken,
    );
    _cacheValues(
      query: _lastSearchQuery,
      nextPageToken: nextPageSearchResult.nextPageToken,
    );
    return nextPageSearchResult.items;
  }

  void _cacheValues({String query, String nextPageToken}) {
    _lastSearchQuery = query;
    _nextPageToken = nextPageToken;
  }

  Future<VideoItem> fetchVideoItem({String id}) async {
    final videoResponse = await _youtubeDataSource.fetchVideoInfo(id: id);
    if (videoResponse.items.isEmpty) {
      throw NoSuchVideoException();
    }
    return videoResponse.items[0];
  }
}

class NoSearchResultsException implements Exception {
  final message = 'No results';
}

class SearchNotInitiatedException implements Exception {
  final message = 'Cannot get the next result page without searching first.';
}

class NoNextPageTokenException implements Exception {}

class NoSuchVideoException implements Exception {
  final message = 'No such video';
}
