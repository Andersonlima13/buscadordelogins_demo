const express = require('express');
const router = express.Router();
const adminController = require('../controllers/adminController');
const verifyAdm = require('../middlewares/verifyAdm');

// rotas protegidas
router.post('/create-user', verifyAdm, adminController.createUser);
router.delete('/delete-user/:id', verifyAdm, adminController.deleteUserById);
router.delete('/delete-student/:id', verifyAdm, adminController.deleteStudentById);

module.exports = router;