const express = require('express');
const app = express();
const path = require('path');
const fs = require('fs');
const ExcelJS = require('exceljs');
const cors = require('cors')
const pool = require('./config/db')



const flash = require('connect-flash')



const multer = require('multer');
const xlsx = require('xlsx');
app.use(express.json())
const mongoose = require('mongoose')

const User = require('./model/user')
const session = require('express-session');
const jwt = require('jsonwebtoken');
app.use(express.urlencoded({ extended: true }));
const cookieParser = require('cookie-parser');
app.use(cookieParser());
require('dotenv').config();















/// definindo o cors para o front end
app.use(cors({
  origin: 'http://localhost:3001',
  credentials: true,
  methods: ['GET', 'POST', 'PUT', 'DELETE'],
  allowedHeaders: ['Content-Type', 'Authorization']
}));







const userRoutes = require('./routes/users'); app.use('/users', userRoutes);
const authRoutes = require('./routes/auth'); app.use('/auth', authRoutes);







app.use(session({
  secret: '123456',
  resave: false,
  saveUninitialized: true,
}));

// Configuração do flash
app.use(flash());


app.use(express.static(path.join(__dirname, 'public')));







const MONGO_USER = process.env.MONGO_USER
const MONGO_PASSWORD = process.env.MONGO_PASSWORD






mongoose.connect(`mongodb+srv://${MONGO_USER}:${MONGO_PASSWORD}@cluster0.tcneq.mongodb.net/`).then(() => {
  app.listen(3000);
  console.log('Conexão de usuários MongoDB autorizada!');
}).catch((err) => console.log('Erro ao conectar ao MongoDB:', err));




const uploadDir = path.join(__dirname, 'uploads');

// Crie o diretório se ele não existir
if (!fs.existsSync(uploadDir)) {
  fs.mkdirSync(uploadDir);
}

// Configuração do multer para armazenar arquivos temporariamente
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, uploadDir);
  },
  filename: function (req, file, cb) {
    cb(null, Date.now() + path.extname(file.originalname));
  }
});

const upload = multer({ storage: storage });





app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views')); 

app.use(express.static(__dirname));


// Requisições HTTP
app.listen(3050,'0.0.0.0',() => {
  console.log("Servidor iniciado com sucesso!");
});




















/* validar os dados de acesso*/




const validateSheet = (data) => {
  const requiredColumns = ['NOME', 'SERIE', 'UNIDADE', 'EMAIL', 'SENHA_EMAIL', 'MATRICULA', 'SENHA_APP'];
  const sheetHeaders = Object.keys(data[0] || {});

  // Verificar se todas as colunas obrigatórias estão presentes
  for (const column of requiredColumns) {
    if (!sheetHeaders.includes(column)) {
      throw new Error(`Coluna obrigatória ausente: ${column}`);
    }
  }

  // Verificar cada linha de dados
  data.forEach((row, index) => {
    if (!row['NOME'] || !row['MATRICULA']) {
      throw new Error(`Dados obrigatórios ausentes na linha ${index + 2}`);
    }
  });
};








app.post('/upload', upload.single('file'), verifyTI, async (req, res) => {
  try {
    console.log('Caminho do arquivo recebido:', req.file.path);

    // Ler o arquivo Excel
    const workbook = xlsx.readFile(req.file.path);
    const sheetName = workbook.SheetNames[0];
    const sheet = workbook.Sheets[sheetName];
    const data = xlsx.utils.sheet_to_json(sheet);

    console.log('Dados lidos da planilha:', data);

    // Validar a planilha
    validateSheet(data);

    // Processar e salvar os dados


    
    for (const row of data) {
      const { NOME, SERIE, UNIDADE, EMAIL, SENHA_EMAIL, MATRICULA, SENHA_APP, SFB, SENHA_SFB, RICHMOND, SENHA_R, ARVORE_SENHA, EVOLUCIONAL, SENHA_EVO, MEDALHEI } = row;
      if (NOME && MATRICULA) {
        console.log('Inserindo dados:', { NOME, SERIE, UNIDADE, EMAIL, SENHA_EMAIL, MATRICULA, SENHA_APP, SFB, SENHA_SFB, RICHMOND, SENHA_R, ARVORE_SENHA, EVOLUCIONAL, SENHA_EVO, MEDALHEI });
        const query = `
          INSERT INTO ALUNO (NOME, SERIE, UNIDADE, EMAIL, SENHA_EMAIL, MATRICULA, SENHA_APP, SFB, SENHA_SFB, RICHMOND, SENHA_R, ARVORE_SENHA, EVOLUCIONAL, SENHA_EVO, MEDALHEI)
          VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15)
        `;
        const values = [NOME, SERIE, UNIDADE, EMAIL, SENHA_EMAIL, MATRICULA, SENHA_APP, SFB, SENHA_SFB, RICHMOND, SENHA_R, ARVORE_SENHA, EVOLUCIONAL, SENHA_EVO, MEDALHEI];
        await pool.query(query, values);
      }
    }



    req.flash('mensagemTrue', 'Planilha importada com sucesso!');
    res.status(200).send('Planilha importada com sucesso!');
  } catch (error) {



    let mensagemErro = 'Erro ao importar a planilha.';

    if (error.code === 'ER_DUP_ENTRY') {
      mensagemErro = 'Erro: Matrícula duplicada encontrada na planilha.';
    } else if (error.code === '22001') { 
      mensagemErro = 'Erro: Um dos valores inseridos excede o tamanho máximo permitido.';
    }


    req.flash('mensagemFalse', 'Erro ao importar a planilha', mensagemErro);
    res.status(500).redirect('back');






  } finally {
    // Remover o arquivo temporário após processamento
    if (fs.existsSync(req.file.path)) {
      fs.unlinkSync(req.file.path);
    }
  }
});






