const jwt = require('jsonwebtoken');
const allowedProfiles = require('./allowedProfiles');

function verifyAdm(req, res, next) {
  const authHeader = req.headers['authorization'];
  const token = authHeader && authHeader.split(' ')[1]; // "Bearer <token>"

  if (!token) return res.status(401).json({ error: 'Token não fornecido' });

  try {
    const decoded = jwt.verify(token, process.env.SECRET_KEY);

    if (!allowedProfiles.includes(decoded.perfil)) {
      return res.status(403).json({ error: 'Apenas administradores podem realizar esta ação' });
    }

    req.user = decoded; // passa user para o controller
    next();
  } catch (err) {
    return res.status(403).json({ error: 'Token inválido ou expirado' });
  }
}

module.exports = verifyAdm;
