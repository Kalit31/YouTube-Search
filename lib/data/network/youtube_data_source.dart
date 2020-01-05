import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:youtube_search/data/model/detail/model_detail.dart';
import 'package:youtube_search/data/model/search/model_search.dart';
import 'package:youtube_search/data/network/api_key.dart';

const int MAX_SEARCH_RESULT = 5;

class YoutubeDataSource {
  final http.Client client;
  final String _searchbaseUrl =
      'https://www.googleapis.com/youtube/v3/search?part=snippet' +
          '&maxResults=$MAX_SEARCH_RESULT&type=video&key=$API_KEY';

  final String _videoBaseUrl =
      'https://www.googleapis.com/youtube/v3/videos?part=snippet&key=$API_KEY';

  YoutubeDataSource(this.client);

  Future<YouTubeSearchResult> searchVideos(
      {String query, String pageToken}) async {
    final urlRaw = _searchbaseUrl +
        '&q=$query' +
        (pageToken != null ? '&pageToken=$pageToken' : '');

    final urlEncoded = Uri.encodeFull(urlRaw);
    final response = await client.get(urlEncoded);

    if (response.statusCode == 200) {
      return YouTubeSearchResult.fromJson(response.body);
    } else {
      throw YoutubeSearchError(json.decode(response.body)['error']['message']);
    }
  }

  Future<YoutubeVideoResponse> fetchVideoInfo({String id}) async {
    final url = _videoBaseUrl + '&id=$id';
    final response = await client.get(url);

    if (response.statusCode == 200) {
      return YoutubeVideoResponse.fromJson(response.body);
    } else {
      throw YoutubeVideoError(json.decode(response.body)['error']['message']);
    }
  }
}
