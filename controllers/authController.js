// controllers/authController.js
const jwt = require('jsonwebtoken');
const pool = require('../config/db');

// IMPLEMENTAR O BCRYPT PARA CRIPTOGRAFAR OS DADOS DO USER

exports.authUser = async (req, res) => {
  const { email, password } = req.body;

  try {
    // busca no Postgres
    const result = await pool.query(
      'SELECT * FROM username WHERE email = $1',
      [email]
    );
    if (result.rows.length === 0) {
      return res.status(404).json({ error: 'Usuário não encontrado' });
    }

    const user = result.rows[0];

    // 🚨 Comparação direta sem criptografia (apenas para testes!)
    if (password !== user.password) {
      return res.status(401).json({ error: 'Senha incorreta' });
    }

    // gera token com id e perfil
    const token = jwt.sign(
      { id: user.id, perfil: user.perfil },
      process.env.SECRET_KEY,
      { expiresIn: '1h' }
    );

    return res.json({
      message: 'Login bem-sucedido',
      token,
      user: {
        id: user.id,
        email: user.email,
        perfil: user.perfil,
      }
    });
  } catch (err) {
    console.error('Erro no login:', err);
    return res.status(500).json({ error: 'Erro interno' });
  }
};
