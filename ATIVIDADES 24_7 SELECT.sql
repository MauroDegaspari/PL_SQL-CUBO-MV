
--                      ATIVIDADES: 24/7 SELECT
--  1) Fazer uma busca no banco de dados que retorne todos os pacientes com o primeiro nome
--  sendo Roberto e que tiveram atendimento depois de 2020.

        SELECT p.nm_paciente,
               a.dt_atendimento
          FROM dbamv.atendime a,
               dbamv.paciente p
         WHERE a.cd_paciente = p.cd_paciente
           AND a.dt_atendimento > To_Date('31/12/2020','dd/mm/yyyy')
           AND Upper(p.nm_paciente) LIKE Upper('Roberto%');


--  2) Fazer uma busca no banco de dados que nome, endereço e idade dos pacientes que
--  realizaram cirurgia no ano de 2019. Obs: As cirurgias são registradas na tabela aviso_cirurgia, e
--  apenas as cirurgias realizadas são aquelas que tem sn_confirmado = ‘S’.

        SELECT  p.nm_paciente,
               ('Rua. '   ||e.ds_endereco  ||', '||p.nr_endereco||CHR(10)||
                'Bairro: '||p.nm_bairro    ||CHR(10)||
                'Cidade: '||c.nm_cidade) endereco,
               Trunc((SYSDATE - p.dt_nascimento)/365) Idade
          FROM dbamv.atendime a,
               dbamv.paciente p,
               dbamv.cidade c,
               dbamv.endereco e,
               dbamv.aviso_cirurgia ac
         WHERE a.cd_paciente    = p.cd_paciente
           AND p.cd_cidade      = c.cd_cidade
           AND p.cd_paciente    = e.cd_paciente
           AND a.cd_atendimento = ac.cd_atendimento
           AND ac.sn_confirmado = 'S'
           AND ac.dt_realizacao BETWEEN To_Date('01/01/2019','dd/mm/yyyy')
                                    AND To_Date('31/12/2019','dd/mm/yyyy');


--  3) Fazer uma busca no banco que retorne a quantidade de atendimentos
--  agrupados por competência de 2020, dos pacientes do estado de SP.


          SELECT Trunc(a.dt_atendimento, 'mm') competencia,
                Count(*) qtd
            FROM dbamv.atendime a,
                 dbamv.paciente pa,
                 dbamv.uf u,
                 dbamv.pais p
           WHERE a.cd_paciente = pa.cd_paciente
             and pa.cd_pais    = p.cd_pais
             AND p.cd_pais     = u.cd_pais
             AND u.cd_uf       = 'SP'
             AND a.dt_atendimento  BETWEEN To_Date('01/01/2020','dd/mm/yyyy')
                                       AND To_Date('31/12/2020','dd/mm/yyyy')
             GROUP BY  Trunc(a.dt_atendimento, 'mm');










                                     cidade