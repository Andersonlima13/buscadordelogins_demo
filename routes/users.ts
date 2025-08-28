const express = require('express'); 
const router = express.Router()
const userController = require('../controllers/userController')

// Get user 

// -> Legibilidade -> 'Rota' -> Controller -> Metodo acionado

// Operações CRUD de users em cima de alunos 

// GET all users
router.get('/alunos', userController.getAllStudents); 
// DELETE user POR MATRICULA       
router.post('alunos/delete/:id', userController.deleteStudentById);
// UPDATE user POR MATRICULA
router.post('alunos/update/:id', userController.updateStudentById);
// CREATE USER
router.post('alunos/create', userController.createStudent);


// Operação de USER Em cima de User

router.get('/', userController.getAllUsers);

router.post('/create', userController.createUser);

router.post('/delete/:id', userController.deleteUserById);




module.exports = router;




