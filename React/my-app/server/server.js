const express = require('express');
const morgan = require('morgan');

const app = express();

app.use(express.json());
app.use(morgan('dev'));

app.get('/', (req,res) => {
    res.send('<h1>Hello from Node server</h1>')
})

app.listen(8080, () => {
    console.log('serveur démarré sur port 8080');
})