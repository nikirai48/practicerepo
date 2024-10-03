// server.js

const express = require('express');
const app = express();

app.get('/hello', (req, res) => {
    res.json({ message: 'Hello from the Backend!' });
});

const port = 3000;
app.listen(port, () => {
    console.log(`Backend service not running on port ${port}`);
});
