// Dependencias del servidor
const path = require('node:path');
const express = require('express');
const app = express();

process.loadEnvFile()
const PORT = process.env.PORT || 4000;

//Indicar la ruta de los ficheros estáticos
app.use(express.static(path.join(__dirname, 'public')));

app.get('/', (req, res) => {
  res.sendFile('index.html');
});

//Indicar el puerto de escucha
app.listen(PORT, () => {
  console.log(`Servidor escuchando en http://localhost:${PORT}`);
});
