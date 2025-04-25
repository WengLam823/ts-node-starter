import express from 'express';

const app = express();
const port = Number(process.env.PORT) || 3000;

app.get('/', (_req, res) => {
  res.send('👋 Hello from ts-node-starter in Docker!');
});

app.listen(port, () => {
    console.log(`Server listening on http://0.0.0.0:${port}`);
});