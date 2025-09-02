// routes/auth.js
const express = require('express');
const router = express.Router();
const authController = require('../controllers/authController');

// login
router.post('/login', authController.authUser);
// logout
router.post('/logout', authController.logout);

module.exports = router;
