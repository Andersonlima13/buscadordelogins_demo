const express = require('express');
const router = express.Router();
const authController = require('../controllers/authController')

// Operacao de login (visto que todo user faz login)



router.post('/login', authController.authUser);


module.exports = router;
