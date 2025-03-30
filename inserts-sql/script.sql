

<<<<<<< HEAD
=======

>>>>>>> a4505528a1102d8550f8a67a8a3ca54875968431
/*CREATE TABLE ALUNO (
MATRICULA SERIAL PRIMARY KEY,
NOME VARCHAR(100),
UNIDADE VARCHAR(40),
TURMA VARCHAR (15),
EMAIL VARCHAR (60),
SENHA_EMAIL VARCHAR(15),
LOGIN_APP CHAR(4),
SENHA_R CHAR(10),
VIVADI CHAR(8),
ARVORE CHAR(11));
*/


<<<<<<< HEAD
<<<<<<< HEAD
-- CRIAÇÃO DO BANCO DE DADOS
=======
=======
--- CRIAÇÃO DO BANCO DE PLATAFORMAS

CREATE DATABASE ALUNO



>>>>>>> 4688123d8e23af8f677d1db05b56afdaf129341d
--- Criação da TABELA ALUNO
>>>>>>> a4505528a1102d8550f8a67a8a3ca54875968431

CREATE TABLE ALUNO (
    NOME VARCHAR(80)
    SERIE VARCHAR(40)
    UNIDADE VARCHAR(20)
    EMAIL VARCHAR(80)
    SENHA_EMAIL VARCHAR(20)
    MATRICULA CHAR(4)
    SENHA_APP CHAR(6)
    SFB VARCHAR(80)
    SENHA_SFB CHAR(6)
    RICHMOND VARCHAR(80)
    SENHA_R VARCHAR(20)
    ARVORE_SENHA CHAR(30) 
    EVOLUCIONAL VARCHAR(30) 
    SENHA_EVO VARCHAR(30) 
    MEDALHEI VARCHAR(80)
)

												
---     INSERT DE ALUNOS 


