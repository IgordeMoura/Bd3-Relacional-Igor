use centro_cirurgico_bd;

# Criação do Deliminitador de Inicio da Trigger
delimiter $
# Declaração do Corpo da Trigger
Create Trigger trg_delete_paciente before delete on tbl_paciente
for each row #Na linha que sofre a ação de delete
Begin
insert into tbl_paciente_bkp
set
cod_paciente = old.cod_paciente,
nome_paciente = old.nome_paciente,
telefone_paciente = old.telefone_paciente,
celular_paciente = old.celular_paciente,
email_paciente = old.email_paciente,
nome_responsavel = old.nome_responsavel,
telefone_responsavel = old.telefone_responsavel,
date_delete = now();
end  #Criação do Deliminitador de Fim da Trigger 
$