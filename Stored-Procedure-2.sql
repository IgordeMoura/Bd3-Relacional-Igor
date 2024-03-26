#criação de uma stored procedure com parametros 
#para a listagem de dados de agendamento de cirurgia

Delimiter $
Create Procedure listagem_agenda_param(in cod_medico_param int(10)) #NAO PASSAR O PARAMETRO COM O MSM NOME DO CAMPO DA TBL
	Begin
		select
			ta.data_cirurgia, ta.status_cirurgia,
			ts.nro_sala,
			tm.nome_medico, tm.celular_medico,
			tp.nome_paciente, tp.celular_paciente,
			tp.nome_responsavel, tp.telefone_responsavel
		from tbl_agenda as ta
		inner join tbl_sala as ts
		on ta.cod_sala = ts.cod_sala
		inner join tbl_medico as tm
		on ta.cod_medico = tm.cod_medico
		inner join tbl_paciente as tp
		on ta.cod_paciente = tp.cod_paciente
        Where ta.cod_medico = cod_medico_param;
	End
$

call listagem_agenda_param(4);
