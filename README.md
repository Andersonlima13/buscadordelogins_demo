### <h1>Consulta Plataformas - Colegio vila</h1>
### Autores
Anderson Sousa

### Descrição do Problema
O projeto consiste em resolver um problema recorrente na instituição, onde grande parte dos alunos não sabe qual plataforma educacional é ultilizada na escola, ou até quais dessa o mesmo tem acesso, ou por vezes
se quer sabe as senhas que são definidas como padrão, gerando icontáveis problemas ao setor de TI. <br>
Dito isso , a ferramenta de consulta de logins, possibilita consultar os logins e plataformas de qualquer aluno da instituição, apenas ao inserir seu nome ou matricula. centralizando tudo em apenas um só lugar.

### Desenvolvimento
- Desenvolvido ultilizando o node js como servidor , ultilizando de requisiçoes http para consultar os dados através do banco de dados , e redenrizando templates em ejs para cada aluno
cuja matricula ou nome for buscado <br>
front-end desenvolvido ultilizando o mdboostrap
### Pré-requisitos para rodar o projeto
Node js instalado , Postgreesql instalado

### Instruções de uso
<p>• Faça o download do arquivo .zip , através do github</p>
<p>• Extrair o arquivo .zip em uma pasta desejada.</p>
<p>• Abra o terminal e use o comando cd para mudar para o diretório onde está localizado o seu projeto Node.js. Por exemplo: cd caminho/para/o/seu/projeto</p>
<p>• Navegue até o arquivo app.js Por exemplo: cd caminho/para/o/seu/app.js </p>
<p>• Ao entrar em app.js , digite : npm install , e aguarde a instalção dos pacotes do node js</p>
<p>• Dentro da pasta do projeto, abra o arquivo ".env" , e altere suas variaveis de ambiente (porta e endereço ip do servidor e banco de dados)</p>
<p>• Navegue até o arquivo app.js , e digite : npm start. Logo a aplicação passa a funcionar na porta e ip configurados.</p>


### Instruções (rodar no vs code - para desenvolvedores)
<p>• Clone o repositório: git clone https://github.com/Andersonlima13/projeto_logins.git</p>
<p>• Navegue até o arquivo "app.js"</p>
<p>• Configure suas variaveis de ambiente em um documento .env (porta e endereço ip do servidor e banco de dados)</p>
<p>• Dentro da pasta do projeto execute : npm start</p>

### Instruções (Banco de dados)

<p>• Instale o postgree sql em sua maquina</p>
<p>• Configure seu usuario do postgree</p>
<p>• Dentro do Postgree, abra uma janela de comando sql , copie os comandos do arquivo script.sql , cole e execute dentro do postgree</p>
<p>• Apos a criação do banco , execute os comandos de inserção do usuario , disponiveis nos arquivos insertalunos.sql</p>
<p>• Certifique-se de configurar o arquivo .env corretamente antes de executar a aplicação , com o nome , usuario e senha fidedignos com o banco criado.</p>










### Updates futuros 

<p>Permitir que os alunos consultem seus próprios logins , através de uma tela de login</p>
<p>Permitir que os professores consultem seus próprios logins , através de uma tela de login</p>
<p>Incluir informações que busquem auxiliar o acesso dos mesmos nas plataformas</p>
