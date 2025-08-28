const express = require('express'); 
const router = express.Router()
const userController = require('../controllers/userController')

// Get user 

// -> Legibilidade -> 'Rota' -> Controller -> Metodo acionado

router.get('/', userController.getAllUsers); 


