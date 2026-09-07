const express = require('express');
const app = express();

app.use(express.json());

let todos = [];

app.get('/todos', (req, res) => {
  res.json(todos);
});

app.post('/todos', (req, res) => {
  const todo = req.body;
  todos.push(todo);
  res.status(201).json(todo);
});

app.listen(5000 => {
  console.log('Server running on port 5000
});

app.get('/', (req, res) => {
  res.send('Todo API is running! Try /todos');
});