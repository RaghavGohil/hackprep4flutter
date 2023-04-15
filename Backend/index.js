// Description: This is the main file of the API

// Importing the express module
const express = require('express');
const app = express();

// Ignore (for now, ask me later if you want to know)
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// Array of finances
let expenses = [
  {
    // Name of the transaction
    name: 'Gift for mummy',
    // Bill, EMI, Entertainment, Food, Drinks, Fuel, Groceries, Health, Investment, Shopping, Transfer, Travel
    category: 'Food',
    // Date of the transaction
    date: '2021-05-01',
    // Amount of the transaction
    amount: 1000,
    // Unique ID of the transaction
    id: 1
  },
  {
    name: 'Pav Bhaji with Friends',
    category: 'Food',
    date: '2021-05-01',
    amount: 1000,
    id: 2
  }
];

// Root route
app.get('/', (req, res) => {
  res.send('Welcome to my website!!!');
});

// Get all finances
// app.get('/expenses', (req, res) => {

//   res.send(expenses);
// });

app.get('/expenses', (req, res) => {
  res.send(expenses);
});

app.get('/expenses/:id', (req, res) => {
  res.send(expenses.find((finance) => finance.id == req.params.id));
});

app.post('/expenses', (req, res) => {
  const name = req.body.name;
  const amount = req.body.amount;
  const category = req.body.category;
  const date = req.body.date;
  expenses.push(
  {
    name: name,
    category: category,
    date: date,
    amount: amount,
  })
  res.send('expense added')
});

app.listen(5000, () => {
    console.log('Server Listening on port 5000');
});