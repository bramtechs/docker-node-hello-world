const express = require('express');
const app = express();
const port = process.env.PORT || 8080;

app.get('/', (req, res) => {
  res.send('Hello World from Docker NodeJS\n');
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
