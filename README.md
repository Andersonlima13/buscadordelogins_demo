### <h1>Consulta Plataformas - Colegio vila</h1>
### Autores
Anderson Sousa De Lima


### Versão Demonstrativa :
Conta apenas com dados ficticios, afim de demonstrações de uso , que não condiz com a versão ultilizada no ambiente de produção.

### Acesso :
Login : admin@teste.com
Senha : admin

[BUSCADOR DE LOGINS](https://buscadordelogins.vercel.app)


### Descrição do Problema
Este projeto visa solucionar um problema recorrente na instituição, onde muitos alunos não possuem clareza sobre quais plataformas educacionais estão acessíveis a eles, ou sequer sabem as credenciais de login, muitas vezes configuradas com valores padrão. Esse cenário gera diversos desafios para o setor de TI, comprometendo a agilidade e a eficiência no atendimento às demandas.

Com isso, a ferramenta de consulta de logins foi desenvolvida para permitir o acesso rápido e centralizado às informações de login e plataformas de qualquer aluno da instituição. Por meio da simples inserção do nome ou matrícula do aluno, é possível obter todos os dados necessários, proporcionando uma gestão mais eficiente e diminuindo a sobrecarga do suporte técnico.



### Desenvolvimento
O projeto foi desenvolvido utilizando Node.js como servidor, fazendo uso de requisições HTTP para consultar os dados armazenados no banco de dados. Para a renderização dinâmica das informações, foram utilizados templates EJS, permitindo exibir as informações de cada aluno de acordo com a matrícula ou nome inserido.

O front-end foi implementado com a utilização do framework MDBootstrap, garantindo uma interface moderna e responsiva para o usuário.

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


### Melhorias em desenvolvimento (versão 2.0)


<p>A API será separada do front-end, sendo construída com Node.js no backend, enquanto o front-end será desenvolvido utilizando Next.js e React.js, buscando garantir uma aplicação escalável, eficiente e com uma experiência de usuário otimizada. </p>
<p>O banco de dados será migrado para a nuvem, e a autenticação de usuários será transferida para o Firebase, visando uma maior segurança e escalabilidade na gestão de acessos. </p>
<p> Além disso, a aplicação (tanto o front-end quanto o back-end) será disponibilizada na nuvem, assim como o banco de dados, garantindo uma infraestrutura mais robusta e segura para a operação, com foco em performance e confiabilidade.

 </p>





