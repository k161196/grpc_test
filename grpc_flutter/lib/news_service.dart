import 'package:grpc/grpc.dart';
import 'package:grpc_flutter/generated/news.pbgrpc.dart';

class NewsService {
  String baseUrl = "localhost";
  NewsService._internal();
  static final NewsService _instance = NewsService._internal();

  factory NewsService() => _instance;

  static NewsService get instance => _instance;

  late NewsServiceClient _newsClient;

  Future<void> init() async {
    _createChannel();
  }

  NewsServiceClient get newsClient {
    return _newsClient;
  }

  _createChannel() {
    final channel = ClientChannel(
      baseUrl,
      port: 8080,
      //options: const ChannelOptions(),
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()), // 👈 Force plaintext

    );
    _newsClient = NewsServiceClient(channel);
  }
}
