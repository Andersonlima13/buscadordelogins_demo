const User = require('../model/user');


exports.authUser = async (req, res) => {
  const { email, password } = req.body;

  if (email !== 'admin@teste.com') {
  //  req.flash('mensagemFalse', "Usuário não encontrado!");
    console.log('email errado')
  }

  if (password !== 'admin') {
//    req.flash('mensagemFalse', "Senha incorreta!");
      console.log('senha errada')
}
//  req.flash('mensagemTrue', 'Login realizado com sucesso!');
  console.log("Usuário logado:", email);
  return

};