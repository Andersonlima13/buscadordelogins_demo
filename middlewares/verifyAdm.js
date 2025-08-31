const express = require('express');
const router = express.Router();
const adminController = require('../controllers/adminController');
const verifyAdm = require('../middlewares/verifyAdm');

// Rotas de administração protegidas
router.post('/create-user', verifyAdm, adminController.createUser);
router.delete('/delete-user/:id', verifyAdm, adminController.deleteUserById);

// você também pode reaproveitar coisas de aluno se admin pode fazer
router.delete('/delete-student/:id', verifyAdm, adminController.deleteStudentById);

module.exports = router;
