// Cada metodo deve ser carregado aqui
import User from '../model/user'




exports.getAllStudents = async (req,res) => {
  try {
  // importar selects (arquivo de consultas separado)
    const query = 'SELECT * FROM ALUNO';
    const result = await pool.query(query);
    const alunos = result.rows;
    res.json(alunos);
  
  // tratar esse erro com classes
  } catch (error) {
    console.error('Erro ao obter os dados dos alunos:', error);
    res.status(500).send('Erro ao obter os dados dods alunos.');
  }
}


export.getStudentById = async (req,res) => {
  try {   
    const { matricula } = req.params;
    
    // Busca direta pela matrícula
    // isso aqui vai para uma arquivo de consultas especifico
    const result = await pool.query(
      'SELECT * FROM aluno WHERE matricula = $1', 
      [matricula]
    );


// tratamentos de erro
    if (result.rows.length === 0) {
      return res.status(404).json({ 
        error: 'Aluno não encontrado' 
      });
    }


    // Retorna TODOS os dados do aluno em JSON
    res.json(result.rows[0]);

  } catch (error) {
    console.error('Erro no backend:', error);
    res.status(500).json({ 
      error: 'Erro interno no servidor' 
    });
  }
}




















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


exports.CreateUser = async (req,res) => {
  const  {
    email,
    password,
    perfil 
  } = req.body

  if(!email){
    req.flash('mensagemFalse', 'Insira um nome e senha validos');
    return res.status(422).redirect('back');
  }

  const Userexists = await User.findOne({email:email})
  
  if(Userexists) { 
    req.flash('mensagemFalse', 'O usuário já existe! tente fazer login');
      return res.status(422).redirect('back');
  }

  const salt = await bcrypt.genSalt(12)
  const passwordHash = await bcrypt.hash(password, salt)
  const user = new User({
    email,
    password : passwordHash,
    perfil,
  })

  try{
    await user.save()
    req.flash('mensagemTrue', 'Usuário criado com sucesso!');
    return res.status(201).redirect('back');
  }
  catch{
    req.flash('mensagemFalse', 'Erro ao criar usuário! Atualize a pagina e tente novamente');
    return res.status(500).redirect('back');

  }
}


