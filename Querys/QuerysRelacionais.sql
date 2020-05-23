
--Jogador e Respetivas Posi��es
SELECT * FROM Scouting.Jogador JOIN Scouting.Jog_Posicoes ON ID_FIFPro=Jog_Posicoes_ID_FIFPro

-- Jogador e Clube a que pertence
SELECT Jogador_Nome,Clube_Nome FROM   Scouting.Jogador JOIN (Scouting.Jogador_Pertence_Clube join Scouting.Clube ON Scouting.Jogador_Pertence_Clube.JPC_Clube_Numero_Inscricao_FIFA=Scouting.Clube.Clube_Numero_Inscricao_FIFA ) ON Scouting.Jogador.ID_FIFPRO = Scouting.Jogador_Pertence_Clube.ID_FIFPRO

--Observador e Jogadores que fez relat�rios
SELECT * From Scouting.Jogador join (Scouting.Relatorio join Scouting.Observador on  Scouting.Relatorio.Numero_Identificacao_Federacao=Scouting.Observador.Numero_Identificacao_Federacao) on Scouting.Jogador.ID_FIFPro=Scouting.Relatorio.ID_FIFPro

--Jogadores e lista de sele��o
SELECT *FROM Scouting.Lista_Observacao_Selecao join Scouting.Jogador on (Scouting.Lista_Observacao_Selecao.Lista_Idade_Maxima=Scouting.Jogador.Lista_Idade_Maxima)

--Equipas e Jogo
SELECT *FROM Scouting.Participa_Em join Scouting.Clube on Scouting.Participa_Em.Participa_Clube_Numero_Inscricao_FIFA = Scouting.Clube.Clube_Numero_Inscricao_FIFA

--Clubes que treinou treina
SELECT Scouting.Treinador.Treinador_Nome, Scouting.Clube.Clube_Nome, Treinador_Data_Inicio, Treinador_Data_Saida FROM Scouting.Treinador join Scouting.Treina on Scouting.Treina.Treina_Num_Insc_FIFA= Scouting.Treinador.Treinador_Numero_Inscricao_FIFA join Scouting.Clube on Scouting.Treina.Clube_Num_insc_FIFA =Scouting.Clube.Clube_Numero_Inscricao_FIFA