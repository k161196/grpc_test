const grpc = require("@grpc/grpc-js");
const protoLoader = require("@grpc/proto-loader");
var reflection = require("@grpc/reflection");

const PROTO_PATH = "/home/kiran/Kiran/projects/grpc/node/src/protos/news.proto";

const options = {
  keepCase: true,
  longs: String,
  enums: String,
  defaults: true,
  oneofs: true,
};
const packageDefinition = protoLoader.loadSync(PROTO_PATH, options);
const newsProto = grpc.loadPackageDefinition(packageDefinition);

const server = new grpc.Server();
let news = [
  { id: "1", title: "Note 1", body: "Content 1", postImage: "Post image 1" },
  { id: "2", title: "Note 2", body: "Content 2", postImage: "Post image 2" },
];

server.addService(newsProto.NewsService.service, {
  getAllNews: (_, callback) => {
    console.log("get all news",JSON.stringify(news))
    callback(null, {news});
  },
  addNews: (call, callback) => {
    const _news = { id: Date.now(), ...call.request };
    news.push(_news);
    callback(null, _news);
  },
});

var reflection = new reflection.ReflectionService(packageDefinition);

reflection.addToServer(server);

server.bindAsync(
  "localhost:8080",
  grpc.ServerCredentials.createInsecure(),
  (error, port) => {
    console.log("Server running at http://localhost:8080");
    //server.start();
  }
);
