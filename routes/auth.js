const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController');

// Operacao de login (visto que todo user faz login)



router.post('/admin/login', userController.authUser);


