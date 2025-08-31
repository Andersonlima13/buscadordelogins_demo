const userController = require('./userController');
const authController = require('./authController');

// herda métodos do userController que o admin também pode usar
module.exports = {
  ...userController,
  ...authController,

  // aqui você redefine ou cria métodos exclusivos do admin
  createUser: async (req, res) => {
    const { perfil } = req.body;

    if (!perfil) {
      return res.status(400).json({ error: 'Perfil é obrigatório' });
    }

    // aqui, só admin pode criar usuário
    try {
      return await userController.createUser(req, res);
    } catch (error) {
      console.error('Erro ao criar usuário (admin):', error);
      return res.status(500).json({ error: 'Erro ao criar usuário' });
    }
  },
};
