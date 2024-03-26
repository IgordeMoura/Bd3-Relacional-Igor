#criação de uma stored procedure que conta e
#retorna o numero total de pacientes
Delimiter $
Create Procedure Contagem_Pacientes(out total_pacientes int (10)) 
	Begin
		select count(cod_paciente) into total_pacientes from tbl_paciente;
	End
$

call Contagem_Pacientes(@total_pacientes);
select @total_pacientes;