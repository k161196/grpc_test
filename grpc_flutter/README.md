# grpc_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


```bash
// generate proto
 protoc --dart_out=grpc:lib/generated -Ilib/protos lib/protos/news.proto --plugin=protoc-gen-dart=$HOME/.pub-cache/bin/protoc-gen-dart
```
