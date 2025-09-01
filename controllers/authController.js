const jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt');
const User = require('../model/user');

exports.authUser = async (req, res) => {
  const { email, password } = req.body;

  try {
    const user = await User.findOne({ email });
    if (!user) return res.status(404).json({ error: 'Usuário não encontrado' });

    const passwordMatch = await bcrypt.compare(password, user.password);
    if (!passwordMatch) return res.status(401).json({ error: 'Senha incorreta' });

    // gera token com id e perfil
    const token = jwt.sign(
      { id: user._id, perfil: user.perfil },
      process.env.SECRET_KEY,
      { expiresIn: '1h' }
    );

    return res.json({ message: 'Login bem-sucedido', token });
  } catch (err) {
    console.error('Erro no login:', err);
    return res.status(500).json({ error: 'Erro interno' });
  }
};