INSERT INTO ALUNO(NOME,SERIE,UNIDADE,EMAIL,SENHA_EMAIL,MATRICULA,SENHA_APP,SFB,SENHA_SFB,RICHMOND,SENHA_R,ARVORE_SENHA,EVOLUCIONAL,SENHA_EVO,MEDALHEI)
VALUES
('ALIRIA SOPHIA FREITAS DINIZ','1ª Série A','VILA BESSA','aliria.diniz@sou.vilacolegio.com.br','mudar@1234','3257','160409','aliria.sophiafreitasdiniz.7','ddmmaa','NULL','NULL','NULL','9580886','vila@2024','aliria.diniz@sou.vilacolegio.com.br'),
('ANDRÉ LUIS ALMEIDA DE MOURA','1ª Série A','VILA BESSA','andre.moura@sou.vilacolegio.com.br','mudar@1234','2452','260908','andre.luisalmeidademoura.7','ddmmaa','NULL','NULL','NULL','9222340','vila@2024','andre.moura@sou.vilacolegio.com.br'),
('ANDRÉ PIMENTEL CORRALES','1ª Série A','VILA BESSA','andre.corrales@sou.vilacolegio.com.br','mudar@1234','3338','251208','andre.pimentelcorrales.7','ddmmaa','NULL','NULL','NULL','3641449','vila@2024','andre.corrales@sou.vilacolegio.com.br'),
('ARTHUR LUIS ARAÚJO DE OLIVEIRA','1ª Série A','VILA BESSA','arthur.oliveira@sou.vilacolegio.com.br','mudar@1234','3388','290708','arthur.luisaraujodeoliveira.7','ddmmaa','NULL','NULL','NULL','9259841','vila@2024','arthur.oliveira@sou.vilacolegio.com.br'),
('CAMILA STHEFANY FONSECA DA SILVA','1ª Série A','VILA BESSA','camila.silva@sou.vilacolegio.com.br','mudar@1234','2833','240908','camila.sthefanyfonsecadasilva.7','ddmmaa','NULL','NULL','NULL','6526503','NULL','camila.silva@sou.vilacolegio.com.br'),
('ENRICO MAXIMO DE CARVALHO','1ª Série A','VILA BESSA','enrico.carvalho@sou.vilacolegio.com.br','mudar@1234','3167','160508','enrico.maximodecarvalho.7','ddmmaa','NULL','NULL','NULL','4295009','vila@2024','enrico.carvalho@sou.vilacolegio.com.br'),
('GABRIEL SENA DA SILVA MONTEIRO','1ª Série A','VILA BESSA','gabriel.sena@sou.vilacolegio.com.br','mudar@1234','3333','180908','gabriel.senadasilvamonteiro.7','ddmmaa','NULL','NULL','NULL','3013749','NULL','gabriel.sena@sou.vilacolegio.com.br'),
('GABRIELA CRUZ DE MORAIS SANTANA','1ª Série A','VILA BESSA','gabriela.santana@sou.vilacolegio.com.br','mudar@1234','3362','261008','gabriela.cruzdemoraissantana.7','ddmmaa','NULL','NULL','NULL','7827877','NULL','gabriela.santana@sou.vilacolegio.com.br'),
('GRAZIELLE DE SOUZA BARROS','1ª Série A','VILA BESSA','grazielle.barros@sou.vilacolegio.com.br','mudar@1234','3255','240309','grazielle.desouzabarros.7','ddmmaa','NULL','NULL','NULL','9598155','NULL','grazielle.barros@sou.vilacolegio.com.br'),
('IAN YOSHINORI COELHO KAWABE','1ª Série A','VILA BESSA','ian.kawabe@sou.vilacolegio.com.br','mudar@1234','3073','230709','ian.yoshinoricoelhokawabe.7','ddmmaa','NULL','NULL','NULL','5198693','vila@2024','ian.kawabe@sou.vilacolegio.com.br'),
('ISABELLE COELHO FERREIRA DE ARAÚJO','1ª Série A','VILA BESSA','isabelle.araujo@sou.vilacolegio.com.br','mudar@1234','3225','250309','isabelle.coelhoferreiradearaujo.7','ddmmaa','NULL','NULL','NULL','6154115','NULL','isabelle.araujo@sou.vilacolegio.com.br'),
('JOÃO GUSTAVO PACHECO DO AMARANTO','1ª Série A','VILA BESSA','joao.amaranto@sou.vilacolegio.com.br','mudar@1234','3346','020209','joao.gustavopachecodoamaranto.7','ddmmaa','NULL','NULL','NULL','2538392','vila@2024','joao.amaranto@sou.vilacolegio.com.br'),
('JOÃO PEDRO FONSECA QUEIROZ DE ALMEIDA','1ª Série A','VILA BESSA','joao.almeida@sou.vilacolegio.com.br','mudar@1234','3409','070109','joao.pedrofonsecaqueirozdealmeida.7','ddmmaa','NULL','NULL','NULL','8331574','vila@2024','joao.almeida@sou.vilacolegio.com.br'),
('JULIO ESPINDOLA DA SILVA','1ª Série A','VILA BESSA','julio.silva@sou.vilacolegio.com.br','mudar@1234','3233','300508','julio.espindoladasilva.7','ddmmaa','NULL','NULL','NULL','5086261','vila@2024','julio.silva@sou.vilacolegio.com.br'),
('LUCAS LÚCIO FERNANDES MOTTA','1ª Série A','VILA BESSA','lucas.motta@sou.vilacolegio.com.br','mudar@1234','3230','251207','lucas.luciofernandesmotta.7','ddmmaa','NULL','NULL','NULL','2379810','vila@2024','lucas.motta@sou.vilacolegio.com.br'),
('MARIA CAROLINA BANDEIRA GONÇALVES','1ª Série A','VILA BESSA','maria.carolina@sou.vilacolegio.com.br','mudar@1234','3228','040908','maria.carolinabandeiragoncalves.7','ddmmaa','NULL','NULL','NULL','9446590','NULL','maria.carolina@sou.vilacolegio.com.br'),
('MARIA CLARA SANTOS DAMIÃO','1ª Série A','VILA BESSA','maria.damiao@sou.vilacolegio.com.br','mudar@1234','3290','161208','maria.clarasantosdamiao.7','ddmmaa','NULL','NULL','NULL','9505513','vila@2024','maria.damiao@sou.vilacolegio.com.br'),
('MYRELLA MAIA DE SOUZA','1ª Série A','VILA BESSA','myrella.souza@sou.vilacolegio.com.br','mudar@1234','2961','041208','myrella.maiadesouza.7','ddmmaa','NULL','NULL','NULL','3322554','vila@2024','myrella.souza@sou.vilacolegio.com.br'),
('PEDRO FERNANDES PESSOA OLIVEIRA SALGUEIRO','1ª Série A','VILA BESSA','pedro.salgueiro@sou.vilacolegio.com.br','mudar@1234','3220','290309','pedro.fernandespessoaoliveirasalgueiro.7','ddmmaa','NULL','NULL','NULL','2339371','vila@2024','pedro.salgueiro@sou.vilacolegio.com.br'),
('RAFAEL DE PINHO CHAVES','1ª Série A','VILA BESSA','rafael.chaves@sou.vilacolegio.com.br','mudar@1234','3420','161208','rafael.depinhochaves.7','ddmmaa','NULL','NULL','NULL','5710889','vila@2024','rafael.chaves@sou.vilacolegio.com.br'),
('RAISSA CRYS MILET BARRETO SOBRAL','1ª Série A','VILA BESSA','raissa.sobral@sou.vilacolegio.com.br','mudar@1234','2936','270808','raissa.crysmiletbarretosobral.7','ddmmaa','NULL','NULL','NULL','8918368','vila@2024','raissa.sobral@sou.vilacolegio.com.br'),
('RAQUEL SOARES DE CARVALHO','1ª Série A','VILA BESSA','raquel.carvalho@sou.vilacolegio.com.br','mudar@1234','2664','211008','raquel.soaresdecarvalho.7','ddmmaa','NULL','NULL','NULL','2478522','NULL','raquel.carvalho@sou.vilacolegio.com.br'),
('WELLINGTON LUIGI DORNELAS DE MEIRELES','1ª Série A','VILA BESSA','wellington.meireles@sou.vilacolegio.com.br','mudar@1234','3026','290109','wellington.luigidornelasdemeireles.7','ddmmaa','NULL','NULL','NULL','4417336','NULL','wellington.meireles@sou.vilacolegio.com.br'),
('ALAN GABRIEL DO NASCIMENTO SOARES','2ª Série A','VILA BESSA','alan.soares@sou.vilacolegio.com.br','mudar@1234','3370','031007','alan.gabrieldonascimentosoares.8','ddmmaa','NULL','NULL','NULL','8018723','NULL','alan.soares@sou.vilacolegio.com.br'),
('ALVARO JOSE RAMALHO BEZERRA DE LIMA','2ª Série A','VILA BESSA','alvaro.lima@sou.vilacolegio.com.br','mudar@1234','3361','170508','alvaro.joseramalhobezerradelima.8','ddmmaa','NULL','NULL','NULL','5914341','NULL','alvaro.lima@sou.vilacolegio.com.br'),
('ANDRÉ MIGUEL PACHECO DE SANTANA BONIFÁCIO CARDOSO','2ª Série A','VILA BESSA','andre.cardoso@sou.vilacolegio.com.br','mudar@1234','3221','231108','andremiguel.pachecodesantanabonifaciocardoso.8','ddmmaa','NULL','NULL','NULL','3955795','vila@2024','andre.cardoso@sou.vilacolegio.com.br'),
('CLARA ELIS RIBEIRO GALDINO DE MARIA','2ª Série A','VILA BESSA','clara.maria@sou.vilacolegio.com.br','mudar@1234','3365','241207','clara.elisribeirogaldinodemaria.8','ddmmaa','NULL','NULL','NULL','7918368','NULL','clara.maria@sou.vilacolegio.com.br'),
('EDUARDO LUCAS GALDINO SILVA','2ª Série A','VILA BESSA','eduardo.galdino@sou.vilacolegio.com.br','mudar@1234','3319','230507','eduardo.lucasgaldinosilva.8','ddmmaa','NULL','NULL','NULL','5443659','NULL','eduardo.galdino@sou.vilacolegio.com.br'),
('FABIA MINELLE SANTOS MELO','2ª Série A','VILA BESSA','fabia.melo@sou.vilacolegio.com.br','mudar@1234','3332','251007','fabia.minellesantosmelo.8','ddmmaa','NULL','NULL','NULL','2056557','NULL','fabia.melo@sou.vilacolegio.com.br'),
('GABRIEL DE QUEIROZ LEÔNCIO COUTINHO','2ª Série A','VILA BESSA','gabriel.coutinho@sou.vilacolegio.com.br','mudar@1234','2928','101107','gabriel.dequeirozleonciocoutinho.8','ddmmaa','NULL','NULL','NULL','9569355','vila@2024','gabriel.coutinho@sou.vilacolegio.com.br'),
('GUILHERME CARAMALAC CORLET DOS SANTOS','2ª Série A','VILA BESSA','guilherme.corlet@sou.vilacolegio.com.br','mudar@1234','3022','181207','guilherme.caramalaccorletdossantos.8','ddmmaa','NULL','NULL','NULL','6978598','vila@2024','guilherme.corlet@sou.vilacolegio.com.br'),
('ISABELLA FERREIRA BEZERRA','2ª Série A','VILA BESSA','isabella.bezerra@sou.vilacolegio.com.br','mudar@1234','3326','200208','isabella.ferreirabezerra.8','ddmmaa','NULL','NULL','NULL','4099020','NULL','isabella.bezerra@sou.vilacolegio.com.br'),
('JOÃO HENRIQUE DA SILVA CUNHA','2ª Série A','VILA BESSA','joao.cunha@sou.vilacolegio.com.br','mudar@1234','3006','150708','joao.henriquedasilvacunha.8','ddmmaa','NULL','NULL','NULL','4139442','vila@2024','joao.cunha@sou.vilacolegio.com.br'),
('JOÃO VITHOR FERREIRA VEDOOTO','2ª Série A','VILA BESSA','joao.ferreira@sou.vilacolegio.com.br','mudar@1234','3445','301007','joao.vithorferreiravedooto.8','ddmmaa','NULL','NULL','NULL','NULL','NULL','joao.ferreira@sou.vilacolegio.com.br'),
('LUCAS SCHMITZ JULIO CARDOSO','2ª Série A','VILA BESSA','lucas.cardoso@sou.vilacolegio.com.br','mudar@1234','3047','021007','lucas.schmitzjuliocardoso.8','ddmmaa','NULL','NULL','NULL','5316943','vila@2024','lucas.cardoso@sou.vilacolegio.com.br'),
('MARIA LUÍSA CALDAS LINS ABÍLIO GOMES','2ª Série A','VILA BESSA','maria.abilio@sou.vilacolegio.com.br','mudar@1234','3342','060408','maria.luisacaldaslinsabiliogomes.8','ddmmaa','NULL','NULL','NULL','3625237','vila@2024','maria.abilio@sou.vilacolegio.com.br'),
('MARIANE RAFAELY FERREIRA BRAZ','2ª Série A','VILA BESSA','mariane.braz@sou.vilacolegio.com.br','mudar@1234','3403','020708','mariane.rafaelyferreirabraz.8','ddmmaa','NULL','NULL','NULL','5340208','vila@2024','mariane.braz@sou.vilacolegio.com.br'),
('RAFAEL STROPP CAMINHA','2ª Série A','VILA BESSA','rafael.caminha@sou.vilacolegio.com.br','mudar@1234','3291','260507','rafael.stroppcaminha.8','ddmmaa','NULL','NULL','NULL','6471279','NULL','rafael.caminha@sou.vilacolegio.com.br'),
('REBECA FERNANDES CAVALCANTE','2ª Série A','VILA BESSA','rebeca.cavalcante@sou.vilacolegio.com.br','mudar@1234','3318','250907','rebeca.fernandescavalcante.8','ddmmaa','NULL','NULL','NULL','2993326','NULL','rebeca.cavalcante@sou.vilacolegio.com.br'),
('SOFIA SOUZA FIRMINO','2ª Série A','VILA BESSA','sofia.firmino@sou.vilacolegio.com.br','mudar@1234','3329','040308','sofia.souzafirmino.8','ddmmaa','NULL','NULL','NULL','1897068','NULL','sofia.firmino@sou.vilacolegio.com.br'),
('YAN SOARES DE CARVALHO','2ª Série A','VILA BESSA','yan.carvalho@sou.vilacolegio.com.br','mudar@1234','2663','060707','yan.soaresdecarvalho.8','ddmmaa','NULL','NULL','NULL','9986737','vila@2024','yan.carvalho@sou.vilacolegio.com.br'),
('CAUÃ GOUVEIA MACHADO RODOVALHO','3ª Série A','VILA BESSA','caua.rodovalho@sou.vilacolegio.com.br','mudar@1234','2884','200207','caua.gouveiamachadorodovalho.9','ddmmaa','NULL','NULL','NULL','7863169','vila@2024','caua.rodovalho@sou.vilacolegio.com.br'),
('IASMIN GUIMARÃES DA SILVA','3ª Série A','VILA BESSA','iasmin.silva@sou.vilacolegio.com.br','mudar@1234','3126','181106','iasmin.guimaraesdasilva.9','ddmmaa','NULL','NULL','NULL','1295081','NULL','iasmin.silva@sou.vilacolegio.com.br'),
('KAMILLY DE OLIVEIRA QUEIROZ','3ª Série A','VILA BESSA','kamilly.queiroz@sou.vilacolegio.com.br','mudar@1234','3366','300507','kamilly.deoliveiraqueiroz.9','ddmmaa','NULL','NULL','NULL','6064200','vila@2024','kamilly.queiroz@sou.vilacolegio.com.br'),
('MARIA GABRIELA DE LIMA AMÂNCIO','3ª Série A','VILA BESSA','maria.amancio@sou.vilacolegio.com.br','mudar@1234','3251','040707','maria.gabrieladelimaamancio.9','ddmmaa','NULL','NULL','NULL','1461217','vila@2024','maria.amancio@sou.vilacolegio.com.br'),
('MARIA LUÍSA MENEZES DE ALBUQUERQUE PEREIRA','3ª Série A','VILA BESSA','mariapereira@sou.vilacolegio.com.br','mudar@1234','3231','240607','maria.luisamenezesdealbuquerquepereira.9','ddmmaa','NULL','NULL','NULL','2622679','NULL','mariapereira@sou.vilacolegio.com.br'),
('MATHEUS ROBERTO LIRA DIAS','3ª Série A','VILA BESSA','matheus.dias@sou.vilacolegio.com.br','mudar@1234','3174','030806','matheus.robertoliradias.9','ddmmaa','NULL','NULL','NULL','6197782','NULL','matheus.dias@sou.vilacolegio.com.br'),
('RENATA CAMARÃO FIGUEIREDO FERNANDES','3ª Série A','VILA BESSA','renata.fernandes@sou.vilacolegio.com.br','mudar@1234','3149','290507','renata.camaraofigueiredofernandes.9','ddmmaa','NULL','NULL','NULL','8311915','NULL','renata.fernandes@sou.vilacolegio.com.br'),
('THALLES GABRIEL JUVINO DA SILVA','3ª Série A','VILA BESSA','thalles.silva@sou.vilacolegio.com.br','mudar@1234','3331','130306','thalles.gabrieljuvinodasilva.9','ddmmaa','NULL','NULL','NULL','3948089','NULL','thalles.silva@sou.vilacolegio.com.br'),
('ALCINO DE ALMEIDA JUNIOR','1ª Série A','VILA SUL','alcino.junior@sou.vilacolegio.com.br','mudar@1234','2243','300808','alcino.dealmeidajunior.6','ddmmaa','NULL','NULL','NULL','2352730','vila@2024','alcino.junior@sou.vilacolegio.com.br'),
('ALYANE SOUZA FREIRE','1ª Série A','VILA SUL','alyane.souza@sou.vilacolegio.com.br','mudar@1234','1820','260808','alyane.souza.6','ddmmaa','NULL','NULL','NULL','2295052','vila@2024','alyane.souza@sou.vilacolegio.com.br'),
('ANA JÚLIA CRISPIM MENDONÇA','1ª Série A','VILA SUL','ana.mendonca@sou.vilacolegio.com.br','mudar@1234','2606','170908','ana.juliacrispimmendonca.7','ddmmaa','NULL','NULL','NULL','1286711','vila@2024','ana.mendonca@sou.vilacolegio.com.br'),
('ANA KAROLINY DE OLIVEIRA LEONARDO','1ª Série A','VILA SUL','ana.karoliny@sou.vilacolegio.com.br','mudar@1234','1899','060708','anakaroliny.oliveira.6','ddmmaa','NULL','NULL','NULL','9959513','vila@2024','ana.karoliny@sou.vilacolegio.com.br'),
('ANNE GABRIELLE GUALBERTO COURA CARNEIRO','1ª Série A','VILA SUL','anne.coura@sou.vilacolegio.com.br','mudar@1234','1895','081009','annegabrielle.gualberto.6','ddmmaa','NULL','NULL','NULL','4591395','NULL','anne.coura@sou.vilacolegio.com.br'),
('ARTHUR MOREIRA SAMBU','1ª Série A','VILA SUL','arthur.sambu@sou.vilacolegio.com.br','mudar@1234','3192','100209','arthur.moreirasambu.7','ddmmaa','NULL','NULL','NULL','7418734','vila@2024','arthur.sambu@sou.vilacolegio.com.br'),
('ARTUR LUIS DOS SANTOS NETO','1ª Série A','VILA SUL','artur.neto@sou.vilacolegio.com.br','mudar@1234','3193','120209','artur.luisdossantosneto.7','ddmmaa','NULL','NULL','NULL','8507422','NULL','artur.neto@sou.vilacolegio.com.br'),
('BEATRIZ SILVA FIGUEIREDO','1ª Série A','VILA SUL','beatriz.figueiredo@sou.vilacolegio.com.br','mudar@1234','2194','171208','beatriz.silvafigueiredo.6','ddmmaa','NULL','NULL','NULL','7965312','NULL','beatriz.figueiredo@sou.vilacolegio.com.br'),
('CAIO HENRIQUE KOEHLER PINHEIRO','1ª Série A','VILA SUL','caio.pinheiro@sou.vilacolegio.com.br','mudar@1234','3203','250708','caio.henriquekoehlerpinheiro.7','ddmmaa','NULL','NULL','NULL','8666662','vila@2024','caio.pinheiro@sou.vilacolegio.com.br'),
('CAMILA MARIA CLEMENTE PINON','1ª Série A','VILA SUL','camila.clemente@sou.vilacolegio.com.br','mudar@1234','1566','041108','camilamaria.clemente.6','ddmmaa','NULL','NULL','NULL','9063613','NULL','camila.clemente@sou.vilacolegio.com.br'),
('CAUÃ ALMEIDA FALCÃO DE SOUZA VELOSO','1ª Série A','VILA SUL','caua.veloso@sou.vilacolegio.com.br','mudar@1234','2572','081208','caua.almeidafalcaodesouzaveloso.7','ddmmaa','NULL','NULL','NULL','4528651','NULL','caua.veloso@sou.vilacolegio.com.br'),
('CAUÃ BARBOSA ALVES DE MORAIS','1ª Série A','VILA SUL','caua.morais@sou.vilacolegio.com.br','mudar@1234','2241','140309','caua.barbosaalvesdemorais.6','ddmmaa','NULL','NULL','NULL','8326632','NULL','caua.morais@sou.vilacolegio.com.br'),
('DANIEL FELIPE LINHARES GOMES','1ª Série A','VILA SUL','daniel.gomes@sou.vilacolegio.com.br','mudar@1234','3187','310309','daniel.felipelinharesgomes.7','ddmmaa','NULL','NULL','NULL','1139608','NULL','daniel.gomes@sou.vilacolegio.com.br'),
('DAPHYNE MARIAH CANDIDO SILVA','1ª Série A','VILA SUL','daphyne.candido@sou.vilacolegio.com.br','mudar@1234','1573','311208','daphynemariah.candido.6','ddmmaa','NULL','NULL','NULL','5260243','NULL','daphyne.candido@sou.vilacolegio.com.br'),
('FLÁVIO ANTÔNIO CHAVES NETO','1ª Série A','VILA SUL','flavio.neto@sou.vilacolegio.com.br','mudar@1234','2228','120409','flavioantonio.chavesneto.6','ddmmaa','NULL','NULL','NULL','5531470','NULL','flavio.neto@sou.vilacolegio.com.br'),
('GERVASIO MARTINS TOMAZ FILHO','1ª Série A','VILA SUL','gervasio.tomaz@sou.vilacolegio.com.br','mudar@1234','2336','110209','gervasio.martinstomazfilho.6','ddmmaa','NULL','NULL','NULL','6015471','vila@2024','gervasio.tomaz@sou.vilacolegio.com.br'),
('GIOVANI SILVA DO NASCIMENTO','1ª Série A','VILA SUL','giovani.nascimento@sou.vilacolegio.com.br','mudar@1234','2959','080508','giovani.silvadonascimento.7','ddmmaa','NULL','NULL','NULL','3598968','NULL','giovani.nascimento@sou.vilacolegio.com.br'),
('GUSTAVO NASCIMENTO CORDEIRO','1ª Série A','VILA SUL','gustavo.cordeiro@sou.vilacolegio.com.br','mudar@1234','2219','301107','gustavo.nascimentocordeiro.8','ddmmaa','NULL','NULL','NULL','9385670','vila@2024','gustavo.cordeiro@sou.vilacolegio.com.br'),
('HENRY GABRYEL CANDIDO SILVA','1ª Série A','VILA SUL','henry.candido@sou.vilacolegio.com.br','mudar@1234','1574','311208','henrygabryel.candido.6','ddmmaa','NULL','NULL','NULL','4432671','NULL','henry.candido@sou.vilacolegio.com.br'),
('ISAAC GONÇALVES DINIZ','1ª Série A','VILA SUL','isaac.goncalves@sou.vilacolegio.com.br','mudar@1234','1668','190309','isaac.goncalves.6','ddmmaa','NULL','NULL','NULL','1113149','vila@2024','isaac.goncalves@sou.vilacolegio.com.br'),
('ISAQUE DA ROCHA LIMA','1ª Série A','VILA SUL','isaque.lima@sou.vilacolegio.com.br','mudar@1234','3141','040808','isaque.darochalima.7','ddmmaa','NULL','NULL','NULL','7058750','NULL','isaque.lima@sou.vilacolegio.com.br'),
('JOÃO GABRIEL ALVES MATIAS DOS SANTOS','1ª Série A','VILA SUL','joao.matias@sou.vilacolegio.com.br','mudar@1234','2433','220308','joao.gabrielalvesmatiasdossantos.7','ddmmaa','NULL','NULL','NULL','9826111','vila@2024','joao.matias@sou.vilacolegio.com.br'),
('JOÃO VICTOR FAJARDO DOS SANTOS','1ª Série A','VILA SUL','joao.fajardo@sou.vilacolegio.com.br','mudar@1234','2825','060409','joao.victorfajardodossantos.7','ddmmaa','NULL','NULL','NULL','3945677','NULL','joao.fajardo@sou.vilacolegio.com.br'),
('JOÃO VICTOR VIANA MAIA TRIGUEIRO','1ª Série A','VILA SUL','joao.trigueiro@sou.vilacolegio.com.br','mudar@1234','2975','070709','joao.victorvianamaiatrigueiro.7','ddmmaa','NULL','NULL','NULL','8272247','vila@2024','joao.trigueiro@sou.vilacolegio.com.br'),
('JÚLIA VITÓRIA FERREIRA ABÍLIO','1ª Série A','VILA SUL','julia.vitoria@sou.vilacolegio.com.br','mudar@1234','1514','291208','juliavitoria.ferreira.6','ddmmaa','NULL','NULL','NULL','6046324','NULL','julia.vitoria@sou.vilacolegio.com.br'),
('KAIO LUCIANO PRAIA PEREIRA','1ª Série A','VILA SUL','kaio.pereira@sou.vilacolegio.com.br','mudar@1234','3061','100109','kaio.lucianopraiapereira.7','ddmmaa','NULL','NULL','NULL','5794838','vila@2024','kaio.pereira@sou.vilacolegio.com.br'),
('KAUÃ BATISTA NORONHA DUARTE','1ª Série A','VILA SUL','kaua.noronha@sou.vilacolegio.com.br','mudar@1234','2044','240908','kaua.batista.5','ddmmaa','NULL','NULL','NULL','9337669','vila@2024','kaua.noronha@sou.vilacolegio.com.br'),
('KELSON GABRIEL DA FONSECA','1ª Série A','VILA SUL','kelson.fonseca@sou.vilacolegio.com.br','mudar@1234','3180','281208','kelson.gabrieldafonseca.7','ddmmaa','NULL','NULL','NULL','8947982','vila@2024','kelson.fonseca@sou.vilacolegio.com.br'),
('LARISSA RIBEIRO PESSOA','1ª Série A','VILA SUL','larissa.pereira@sou.vilacolegio.com.br','mudar@1234','1779','180908','larissa.ribeiro.6','ddmmaa','NULL','NULL','NULL','6485381','NULL','larissa.pereira@sou.vilacolegio.com.br'),
('LEO LUIS FARIAS DE AGUIAR','1ª Série A','VILA SUL','leo.aguiar@sou.vilacolegio.com.br','mudar@1234','3066','051108','leo.luisfariasdeaguiar.7','ddmmaa','NULL','NULL','NULL','1834658','vila@2024','leo.aguiar@sou.vilacolegio.com.br'),
('LEONARDO DE MORAIS MUNIZ GOMES OLIVEIRA','1ª Série A','VILA SUL','leonardo.andrade@sou.vilacolegio.com.br','mudar@1234','1603','210309','leonardo.demorais.6','ddmmaa','NULL','NULL','NULL','7337977','vila@2024','leonardo.andrade@sou.vilacolegio.com.br'),
('LETÍCIA DIAS DE FRANÇA VERAS','1ª Série A','VILA SUL','leticia.borges@sou.vilacolegio.com.br','mudar@1234','2424','280908','leticiadias.defrancaveras.6','ddmmaa','NULL','NULL','NULL','7781711','NULL','leticia.borges@sou.vilacolegio.com.br'),
('LUIS GUILHERME DE ALMEIDA LIMA','1ª Série A','VILA SUL','luis.rodrigues@sou.vilacolegio.com.br','mudar@1234','2188','150109','luis.guilhermedealmeidalima.7','ddmmaa','NULL','NULL','NULL','7170431','NULL','luis.rodrigues@sou.vilacolegio.com.br'),
('MARIA ALICE DAMASCENO LINS','1ª Série A','VILA SUL','maria.lins@sou.vilacolegio.com.br','mudar@1234','3092','010309','maria.alicedamascenolins.7','ddmmaa','NULL','NULL','NULL','3709914','vila@2024','maria.lins@sou.vilacolegio.com.br'),
('MARIA ISABEL CRISPIM PERÔNICO','1ª Série A','VILA SUL','maria.peronico@sou.vilacolegio.com.br','mudar@1234','2607','100309','maria.isabelcrispimperonico.7','ddmmaa','NULL','NULL','NULL','2318272','vila@2024','maria.peronico@sou.vilacolegio.com.br'),
('MARIANA DINIZ LIMA','1ª Série A','VILA SUL','mariana.diniz@sou.vilacolegio.com.br','mudar@1234','1897','101008','mariana.diniz.6','ddmmaa','NULL','NULL','NULL','5227768','vila@2024','mariana.diniz@sou.vilacolegio.com.br'),
('MARYANNE CRISTINA FERREIRA DE OLIVEIRA','1ª Série A','VILA SUL','maryanne.oliveira@sou.vilacolegio.com.br','mudar@1234','2266','010908','maryannecristina.ferreiradeoliveira.6','ddmmaa','NULL','NULL','NULL','8664035','vila@2024','maryanne.oliveira@sou.vilacolegio.com.br'),
('MIGUEL NASCIMENTO DE LIMA','1ª Série A','VILA SUL','miguel.lima@sou.vilacolegio.com.br','mudar@1234','2368','070908','miguel.nascimentodelima.6','ddmmaa','NULL','NULL','NULL','6487568','vila@2024','miguel.lima@sou.vilacolegio.com.br'),
('MIGUEL REGIS DE ARAUJO','1ª Série A','VILA SUL','miguel.regis@sou.vilacolegio.com.br','mudar@1234','2914','291008','miguel.regisdearaujo.7','ddmmaa','NULL','NULL','NULL','1615514','NULL','miguel.regis@sou.vilacolegio.com.br'),
('MYLENA SILVA CÂNDIDO MONTEIRO','1ª Série A','VILA SUL','mylena.monteiro@sou.vilacolegio.com.br','mudar@1234','2749','220508','mylena.silvacandidomonteiro.7','ddmmaa','NULL','NULL','NULL','8264466','vila@2024','mylena.monteiro@sou.vilacolegio.com.br'),
('OTHIS MARINHO NUNES','1ª Série A','VILA SUL','othis.nunes@sou.vilacolegio.com.br','mudar@1234','1751','250509','othis.marinho.6','ddmmaa','NULL','NULL','NULL','2033611','NULL','othis.nunes@sou.vilacolegio.com.br'),
('PIETRO DA FONSECA GUEDES PEREIRA MÁXIMO','1ª Série A','VILA SUL','pietro.maximo@sou.vilacolegio.com.br','mudar@1234','2015','240708','pietro.dafonsecaguedespereiramaximo.5','ddmmaa','NULL','NULL','NULL','9749254','NULL','pietro.maximo@sou.vilacolegio.com.br'),
('PIETRO VITTOR MARINHO DE ABREU','1ª Série A','VILA SUL','pietro.abreu@sou.vilacolegio.com.br','mudar@1234','3266','171108','pietro.vittormarinhodeabreu.7','ddmmaa','NULL','NULL','NULL','1727012','vila@2024','pietro.abreu@sou.vilacolegio.com.br'),
('RAFAEL CAVALCANTE DE OLIVEIRA MONTEIRO','1ª Série A','VILA SUL','rafael.monteiro@sou.vilacolegio.com.br','mudar@1234','3181','271208','rafael.cavalcantedeoliveiramonteiro.7','ddmmaa','NULL','NULL','NULL','7776371','NULL','rafael.monteiro@sou.vilacolegio.com.br'),
('REBECCA CAMILO PEREIRA DA SILVA','1ª Série A','VILA SUL','rebecca.silva@sou.vilacolegio.com.br','mudar@1234','3279','011009','rebecca.camilopereiradasilva.7','ddmmaa','NULL','NULL','NULL','9439517','vila@2024','rebecca.silva@sou.vilacolegio.com.br'),
('RENAN CUNEGUNDES COUTO','1ª Série A','VILA SUL','renan.couto@sou.vilacolegio.com.br','mudar@1234','3094','090609','renan.cunegundescouto.7','ddmmaa','NULL','NULL','NULL','5509503','vila@2024','renan.couto@sou.vilacolegio.com.br'),
('RODRIGO MENDONÇA FONSECA','1ª Série A','VILA SUL','rodrigo.mendonca@sou.vilacolegio.com.br','mudar@1234','1639','030808','rodrigo.mendonca.6','ddmmaa','NULL','NULL','NULL','2362739','vila@2024','rodrigo.mendonca@sou.vilacolegio.com.br'),
('VALENTINA CUNHA LOPES VIEIRA','1ª Série A','VILA SUL','valentina.vieira@sou.vilacolegio.com.br','mudar@1234','2195','250808','valentina.cunhalopesvieira.6','ddmmaa','NULL','NULL','NULL','2652160','NULL','valentina.vieira@sou.vilacolegio.com.br'),
('VITÓRIA CUNHA LOPES VIEIRA','1ª Série A','VILA SUL','vitoria.vieira@sou.vilacolegio.com.br','mudar@1234','2196','250808','vitoria.cunhalopesvieira.6','ddmmaa','NULL','NULL','NULL','2779673','NULL','vitoria.vieira@sou.vilacolegio.com.br'),
('YASMIN QUEIROZ INOCÊNCIO DE ARAÚJO','1ª Série A','VILA SUL','yasmin.araujo@sou.vilacolegio.com.br','mudar@1234','3213','230807','yasmin.queirozinocenciodearaujo.7','ddmmaa','NULL','NULL','NULL','7655980','vila@2024','yasmin.araujo@sou.vilacolegio.com.br'),
('ALEXANDRE MAGNO NUNES DE LIRA FILHO','2ª Série A','VILA SUL','alexandre.lira@sou.vilacolegio.com.br','mudar@1234','1529','050908','alexandremagno.delira.7','ddmmaa','NULL','NULL','NULL','9781725','vila@2024','alexandre.lira@sou.vilacolegio.com.br'),
('ALICE EUZEBIO DE OLIVEIRA','2ª Série A','VILA SUL','alice.veras@sou.vilacolegio.com.br','mudar@1234','2533','200707','alice.euzebiodeoliveira.8','ddmmaa','NULL','NULL','NULL','7447692','vila@2024','alice.veras@sou.vilacolegio.com.br'),
('ANA CAROLINA CAVALCANTE DE ALMEIDA','2ª Série A','VILA SUL','ana.almeida@sou.vilacolegio.com.br','mudar@1234','3177','130608','ana.carolinacavalcantedealmeida.8','ddmmaa','NULL','NULL','NULL','8663815','vila@2024','ana.almeida@sou.vilacolegio.com.br'),
('ANA CLARA PEREIRA DE ARAÚJO','2ª Série A','VILA SUL','ana.clara@sou.vilacolegio.com.br','mudar@1234','1659','020508','ana.clarapereiradearaujo.8','ddmmaa','NULL','NULL','NULL','3714418','NULL','ana.clara@sou.vilacolegio.com.br'),
('ANA LUISA ARAUJO NEVES','2ª Série A','VILA SUL','ana.neves@sou.vilacolegio.com.br','mudar@1234','2338','261007','ana.luisaaraujoneves.8','ddmmaa','NULL','NULL','NULL','5836148','NULL','ana.neves@sou.vilacolegio.com.br'),
('ANA RAQUEL NOBREGA MORAIS','2ª Série A','VILA SUL','ana.nobrega@sou.vilacolegio.com.br','mudar@1234','1459','221107','ana.raquelnobregamorais.8','ddmmaa','NULL','NULL','NULL','5482370','NULL','ana.nobrega@sou.vilacolegio.com.br'),
('ANTONIO FERNANDO FREIRE FILHO','2ª Série A','VILA SUL','antonio.freire@sou.vilacolegio.com.br','mudar@1234','1766','220208','antonio.fernandofreirefilho.8','ddmmaa','NULL','NULL','NULL','3273848','NULL','antonio.freire@sou.vilacolegio.com.br'),
('ARTHUR GUSTAVO VAZ TOLENTINO FILHO','2ª Série A','VILA SUL','arthur.filho@sou.vilacolegio.com.br','mudar@1234','2273','270907','arthurgustavo.vaztolentinofilho','ddmmaa','NULL','NULL','NULL','6350707','NULL','arthur.filho@sou.vilacolegio.com.br'),
('BIANCA CAMARGO CIPRIANO','2ª Série A','VILA SUL','bianca.cipriano@sou.vilacolegio.com.br','mudar@1234','2995','160707','bianca.camargocipriano.8','ddmmaa','NULL','NULL','NULL','6183077','vila@2024','bianca.cipriano@sou.vilacolegio.com.br'),
('BIANCA RIANE ARAUJO DA SILVA','2ª Série A','VILA SUL','bianca.araujo@sou.vilacolegio.com.br','mudar@1234','2465','281007','bianca.rianearaujodasilva.8','ddmmaa','NULL','NULL','NULL','6017050','NULL','bianca.araujo@sou.vilacolegio.com.br'),
('CASSIO LUNA DE SANT´ANA COSTA','2ª Série A','VILA SUL','cassio.santana@sou.vilacolegio.com.br','mudar@1234','1460','301007','cassio.lunadesantacuteanacosta.8','ddmmaa','NULL','NULL','NULL','3460258','NULL','cassio.santana@sou.vilacolegio.com.br'),
('DAVI LEITE BARBOSA','2ª Série A','VILA SUL','davi.barbosa@sou.vilacolegio.com.br','mudar@1234','2276','070308','davi.leitebarbosa','ddmmaa','NULL','NULL','NULL','6660344','vila@2024','davi.barbosa@sou.vilacolegio.com.br'),
('DIEGO VIANA ALVES','2ª Série A','VILA SUL','diego.alves@sou.vilacolegio.com.br','mudar@1234','2453','210907','diego.vianaalves.8','ddmmaa','NULL','NULL','NULL','1182027','NULL','diego.alves@sou.vilacolegio.com.br'),
('DIMITRI ANDRADE OLIVEIRA DE BRITO MEIRA','2ª Série A','VILA SUL','dimitri.meira@sou.vilacolegio.com.br','mudar@1234','1701','070308','dimitri.andradeoliveiradebritomeira.8','ddmmaa','NULL','NULL','NULL','5614749','vila@2024','dimitri.meira@sou.vilacolegio.com.br'),
('EMILY DANTAS FURTADO','2ª Série A','VILA SUL','emily.dantas@sou.vilacolegio.com.br','mudar@1234','1465','110508','emily.furtado','ddmmaa','NULL','NULL','NULL','5178444','NULL','emily.dantas@sou.vilacolegio.com.br'),
('EVILLYN MARIA DE BRITO RODRIGUES','2ª Série A','VILA SUL','evillyn.rodrigues@sou.vilacolegio.com.br','mudar@1234','3273','010807','evillyn.mariadebritorodrigues.8','ddmmaa','NULL','NULL','NULL','5663059','NULL','evillyn.rodrigues@sou.vilacolegio.com.br'),
('GABRIEL SANTANA PEREIRA','2ª Série A','VILA SUL','gabriel.pereira@sou.vilacolegio.com.br','mudar@1234','2520','200208','gabriel.santanapereira.7','ddmmaa','NULL','NULL','NULL','5989882','NULL','gabriel.pereira@sou.vilacolegio.com.br'),
('GUSTAVO MEDEIROS MACÊDO DE MELO','2ª Série A','VILA SUL','gustavo.melo@sou.vilacolegio.com.br','mudar@1234','2344','140408','gustavo.medeirosmacedodemelo','ddmmaa','NULL','NULL','NULL','9254163','NULL','gustavo.melo@sou.vilacolegio.com.br'),
('HÁDRIAN RENÊ BORGES LEITE','2ª Série A','VILA SUL','hadassa.moraes@sou.vilacolegio.com.br','mudar@1234','1554','010508','hadrianrene.borges','ddmmaa','NULL','NULL','NULL','3808671','NULL','hadassa.moraes@sou.vilacolegio.com.br'),
('HEITOR FAUZI DE CHAVES GUERRA','2ª Série A','VILA SUL','heitor.guerra@sou.vilacolegio.com.br','mudar@1234','2363','070807','heitor.fauzidechavesguerra.8','ddmmaa','NULL','NULL','NULL','5345527','NULL','heitor.guerra@sou.vilacolegio.com.br'),
('HELOISA SENA DA SILVA','2ª Série A','VILA SUL','heloisa.sena@sou.vilacolegio.com.br','mudar@1234','1541','271007','heloisa.senadasilva.8','ddmmaa','NULL','NULL','NULL','8890574','NULL','heloisa.sena@sou.vilacolegio.com.br'),
('IAGO MONTEIRO BRAGA','2ª Série A','VILA SUL','iago.monteiro@sou.vilacolegio.com.br','mudar@1234','1724','031007','iago.braga','ddmmaa','NULL','NULL','NULL','5502284','NULL','iago.monteiro@sou.vilacolegio.com.br'),
('ISABELLE MARIE ANGELO DE SOUZA','2ª Série A','VILA SUL','isabelle.angelo@sou.vilacolegio.com.br','mudar@1234','1551','020708','isabelle.marieangelodesouza.8','ddmmaa','NULL','NULL','NULL','6818374','NULL','isabelle.angelo@sou.vilacolegio.com.br'),
('JAMERSON ABÍLIO DE SOUZA JÚNIOR','2ª Série A','VILA SUL','jamerson.souza@sou.vilacolegio.com.br','mudar@1234','1516','120907','jamerson.abiliodesouzajunior.8','ddmmaa','NULL','NULL','NULL','7926573','NULL','jamerson.souza@sou.vilacolegio.com.br'),
('JOANA CAROLINA OLIVEIRA PARAHYBA CAMPOS','2ª Série A','VILA SUL','joana.parahyba@sou.vilacolegio.com.br','mudar@1234','1753','180108','joana.carolinaoliveiraparahybacampos.8','ddmmaa','NULL','NULL','NULL','8946588','NULL','joana.parahyba@sou.vilacolegio.com.br'),
('JOÃO IGOR MENDONÇA CAVALCANTI FALCÃO','2ª Série A','VILA SUL','joao.mendonca@sou.vilacolegio.com.br','mudar@1234','1503','150807','joaoigor.falcao','ddmmaa','NULL','NULL','NULL','9300019','NULL','joao.mendonca@sou.vilacolegio.com.br'),
('JÔNATAS HENRIQUE MENEZES DA SILVA','2ª Série A','VILA SUL','jonatas.menezes@sou.vilacolegio.com.br','mudar@1234','1657','140209','jonatas.henriquemenezesdasilva.8','ddmmaa','NULL','NULL','NULL','1650108','NULL','jonatas.menezes@sou.vilacolegio.com.br'),
('JOSÉ EDWARDO ALENCAR DE SOUZA','2ª Série A','VILA SUL','jose.alencar@sou.vilacolegio.com.br','mudar@1234','3032','220208','jose.edwardoalencardesouza.8','ddmmaa','NULL','NULL','NULL','8212423','vila@2024','jose.alencar@sou.vilacolegio.com.br'),
('JULIA DE FRANÇA FARIAS','2ª Série A','VILA SUL','julia.moreira@sou.vilacolegio.com.br','mudar@1234','1775','210808','julia.defranca','ddmmaa','NULL','NULL','NULL','4747917','vila@2024','julia.moreira@sou.vilacolegio.com.br'),
('JULIA RHYANNE ARRUDA GOMES','2ª Série A','VILA SUL','julia.gomes@sou.vilacolegio.com.br','mudar@1234','3256','260807','julia.rhyannearrudagomes.8','ddmmaa','NULL','NULL','NULL','5193345','NULL','julia.gomes@sou.vilacolegio.com.br'),
('LAURA CUNHA DE CARVALHO LISBOA','2ª Série A','VILA SUL','laura.lisboa@sou.vilacolegio.com.br','mudar@1234','3050','040809','laura.cunhadecarvalholisboa.8','ddmmaa','NULL','NULL','NULL','6944874','NULL','laura.lisboa@sou.vilacolegio.com.br'),
('LAURA SOPHIA CARVALHO DO CARMO','2ª Série A','VILA SUL','laura.estevam@sou.vilacolegio.com.br','mudar@1234','1533','290808','laurasophia.carvalho','ddmmaa','NULL','NULL','NULL','8571153','NULL','laura.estevam@sou.vilacolegio.com.br'),
('LAVÍNIA MEIRELES FLORENCIO NUNES','2ª Série A','VILA SUL','lavinia.galiza@sou.vilacolegio.com.br','mudar@1234','1520','O30108','lavinia.meireles.7','ddmmaa','NULL','NULL','NULL','3896486','NULL','lavinia.galiza@sou.vilacolegio.com.br'),
('LEONARDO FERNANDES MIRANDA DE SOUZA','2ª Série A','VILA SUL','leonardo.gomes@sou.vilacolegio.com.br','mudar@1234','1727','101005','leonardo.fernandesmirandadesouza.6','ddmmaa','NULL','NULL','NULL','5144448','NULL','leonardo.gomes@sou.vilacolegio.com.br'),
('MARIA EDUARDA MENDES ARAÚJO ROCHA','2ª Série A','VILA SUL','maria.rocha@sou.vilacolegio.com.br','mudar@1234','1524','260308','mariaeduarda.mendesrocha','ddmmaa','NULL','NULL','NULL','9942860','NULL','maria.rocha@sou.vilacolegio.com.br'),
('MARIA EDUARDA PESSOA FRANÇA','2ª Série A','VILA SUL','maria.franca@sou.vilacolegio.com.br','mudar@1234','1790','170907','maria.eduardapessoafranca.8','ddmmaa','NULL','NULL','NULL','6639400','NULL','maria.franca@sou.vilacolegio.com.br'),
('MARIA EDUARDA POLARI DE CASTRO','2ª Série A','VILA SUL','maria.polari@sou.vilacolegio.com.br','mudar@1234','3156','250807','maria.eduardapolaridecastro.8','ddmmaa','NULL','NULL','NULL','9009513','NULL','maria.polari@sou.vilacolegio.com.br'),
('MARIA FERNANDA SEIXAS GONÇALVES','2ª Série A','VILA SUL','maria.seixas@sou.vilacolegio.com.br','mudar@1234','2387','030108','mariafernanda.seixasgoncalves.7','ddmmaa','NULL','NULL','NULL','9706407','vila@2024','maria.seixas@sou.vilacolegio.com.br'),
('MARIA LUIZA MENDES ARAÚJO ROCHA','2ª Série A','VILA SUL','mariamendes@sou.vilacolegio.com.br','mudar@1234','1525','260308','marialuiza.mendes.7','ddmmaa','NULL','NULL','NULL','8452705','NULL','mariamendes@sou.vilacolegio.com.br'),
('NYCOLAS D´LEON RAMOS RODRIGUES','2ª Série A','VILA SUL','nycolas.rodrigues@sou.vilacolegio.com.br','mudar@1234','2900','080908','nycolas.dacuteleonramosrodrigues.8','ddmmaa','NULL','NULL','NULL','7662643','NULL','nycolas.rodrigues@sou.vilacolegio.com.br'),
('PAULO HENRIQUE AGAPITO DE ALMEIDA','2ª Série A','VILA SUL','paulo.almeida@sou.vilacolegio.com.br','mudar@1234','1568','160208','paulohenrique.agapitodealmeida.7','ddmmaa','NULL','NULL','NULL','9445784','NULL','paulo.almeida@sou.vilacolegio.com.br'),
('SAMUEL SILVA CARVALHO','2ª Série A','VILA SUL','samuel.carvalho@sou.vilacolegio.com.br','mudar@1234','2274','270408','samuel.silvacarvalho.8','ddmmaa','NULL','NULL','NULL','3155698','NULL','samuel.carvalho@sou.vilacolegio.com.br'),
('SARA MUNIZ DE MELO','2ª Série A','VILA SUL','sara.melo@sou.vilacolegio.com.br','mudar@1234','2789','130608','sara.munizdemelo.8','ddmmaa','NULL','NULL','NULL','3738069','NULL','sara.melo@sou.vilacolegio.com.br'),
('SARA SILVA BORBA','2ª Série A','VILA SUL','sara.borba@sou.vilacolegio.com.br','mudar@1234','2239','260908','sara.silvaborba.8','ddmmaa','NULL','NULL','NULL','3745517','NULL','sara.borba@sou.vilacolegio.com.br'),
('WYLLIAN MONTEIRO LINO LEITE','2ª Série A','VILA SUL','wyllian.leite@sou.vilacolegio.com.br','mudar@1234','2923','220707','wyllian.monteirolinoleite.8','ddmmaa','NULL','NULL','NULL','4172283','NULL','wyllian.leite@sou.vilacolegio.com.br'),
('YAN PEDRO ARAUJO BATISTA','2ª Série A','VILA SUL','yan.batista@sou.vilacolegio.com.br','mudar@1234','2009','180708','yanpedro.araujo.7','ddmmaa','NULL','NULL','NULL','7025752','NULL','yan.batista@sou.vilacolegio.com.br'),
('YSLA RIBEIRO DE SENA','2ª Série A','VILA SUL','ysla.ribeiro@sou.vilacolegio.com.br','mudar@1234','1471','240308','ysla.ribeiro.7','ddmmaa','NULL','NULL','NULL','6906239','NULL','ysla.ribeiro@sou.vilacolegio.com.br'),
('YURI AUGUSTO CARDOSO DE MELO','2ª Série A','VILA SUL','yuri.cardoso@sou.vilacolegio.com.br','mudar@1234','1585','150707','yuriaugusto.cardoso.7','ddmmaa','NULL','NULL','NULL','1722014','vila@2024','yuri.cardoso@sou.vilacolegio.com.br'),
('ANA LUISA PENAFORTE CARVALHO CAVALCANTI','3ª Série A','VILA SUL','ana.cavalcanti@sou.vilacolegio.com.br','mudar@1234','3036','301007','ana.luisapenafortecarvalhocavalcanti.9','ddmmaa','NULL','NULL','NULL','4592783','vila@2024','ana.cavalcanti@sou.vilacolegio.com.br'),
('ANDRE LUIS SOARES FERREIRA','3ª Série A','VILA SUL','andre.ferreira@sou.vilacolegio.com.br','mudar@1234','2411','250407','andreluis.soaresferreira','ddmmaa','NULL','NULL','NULL','7920569','NULL','andre.ferreira@sou.vilacolegio.com.br'),
('ANNA JULIA VIDAL ARAÚJO CAVALCANTI','3ª Série A','VILA SUL','anna.araujo@sou.vilacolegio.com.br','mudar@1234','1979','301026','annajulia.vidalaraujocavalcanti','ddmmaa','NULL','NULL','NULL','9763210','NULL','anna.araujo@sou.vilacolegio.com.br'),
('ANNA LUIZA DE SOUSA QUIRINO','3ª Série A','VILA SUL','anna.quirino@sou.vilacolegio.com.br','mudar@1234','2059','041006','annaluiza.desousaquirino','ddmmaa','NULL','NULL','NULL','5612681','vila@2024','anna.quirino@sou.vilacolegio.com.br'),
('ARTHUR JAVIER DA SILVA DIAZ','3ª Série A','VILA SUL','arthur.diaz@sou.vilacolegio.com.br','mudar@1234','2292','100306','arthurjavier.dasilvadiaz','ddmmaa','NULL','NULL','NULL','7266121','vila@2024','arthur.diaz@sou.vilacolegio.com.br'),
('BEATRIZ ARAÚJO DE BRITO GOMES','3ª Série A','VILA SUL','beatriz.brito@sou.vilacolegio.com.br','mudar@1234','1932','170607','beatriz.araujodebritogomes','ddmmaa','NULL','NULL','NULL','3227439','vila@2024','beatriz.brito@sou.vilacolegio.com.br'),
('CAIÃ ARAÚJO MEDEIROS','3ª Série A','VILA SUL','caia.medeiros@sou.vilacolegio.com.br','mudar@1234','3309','171006','caia.araujomedeiros.9','ddmmaa','NULL','NULL','NULL','6438779','NULL','caia.medeiros@sou.vilacolegio.com.br'),
('EDUARDA EVELYN RODRIGUES DE ANDRADE','3ª Série A','VILA SUL','eduarda.andrade@sou.vilacolegio.com.br','mudar@1234','2537','070207','eduardaevelyn.rodriguesdeandrade.8','ddmmaa','NULL','NULL','NULL','6116527','NULL','eduarda.andrade@sou.vilacolegio.com.br'),
('FELIPE ASSUNÇÃO DA SILVA','3ª Série A','VILA SUL','felipe.silva@sou.vilacolegio.com.br','mudar@1234','1998','290506','felipe.assuncaodasilva','ddmmaa','NULL','NULL','NULL','9855936','vila@2024','felipe.silva@sou.vilacolegio.com.br'),
('HADASSA BONNER DE MORAES','3ª Série A','VILA SUL','hadassa.moraes@sou.vilacolegio.com.br','mudar@1234','2474','160607','hadassa.bonnerdemoraes','ddmmaa','NULL','NULL','NULL','8671280','NULL','hadassa.moraes@sou.vilacolegio.com.br'),
('HELOISA HELENA ARAUJO SOUZA','3ª Série A','VILA SUL','heloisa.helena@sou.vilacolegio.com.br','mudar@1234','1474','171006','heloisahelena.araujosouza','ddmmaa','NULL','NULL','NULL','7542799','NULL','heloisa.helena@sou.vilacolegio.com.br'),
('IAN ALEIXO DANTAS BANDEIRA ANDRIOLA','3ª Série A','VILA SUL','ian.andriola@sou.vilacolegio.com.br','mudar@1234','2443','140207','ian.aleixodantasbandeiraandriola','ddmmaa','NULL','NULL','NULL','7426608','vila@2024','ian.andriola@sou.vilacolegio.com.br'),
('ICARO EDUARDO DE SOUZA LUCENA','3ª Série A','VILA SUL','icaro.lucena@sou.vilacolegio.com.br','mudar@1234','2267','010207','icaroeduardo.desouzalucena','ddmmaa','NULL','NULL','NULL','9868394','NULL','icaro.lucena@sou.vilacolegio.com.br'),
('ISABEL DE SOUZA SILVA','3ª Série A','VILA SUL','isabel.silva@sou.vilacolegio.com.br','mudar@1234','2161','210307','isabel.desouzasilva','ddmmaa','NULL','NULL','NULL','9657103','NULL','isabel.silva@sou.vilacolegio.com.br'),
('JOÃO GUILHERME GOMES DA SILVA TORRES','3ª Série A','VILA SUL','joao.torres@sou.vilacolegio.com.br','mudar@1234','2320','030407','joaoguilherme.gomesdasilvatorres','ddmmaa','NULL','NULL','NULL','4556692','NULL','joao.torres@sou.vilacolegio.com.br'),
('JOÃO MARCELO ALVES DE CARVALHO','3ª Série A','VILA SUL','joao.firmino@sou.vilacolegio.com.br','mudar@1234','1759','140207','joaomarcelo.alvesdecarvalho','ddmmaa','NULL','NULL','NULL','6421252','vila@2024','joao.firmino@sou.vilacolegio.com.br'),
('LARYSSA GABRIELLY MACENA DA SILVA','3ª Série A','VILA SUL','larissa.ribeiro@sou.vilacolegio.com.br','mudar@1234','1900','160407','laryssagabrielly.macenadasilva','ddmmaa','NULL','NULL','NULL','8109370','NULL','larissa.ribeiro@sou.vilacolegio.com.br'),
('LUDMYLLA DOS SANTOS FÉLIX','3ª Série A','VILA SUL','luciney.duarte@sou.vilacolegio.com.br','mudar@1234','2214','200906','ludmylla.dossantosfelix','ddmmaa','NULL','NULL','NULL','7651072','vila@2024','luciney.duarte@sou.vilacolegio.com.br'),
('LUIZA SOARES FOLGIARINI','3ª Série A','VILA SUL','luiza.folgiarini@sou.vilacolegio.com.br','mudar@1234','2120','150607','luiza.soaresfolgiarini','ddmmaa','NULL','NULL','NULL','1360119','NULL','luiza.folgiarini@sou.vilacolegio.com.br'),
('MARIA CLARA DE LIMA LACERDA','3ª Série A','VILA SUL','maria.candido@sou.vilacolegio.com.br','mudar@1234','2296','310307','mariaclara.delimalacerda','ddmmaa','NULL','NULL','NULL','7186531','NULL','maria.candido@sou.vilacolegio.com.br'),
('MARIA EDUARDA MONTENEGRO TENORIO','3ª Série A','VILA SUL','maria.montenegro@sou.vilacolegio.com.br','mudar@1234','1828','200407','mariaeduarda.montenegrotenorio','ddmmaa','NULL','NULL','NULL','6377441','NULL','maria.montenegro@sou.vilacolegio.com.br'),
('MARIELA FIGUEIREDO DA SILVA','3ª Série A','VILA SUL','mariela.silva@sou.vilacolegio.com.br','mudar@1234','3017','180707','mariela.figueiredodasilva.9','ddmmaa','NULL','NULL','NULL','3726173','NULL','mariela.silva@sou.vilacolegio.com.br'),
('MATHEUS APOLINÁRIO NÓBREGA DE LIMA','3ª Série A','VILA SUL','matheus.nobrega@sou.vilacolegio.com.br','mudar@1234','1696','030707','matheus.apolinarionobregadelima','ddmmaa','NULL','NULL','NULL','8538626','NULL','matheus.nobrega@sou.vilacolegio.com.br'),
('NATHÁLIA DUARTE TAVARES DE BARROS','3ª Série A','VILA SUL','nathalia.tavares@sou.vilacolegio.com.br','mudar@1234','2057','261106','nathalia.duartetavaresdebarros','ddmmaa','NULL','NULL','NULL','9153825','NULL','nathalia.tavares@sou.vilacolegio.com.br'),
('RADYJA EVYLLIN BEZERRA DE ARAÚJO','3ª Série A','VILA SUL','radyja.araujo@sou.vilacolegio.com.br','mudar@1234','1993','020207','radyjaeyllin.bezerradearaujo','ddmmaa','NULL','NULL','NULL','7279945','vila@2024','radyja.araujo@sou.vilacolegio.com.br'),
('SAMUEL DE LUCENA RAMALHO','3ª Série A','VILA SUL','samuel.sousa@sou.vilacolegio.com.br','mudar@1234','2152','180206','samuel.delucenaramalho','ddmmaa','NULL','NULL','NULL','5449722','NULL','samuel.sousa@sou.vilacolegio.com.br'),
('WILLIAM VIEIRA CAMÊLO','3ª Série A','VILA SUL','#ERRO!','mudar@1234','2205','140207','william.vieiracamelo','ddmmaa','NULL','NULL','NULL','3711735','vila@2024','william.camelo@sou.vilacolegio.com.br'),
('YOHANNA GABRIELLE FERREIRA MACHADO','3ª Série A','VILA SUL','yohanna.ferreira@sou.vilacolegio.com.br','mudar@12341693','270407','yohannagabrielle.ferreiramachado','ddmmaa','NULL','NULL','NULL','3471225','NULL','yohanna.ferreira@sou.vilacolegio.com.br');