/// outro middleware aqui

async function verifyTI(req, res, next) {
  const token = req.cookies.token;

  if (!token) {	
    req.flash('mensagemFalse', 'Acesso Negado , Faça login primeiro');
    return res.status(403).redirect('/login');
  }

  try {
    const secret = process.env.SECRET_KEY;
    const decoded = jwt.verify(token, secret);
    req.userId = decoded.id;

    const user = await User.findById(req.userId);
    
    if (!user) {
      req.flash('mensagemFalse', 'Usuário não encontrado');
      return res.status(404).redirect('back');
    }

    if (user.perfil !== 'TI') {  
      req.flash('mensagemFalse', 'Acesso Negado');
      return res.status(401).redirect('back');
    }


    next();
  } catch (err) {
    
    req.flash('mensagemFalse', 'Token inválido');
      return res.status(403).redirect('back');
  }
}


app.get('/home/download-modelo', async (req, res) => {
  // Criar uma nova instância do workbook e worksheet
  const workbook = new ExcelJS.Workbook();
  const worksheet = workbook.addWorksheet('Modelo');

  // Definir os cabeçalhos e uma linha de exemplo
  const headers = ['NOME', 'SERIE', 'UNIDADE', 'EMAIL', 'SENHA_EMAIL', 'MATRICULA', 'SENHA_APP', 'SFB', 'SENHA_SFB', 'RICHMOND', 'SENHA_R', 'ARVORE_SENHA', 'EVOLUCIONAL', 'SENHA_EVO', 'MEDALHEI'];
  const exampleData = ['Aluno', '1ª Série A', 'VILA BESSA', 'aluno@sou.vilacolegio.com.br', 'senha12345', '0000', '010118', 'aluno.sfb.1', '010118', 'rsbr.aluno.richmond.5', '123456', 'ABC0000', '1234567', 'vila12345', 'aluno@sou.vilacolegio.com.br'];

  // Adicionar os cabeçalhos com estilo
  worksheet.addRow(headers);
  headers.forEach((header, index) => {
    const cell = worksheet.getRow(1).getCell(index + 1);
    cell.font = { bold: true }; // Negrito
    cell.fill = {
      type: 'pattern',
      pattern: 'solid',
      fgColor: { argb: 'FF0070C0' }, // Azul (ARGB hexadecimal)
    };
    cell.alignment = { vertical: 'middle', horizontal: 'center' }; // Alinhamento centralizado
  });

  // Adicionar a linha de exemplo
  worksheet.addRow(exampleData);

  // Ajustar a largura das colunas para melhor visualização
  worksheet.columns.forEach((column) => {
    column.width = 20;
  });

  // Salvar a planilha temporariamente para envio
  const filePath = path.join(__dirname, 'planilha_modelo_exemplo.xlsx');
  await workbook.xlsx.writeFile(filePath);

  // Enviar o arquivo para o usuário e removê-lo após o download
  res.download(filePath, 'planilha_modelo_exemplo.xlsx', (err) => {
    if (err) {
      console.error('Erro ao enviar planilha:', err);
    }
    // Remover o arquivo temporário após o envio
    fs.unlinkSync(filePath);
  });
});















// Rota de criação de usuarios

/*app.post('/register', verifyTI,  async (req,res) => { 
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
})






*/


// funcao de autenticacao






/*function authenticateToken(req, res, next) {
  const token = req.cookies.token || req.header('Authorization')?.replace('Bearer ', '');

  if (!token) {
    req.flash('mensagemFalse', 'Usuário não econtrado');
    return res.status(401).redirect('/login');
  }

    
  try {
      const secret = process.env.SECRET_KEY;
      const decoded = jwt.verify(token, secret);
      req.user = decoded; // Adiciona as informações do usuário no req
      next(); // Permite que a requisição prossiga
  } catch (err) {
      req.flash('mensagemFalse', 'Token inválido! Por favor, faça login novamente');
      console.log(err)
      return res.status(401).redirect('/login');
      
	
  }
   
}





*/

// rota de autenticacao 







// FUNCAO QUE VERIFICA O  TIPO DE USUARIO QUE ACESSA A ROTA








