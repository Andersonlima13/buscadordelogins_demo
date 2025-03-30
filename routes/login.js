const express = require('express');
const router = express.Router();
const flash = require('connect-flash')


router.get("/login", async (req, res) => {
    const mensagemT = req.flash('mensagemTrue');
    const mensagemF = req.flash('mensagemFalse');
    const mensagemN = req.flash('mensagemNotif');
    res.render('login', {
        mensagemT: mensagemT.length > 0 ? mensagemT[0] : null,
        mensagemF: mensagemF.length > 0 ? mensagemF[0] : null,
        mensagemN: mensagemN.length > 0 ? mensagemN[0] : null,
     });
  });
  

  router.post('/login' , async (req,res) => {
    
    const {email,password} = req.body

    const user = await User.findOne({email:email})


  if(!user) { 
    req.flash('mensagemFalse', "Usuário não encontrado!")
    return res.status(404).redirect('back')
  }
  const checkPassword = await bcrypt.compare(password, user.password)

  if (!checkPassword){
    req.flash('mensagemFalse', "Senha incorreta!")
    return res.status(422).redirect('back')
  }

  try {
    const secret = process.env.SECRET_KEY;
   
    const token = jwt.sign({ id: user._id }, secret, { expiresIn: '1m' }); // Token expira no tempo passado como parametro
    res.cookie('token', token, { httpOnly: true, secure: true, maxAge: 1 * 60 * 1000 }); // Cookie expira no tempo passado como parametro


    res.status(200).redirect('/Home');
    req.flash('mensagemTrue', 'Usuário conectado !');
    console.log("Usuário logado:", req.body.email);
} catch (err) {
    console.log(err);
    req.flash('mensagemFalse', 'Erro ao fazer login!');
    res.status(500).redirect('/login');
}
    

})


module.exports = router;