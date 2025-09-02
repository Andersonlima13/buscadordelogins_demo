// controllers/authController.js
const jwt = require('jsonwebtoken');
const pool = require('../config/db');

exports.authUser = async (req, res) => {
  const { email, password } = req.body;

  try {
    const result = await pool.query(
      'SELECT * FROM username WHERE email = $1',
      [email]
    );
    if (result.rows.length === 0) {
      return res.status(404).json({ error: 'Usuário não encontrado' });
    }

    const user = result.rows[0];

    if (password !== user.password) {
      return res.status(401).json({ error: 'Senha incorreta' });
    }

    const token = jwt.sign(
      { id: user.id, perfil: user.perfil },
      process.env.SECRET_KEY,
      { expiresIn: '1h' }
    );

    // seta cookie httpOnly
    res.cookie('token', token, {
      httpOnly: true,
      secure: process.env.NODE_ENV === 'production',
      sameSite: 'lax',
      maxAge: 60 * 60 * 1000,
      path: '/',
    });

    // ✅ agora responde corretamente
    return res.json({
      message: 'Login bem-sucedido',
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


exports.logout = (req, res) => {
  res.clearCookie('token', {
    httpOnly: true,
    secure: process.env.NODE_ENV === 'production',
    sameSite: 'lax',
  });
  return res.json({ message: 'Logout realizado com sucesso' });
};