/// metodo de aluno
/*
app.get('/aluno/:id', async (req, res) => {
  try {
      const id = req.params.id;

      // Consulta ao banco de dados para buscar o aluno pelo ID (ou matrícula)
      const aluno = await db.collection('ALUNO').findOne({ matricula: id });

      if (!aluno) {
          return res.status(404).send('Aluno não encontrado');
      }

      // Renderiza o HTML específico desse aluno com o template EJS
      res.json( { aluno });
  } catch (error) {
      console.error('Erro ao buscar aluno:', error);
      res.status(500).send('Erro interno no servidor');
  }
});
*/ 

// metodo de users

// rota get do back end , retornando via json

/*
app.get('/users', async (req, res) => {
  try {
    const users = await User.find({});
    res.json(users); // Retorna diretamente o array de usuários
    
  } catch (err) {
    res.status(500).json({ 
      error: "Falha ao carregar usuários" 
    });
  }
});




app.get("/aluno", async (req, res) => {
  
  try {
    const searchType = req.query.searchType;
    const param = req.query.param;

    let query, values;

    if (searchType === 'matricula') {
      query = 'SELECT * FROM ALUNO WHERE MATRICULA = $1';
      values = [param];
    } else if (searchType === 'nome') {

      query = 'SELECT NOME, MATRICULA, SERIE FROM ALUNO WHERE NOME ILIKE $1 LIMIT 8';
      values = [`%${param}%`];
    } else {
      return res.status(400).send('Tipo de busca inválido.');
    }

    const result = await pool.query(query, values);



    if (result.rows.length === 0) {
    
      req.flash('mensagemFalse', "Aluno não encontrado")
      return res.redirect('back');

    }
    if (searchType === 'matricula') {
      const aluno = result.rows[0];
      res.render('aluno', { aluno });


    } else {
      const alunos = result.rows;
      res.render('resultados', { alunos });

    }
  } catch (error) {
    console.error('Erro ao executar a consulta:', error);
    res.status(500).send('Erro ao executar a consulta.');
  }
});



/* app.get("/alunos",  async (req, res) => {
  try {
    const query = 'SELECT * FROM ALUNO';
    const result = await pool.query(query);
    const alunos = result.rows;
    res.json(alunos);
  } catch (error) {
    console.error('Erro ao obter os dados dos alunos:', error);
    res.status(500).send('Erro ao obter os dados dods alunos.');
  }
});

// rota do front com o bacck
app.get("/alunos/:matricula", async (req, res) => {



  try {
    
    const { matricula } = req.params;
    
    // Busca direta pela matrícula
    const result = await pool.query(
      'SELECT * FROM aluno WHERE matricula = $1', 
      [matricula]
    );

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
});

//  principal requisiçao , deve buscar um aluno por nome ou matricula , dependendo do paramentro (param) passado pelo usuario
// ao buscar por nome o usuario é redirecionado para a view rotateste , contendo o nome dos usuarios encontrados pela busca

/*
app.get("/aluno/:param", async (req, res) => {
  try {
      const param = req.params.param;
      let query, values;

      if (/^\d+$/.test(param)) { 
          // Se o parâmetro for composto apenas por dígitos, considere como matrícula
          query = 'SELECT * FROM ALUNO WHERE MATRICULA = $1';
          values = [param];

          const result = await pool.query(query, values);

          if (result.rows.length === 0) {
              return res.status(404).send('Aluno não encontrado.');
          }

          const aluno = result.rows[0];
          res.json( { aluno });
      } else {
          // Caso contrário, considere como nome (usando ILIKE para case-insensitive match)
          query = 'SELECT * FROM ALUNO WHERE NOME ILIKE $1';
          values = [`%${param}%`];

          const result = await pool.query(query, values);

          if (result.rows.length === 0) {
              return res.status(404).send('Aluno não encontrado.');
          }

          const alunos = result.rows;
          res.render('rotateste', { alunos });
      }
  } catch (error) {
      console.error('Erro ao executar a consulta:', error);
      res.status(500).send('Erro ao executar a consulta.');
  }
});

// Criação do banco pool
/* const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'PLATAFORMAS_ALUNOS',
  password: '12345',
  port:5432,
})


// Conexão com o banco de dados
pool.connect((err, client, release) => {
  if (err) {
    console.error('Erro ao conectar ao banco de dados:', err);
  } else {
    console.log('Conexão bem-sucedida com o banco de dados!');
  }
});
*/



/*

app.post('/login', async (req, res) => {
  const { email, password } = req.body;

  // Validação básica de usuário e senha
  if (email !== 'admin@teste.com') {
    req.flash('mensagemFalse', "Usuário não encontrado!");
    return res.redirect('back');
  }

  if (password !== 'admin') {
    req.flash('mensagemFalse', "Senha incorreta!");
    return res.redirect('back');
  }

  // Login bem-sucedido
  req.flash('mensagemTrue', 'Login realizado com sucesso!');
  console.log("Usuário logado:", email);
  return res.redirect('/home'); // Redireciona para a rota '/home'
});



*/





















