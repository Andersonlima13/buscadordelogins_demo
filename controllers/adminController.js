const userController = require('./userController');
const authController = require('./authController');

// herda métodos do userController que o admin também pode usar
module.exports = {
  ...userController,
  ...authController,

createUser: async (req, res) => {
  try {
    if (req.user.perfil !== 'Administrador') {
      return res.status(403).json({ error: 'Sem permissão' });
    }
    return await userController.createUser(req, res);
  } catch (error) {
    console.error('Erro ao criar usuário (admin):', error);
    return res.status(500).json({ error: 'Erro ao criar usuário' });
  }
}
};