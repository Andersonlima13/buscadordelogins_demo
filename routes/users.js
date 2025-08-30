const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController');

// ---- Alunos (Postgres) ----
router.get('/alunos', userController.getAllStudents);
router.get('/alunos/:matricula', userController.getStudentById);
router.post('/alunos/create', userController.createStudent);
router.put('/alunos/update/:id', userController.updateStudentById);
router.delete('/alunos/delete/:id', userController.deleteStudentById);



// rotas de usuarios mongo db
// ---- Usuários (MongoDB) ----
router.get('/admin', userController.getAllUsers);
router.post('/admin/create', userController.createUser);
router.delete('/admin/delete/:id', userController.deleteUserById);

module.exports = router;
