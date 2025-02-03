//
//  Generated code. Do not modify.
//  source: news.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'news.pb.dart' as $0;

export 'news.pb.dart';

@$pb.GrpcServiceName('NewsService')
class NewsServiceClient extends $grpc.Client {
  static final _$getAllNews = $grpc.ClientMethod<$0.Empty, $0.NewsList>(
      '/NewsService/GetAllNews',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NewsList.fromBuffer(value));
  static final _$addNews = $grpc.ClientMethod<$0.News, $0.News>(
      '/NewsService/AddNews',
      ($0.News value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.News.fromBuffer(value));

  NewsServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.NewsList> getAllNews($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllNews, request, options: options);
  }

  $grpc.ResponseFuture<$0.News> addNews($0.News request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addNews, request, options: options);
  }
}

@$pb.GrpcServiceName('NewsService')
abstract class NewsServiceBase extends $grpc.Service {
  $core.String get $name => 'NewsService';

  NewsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.NewsList>(
        'GetAllNews',
        getAllNews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.NewsList value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.News, $0.News>(
        'AddNews',
        addNews_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.News.fromBuffer(value),
        ($0.News value) => value.writeToBuffer()));
  }

  $async.Future<$0.NewsList> getAllNews_Pre($grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getAllNews(call, await request);
  }

  $async.Future<$0.News> addNews_Pre($grpc.ServiceCall call, $async.Future<$0.News> request) async {
    return addNews(call, await request);
  }

  $async.Future<$0.NewsList> getAllNews($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.News> addNews($grpc.ServiceCall call, $0.News request);
}
