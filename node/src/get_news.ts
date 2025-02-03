const client = require("./client");
//client.getAllNews({}, (error, news) => {
//  console.log("get all news 1")
//  if (!error) throw error;
//  console.log(news);
//});
//// add a news
//client.addNews(
//  {
//    title: "Title news 3",
//    body: "Body content 3",
//    postImage: "Image URL here",
//  },
//  (error, news) => {
//    if (error) throw error;
//    console.log("Successfully created a news.");
//  }
//);
//
//client.getAllNews({}, (error, news) => {
//  console.log("get all news 2")
//  if (!error) throw error;
//  console.log(news);
//});



  //const news = await client.getAllNews({})
  //console.log("news", JSON.stringify(news))
  client.getAllNews({}, (error, news) => {
    console.log("get all news 2",JSON.stringify(news))
    if (error) throw error;
    console.log(news);
  });
