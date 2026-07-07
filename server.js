const express = require('express');
const app = express();

app.use(express.json());

let todos = [];

// GET endpoint për të marrë listën
app.get('/todos', (req, res) => {
  res.json(todos);
});

// POST endpoint për të shtuar një todo
app.post('/todos', (req, res) => {
  const todo = req.body;
  todos.push(todo);
  res.status(201).json(todo);
});

// Ky rresht e mban serverin gjallë
app.listen(8080, () => {
  console.log('Server running on port 8080');
});

app.get('/', (req, res) => {
  res.send('Todo API is running! Try /todos');
});