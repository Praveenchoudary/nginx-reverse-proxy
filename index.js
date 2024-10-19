// Import the Express module
const express = require('express');

// Create an instance of Express
const app = express();

// Define the port your app will listen on
const port = process.env.PORT || 3000;

// Define a simple route
app.get('/', (req, res) => {
  res.send('This is nodejs Dockerfile');
});

// Start the server and listen on the specified port
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});

