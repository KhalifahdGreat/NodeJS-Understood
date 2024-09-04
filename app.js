const http = require("http");
const fs = require("fs");

const server = http.createServer((req, res) => {
  const url = req.url;
  const method = req.method;

  if (url === "/") {
    res.write("<html>");
    res.write("<head><title>Enter Message</title></head>");
    res.write(
      '<body><form action="/message" method="POST"><input type="text" name="message"><button type="submit">Send</button></form></body>'
    );
  }

  if (url === "/message" && method === "POST") {
    fs.writeFileSync("message.txt", "");
  }

  res.setHeader("Content-Type", "text/html");
  res.write(
    "<html lang='en'><head> <meta charset='UTF-8' /><meta name='viewport' content='width=device-width, initial-scale=1.0' /><title>Document</title></head><body><h1>hello</h1></body></html"
  );
  res.end();
});

server.listen(8080);
