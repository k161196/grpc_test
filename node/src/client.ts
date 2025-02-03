const grpc = require("@grpc/grpc-js");
const protoLoader = require("@grpc/proto-loader");
const PROTO_PATH = "/home/kiran/Kiran/projects/grpc/node/src/protos/news.proto";


const options = {
  keepCase: true,
  longs: String,
  enums: String,
  defaults: true,
  oneofs: true,
};

const packageDefinition = protoLoader.loadSync(PROTO_PATH, options);

const NewsService = grpc.loadPackageDefinition(packageDefinition).NewsService;

const client = new NewsService(
  "0.0.0.0:50051",
  grpc.credentials.createInsecure()
);

module.exports = client;

//client.getAllNews({}, (error, news) => {
//  if (!error) throw error
//    console.log(news);
//});
