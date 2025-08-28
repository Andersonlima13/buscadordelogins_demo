// Cada metodo deve ser carregado aqui
import User from '../model/user'




exports.getAllUsers = async (req,res) => {
      try {
    const users = await User.find({});
    res.json(users); 
    
  } catch (err) {
    res.status(500).json({ 
      error: "Falha ao carregar usuários" 
    });
  }
}
