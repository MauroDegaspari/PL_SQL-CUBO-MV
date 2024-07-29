                                                    -- M�DULO 1: Exerc�cios SELECT
  --PARTE 1:
--1) Fazer uma pesquisa que retorne o c�digo de atendimento e a data de atendimento e a data de
--alta.   Tabelas: atendime.

--2) Fazer um Select que traga o c�digo de atendimento, nome do paciente, nome do
--conv�nio e somente dos atendimentos do 02/05/2016. Obs: Dependendo do banco, pode n�o haver
--retornos. Tabelas: atendime, paciente e convenio.

--3) Criar uma pesquisa que informe o nome do paciente, o c�digo do paciente, o nome da cidade da
--cidade em que o paciente reside, e o c�digo de atendimento do paciente.
--Tabelas: atendime, cidade e paciente.

--4) Fazer um Select dos pacientes internados durante o m�s de agosto de 2016, com idade
--maior ou igual a 50 anos. Dica: o resultado ter� 20 retornos (linhas).

--5) Total de atendimento do m�s de janeiro de 2018, separados por tipo de atendimento.

--6) Prestador com mais cirurgias em 2017. Tabelas: atendime, aviso_cirurgia e prestador.

--7) Retornar as 10 cirurgias mais realizadas em 2017.

--8) Um select traga a idade do paciente utilizando o comando sysdate e data de nascimento,
--anexando na pesquisa a CID ( Classifica��o Internacional de Doen�as ) , para informar a descri��o
--da doen�a que foi indicada no atendimento do paciente.

--9) Criar uma pesquisa para atendimentos de c�digo maior que 5000 cujo o c�digo do
--prestador do atendimento seja 407, 1562, 3071. Dica: Utilizar o relacional IN.

--10) Fazer um select com todos os atendimentos realizados por prestadores do estado do Rio de
--Janeiro.
--PARTE 2:

--1) Fazer um select com o somat�rio de prestadores por estado de residencia. Dica: utilizar SUM() e
--GROUP BY.

--2) Fazer um select com c�digo de todos os itens da conta de interna��o, nome do paciente e nome
--do procedimento. Tabelas: itreg_fat, pro_fat, paciente.

--3) Fazer um select com todos os c�digos das contas com mais de R$1000,00 no m�s de
--setembro de 2017. Trazer c�digos da conta e valor, ordenados por valor decrescente.

--4) Quantidade de pacientes atendidos no ano de 2016.

--5) Fazer um select com o somat�rio de faturamento em interna��o por prestador no ano
--de 2018. Dica: agrupar pelo prestador o somat�rio de valores unit�rios.

--6) Fazer um select com a quantidade do exame CULTURA PARA FUNGOS no ano de 2017,
--agrupadas por prestador. Dica: utilizar a itreg_fat, pro_fat (tabela dos procedimentos) e prestador.
--PARTE 3:

--1) Trazer numa linha s� o paciente com mais atendimento em 2018, com o c�digo, nome do
--paciente e conv�nio. Dica: fazer um contador para o n�mero de atendimentos.

--2) Fazer um select com todas conta da itreg_fat, nome do paciente, nome do prestador, nome do
--convenio, nome do procedimento, valor do procedimento (vl_conta_total) dos 3 primeiros
--meses de 2017.

--3) Fazer um select igual ao anterior, mas agora para as contas ambulatoriais, que ultilizam a
--reg_amb e itreg_amb.

--PARTE 4:

--1) Trazer os itens das contas ambulatoriais e de interna��o fechadas, com nome do
--convenio, nome do paciente e valor unit�rio e valor total. Dica: Utilizar a coluna sn_fechada da reg_amb
--e reg_fat.

--2) Idem, mas agora trazer um somat�rio por conv�nio.

--3) M�dia do tempo de interna��o (paciente que tiveram interna��o, tempo entre entrada e alta)
--por faixa et�ria (0 a 10, 11 a 18, 19 a 30, 30 a 45, 46 a 60, 60 a 80 e maior que 81).

                                                                          --M�DULO 2: Exerc�cios DML

--1) Inicialmente, vamos criar uma tabela com o nome do aluno, com todos pacientes cadastrados
--no ano de 2017, no formato:
--CREATE TABLE PC_TREINA_MATHEUS AS
--SELECT * FROM PACIENTE
--WHERE TRUNC(HR_CADASTRO,'YYYY') = TO_DATE('01/01/2017', 'DD/MM/YYYY'):
--Posteriormente, vamos:
-- * Deletar todos pacientes que come�am com a letra C;
-- * Depois, mudar o estado civil para �C� de todos pacientes da cidade S�O PAULO CAPITAL;
-- * Por fim, inserir todos pacientes cadastrados no ano de 2019.

--2) Neste exerc�cio, vamos criar uma tabela de backup da tabela produto, com todos produtos
--cadastrados em 2015, com nome prod_treina_nome:
-- * Deletar todos produtos da subclasse 16;
-- * Depois, atualizar a hora da �ltima entrada para o SYSDATE em todos os produtos
--considerados consignados.

--3) Criar uma c�pia da tabela pro_fat (formato pro_fat_treina_nome) com todos os procedimentos
--que est�o presentes na tabela cirurgia:
-- * Deletar todos os procedimentos que precisam de 3 ou mais auxiliares;
-- * Depois, alterar o cd_gru_pro (grupo de faturamento) 52 para 99;
-- * Por fim, importar da tabela pro_fat todos procedimentos com cd_gru_pro = 1.

--4) Criar uma c�pia da tabela prestador (formato presta_treina_nome), com todos os prestadores
--ativos:
-- * Deletar todos prestadores que o conselho � CRM;
-- * Depois, inativar todos prestadores da cidade do RIO DE JANEIRO;
-- * Por fim, copiar todos os prestadores inativos da tabela prestador.
