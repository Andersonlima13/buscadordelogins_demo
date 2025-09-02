const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController');
const adminController = require('../controllers/adminController');
const authenticateToken = require('../middlewares/authenticateToken');

// ---- Alunos (Postgres) ----
router.get('/alunos', authenticateToken, userController.getAllStudents);
router.get('/alunos/:matricula', authenticateToken, userController.getStudentById);
router.post('/alunos/create', authenticateToken, userController.createStudent);
router.put('/alunos/update/:id', authenticateToken, userController.updateStudentById);
router.delete('/alunos/delete/:id', authenticateToken, userController.deleteStudentById);



// rotas de usuarios mongo db
// ---- Usuários (MongoDB) ----
router.get('/admin', userController.getAllUsers);
router.post('/admin/create', adminController.createUser);
router.delete('/admin/delete/:id', userController.deleteUserById);

module.exports = router;
