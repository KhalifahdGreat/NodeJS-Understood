const requestHandler = (req, res) => {
  const url = req.url;
  const method = req.method;

  if (url === "/") {
    // Serve the HTML form
    res.write("<html>");
    res.write("<head><title>hello</title></head>");
    res.write(
      '<body><form action="/create-users" method="POST"><input type="text" name="username"><button type="submit">Send</button></form></body>'
    );
    res.write("</html>");
    return res.end();
  }

  if (url === "/users") {
    // Serve a simple users list
    res.write("<html><ul><li>User 1</li></ul></html>");
    return res.end();
  }

  if (url === "/create-users" && method === "POST") {
    // Parse the input from the form
    const body = [];
    req.on("data", (chunk) => {
      body.push(chunk); // Collect data chunks
    });

    req.on("end", () => {
      const parsedBody = Buffer.concat(body).toString(); // Combine all chunks and convert to string
      const username = parsedBody.split("=")[1]; // Extract the value of 'username' from 'username=VALUE'
      console.log("Username:", username); // Log the parsed username to the console
      res.writeHead(302, { Location: "/" }); // Redirect to home page
      return res.end();
    });
  }
};

module.exports = requestHandler;
