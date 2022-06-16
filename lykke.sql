drop database lykke;
create database lykke;
use lykke;

create table parque(
	idt_parque int primary key auto_increment,
    nome_parque varchar(150) not null,
    bairro varchar(40) not null,
    endereco varchar(120) not null,
    telefone varchar(20),
    hr_funcionamento_parque varchar(100) not null,
    avaliacao_parque decimal(2,1) not null,
    longitude varchar(40) not null,
    latitude varchar(40) not null,
    desc_parque varchar(200),
    preco_entrada decimal(4,2),
    foto_parque varchar(200)
);

create table restaurante(
	idt_restaurante int primary key auto_increment,
    nome_rest varchar(80) not null,
    bairro varchar(50) not null,
    endereco varchar(120) not null,
    telefone varchar(20),
    hr_funcionamento_rest varchar(100) not null,
    avaliacao_rest decimal(2,1) not null,
    longitude varchar(40) not null,
    latitude varchar(40) not null,
    desc_rest varchar(200),
    foto_rest varchar(200)
);

create table academia(
	idt_acad int primary key auto_increment,
    nome_acad varchar(50) not null,
    bairro varchar(50) not null,
    endereco varchar(120) not null,
    telefone varchar(20),
    longitude varchar(20) not null,
    latitude varchar(20) not null,
    desc_acad varchar(200),
    hr_funcionamento_acad varchar(200) not null,
    avaliacao_acad decimal(2,1) not null,
    foto_acad varchar(200)
);

create table contato(
	idt_contato int primary key auto_increment,
    nome varchar(100) not null,
    email varchar(100) not null,
    mensagem varchar(256) not null,
    dt_hr TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table cultural(
	idt_cultural int primary key auto_increment,
    nome_cult varchar(80) not null,
    bairro varchar(50) not null,
    endereco varchar(120) not null,
    telefone varchar(20),
    hr_funcionamento_cult varchar(100) not null,
    avaliacao_cult decimal(2,1) not null,
    longitude varchar(40) not null,
    latitude varchar(40) not null,
    foto_cult varchar(200)
);

insert into academia(
	nome_acad,
    bairro,
    endereco,
    telefone,
    hr_funcionamento_acad,
    avaliacao_acad,
    latitude,
    longitude,
    desc_acad,
    foto_acad) values
    
    ('Bodytech (Lago Sul)', 'Lago Sul', 'Setor, St. de Clubes Esportivos Sul Trecho 2', '(61) 3224-4149', 'Seg - Sex, 06:00 - 22:00 // Sáb, 08:00 - 16:00 // Dom, 09:00 - 14:00', 4.7, '-15.818970448696502', '-47.8682166533695', null, '/static/imagem_academia/bodytechlagosul.jpg'),
    ('Sport Point', 'Jardim Botânico', 'Condomínio Estância Jardim Botânico II b 11', '(61) 3427-1512', 'Seg - Sex, 06:30 - 22:00 // Sáb, 08:00 - 14:00', 4.6, '-15.87906772009733', '-47.81385078465434', null, '/static/imagem_academia/sportpoint.jpg'),
    ('Bluefit (St. de Clubes)', 'Asa Sul', 'St. de Clubes Esportivos Sul Trecho 2 S/N', null, 'Seg - Sex, 06:00 - 00:00 // Sáb - Dom, 08:00 - 20:00', 4.4, '-15.818535473992318', '-47.876739284658164', null, '/static/imagem_academia/bluefitsetordeclubes.jpg'),
    ('Bluefit (Venâncio Shopping)', 'Asa Su', 'SCS, Quadra 8, Bloco B60, sala 340A', null, 'Seg - Sex, 06:00 - 22:00 // Sáb - Dom, 08:00 - 18:00', 4.4, '-15.794679485369464', '-47.89244677347236', null, '/static/imagem_academia/bluefitvenancio.jpg'),
    ('Smart Fit', 'Asa Norte', 'SEPN 515 Bloco E sala 210', null, 'Seg - Sex, 06:00 - 21:00 // Sáb, 08:00 - 17:00 // Dom, 08:00 - 14:00', 4.7, '-15.740684669697792', '-47.897519475755324', null, '/static/imagem_academia/smartfitasanorte.jpg'),
    ('Academia Vasco Neto', 'Asa Norte', 'SHC/N CL 111 Bloco B', '(61) 3037-1813', 'Seg - Sex, 06:00 - 22:00 // Sáb - Dom, 08:00 - 14:00', 4.6, '-15.752448208782013', '-47.88973094833382', null, '/static/imagem_academia/academiavasconeto.jpg'),
    ('O2 Fitness (Lago Sul)', 'Lago Sul', 'SHIS qi 11 bloco f ', '(61) 3201-5447', 'Seg - Sex, 06:00 - 22:00 // Sáb, 08:00 - 16:00 // Dom, 09:00 - 13:00', 4.8, '-15.835243789893555', '-47.867780800037764', null, '/static/imagem_academia/o2fitness.jpg'),
    ('Academia Unique Parque', 'Parque da Cidade', 'SGAS 906 S/N', '(61) 3242-9592', 'Seg - Sex, 05:30 - 22:00 // Sáb, 08:00 - 14:00 // Dom, 09:00 - 13:00', 4.7, '-15.8031764622288', '-47.90477170792603', null, '/static/imagem_academia/uniqueparque.jpg'),
    ('Premiere Training Gym', 'Asa Sul', 'CRS 503, s/n - 4 5, SHCS', '(61) 3246-6167', 'Seg - Sex, 05:30 - 22:00 // Sáb, 08:00 - 14:00 // Dom, 08:30 - 13:00', 4.7, '-15.80086873838057', '-47.89453973069133', null, '/static/imagem_academia/premieretraining.jpg'),
    ('Curves', 'Asa Sul', 'CLS 405 Bloco C Loja 28', '(61) 3242-0003', 'Seg - Sex, 06:30 - 21:00 // Sáb, 09:00 - 12:00', 4.6, '-15.814107011203493', '-47.89003567347188', null, '/static/imagem_academia/curves.jpg'),
    ('Crossfit NOÁ', 'Asa Sul', 'St. de Clubes Esportivos Sul lote 07', '(61) 99988-9998', 'Seg - Sex, 06:00 - 22:00 // Sáb, 09:00 - 13:00', 4.9, '-15.826619569863645', '-47.88690744673604', null, '/static/imagem_academia/crossfitnoa.jpg');
    
    
    
 
 insert into cultural(
	nome_cult,
    bairro,
    endereco,
    telefone,
    hr_funcionamento_cult,
    avaliacao_cult,
    latitude,
    longitude,
    foto_cult
 ) values 
 
 ('Memorial Darcy Ribeiro', 'Asa Norte', 'UnB - Asa Norte', '(61) 3107-0582', 'Seg - Sex, 08:00 - 18:00', 4.5, '-15.763642729385687', '-47.86587337347278', '/static/imagem_cultural/memorialdarcyribeiro.jpg'),
 ('Memorial JK', 'Eixo Monumental', 'Eixo Monumental - Lado Oeste - Praça do Cruzeiro', '(61) 3225-9451', 'Seg - Dom, 09:00 - 18:00', 4.8, '-15.78399000025116', '-47.91339777086218', '/static/imagem_cultural/memorialjk.jpg'),
 ('Memorial dos Povos Indígenas', 'Eixo Monumental', 'Zona Cívico-Administrativa Em frente ao Memorial JK', '(61) 3344-1155', 'Ter - Dom, 09:00 - 17:00', 4.3, '-15.784329999332053', '-47.9111400872249', '/static/imagem_cultural/memorialdospovosindigenas.jpg'),
 ('Museu Nacional da República', 'Eixo Monumental', 'Setor Cultural Sul, Lote 2 próximo à Rodoviária do Plano Piloto', '(61) 3325-6410', 'Ter - Dom, 09:00 - 18:30', 4.5, '-15.79716162332263', '-47.87814574825161', '/static/imagem_cultural/museunacional.jpg'),
 ('Museu do Senado', 'Eixo Monumental', 'Palácio do Congresso, Praça dos Três Poderes', '(61) 3303-4029', 'Seg - Dom, 09:00 - 18:00', 4.3, '-15.798986177425279', '-47.864263675320444', '/static/imagem_cultural/museudosenado.jpg'),
 ('Museu Histórico de Brasília', 'Eixo Monumental', 'Praça dos Três Poderes', '(61) 3323-3728', 'Ter - Dom, 09:00 - 18:00', 4.4, '-15.800556284229385', '-47.861647812104934', '/static/imagem_cultural/museuhistorico.jpg'),
 ('Panteão da Pátria e da Liberdade', 'Eixo Monumental', 'Praça dos Três Poderes', '(61) 3225-7660', 'Ter - Dom, 09:00 - 18:00', 4.4, '-15.80130894163646', '-47.8602338177319', '/static/imagem_cultural/panteaodapatria.jpg'),
 ('Galeria de Arte do Banco Central', 'Setor Bancário Sul', 'Q. 3, Bloco B, 1° Subsolo', '145', 'Ter - Sex, 01:00 - 17:00', 5.0, '-15.803002399314401', '-47.885193229294906', '/static/imagem_cultural/galeriadeartedobancocentral.jpg'),
 ('Caixa Cultural Brasília', 'Setor Bancário Sul', 'Lotes 3/4, SBS Q. 4', '(61) 3206-9448', 'Ter - Dom, 09:00 - 19:00', 4.6, '-15.803661579627079', '-47.8842340480326', '/static/imagem_cultural/caixaculturalbrasilia.jpg'),
 ('Espaço Cultural Renato Russo', 'Asa Sul', 'CRS 508 Bloco A', '(61) 3244-0411', 'Ter - Sáb, 10:00 - 20:00 // Dom, 10:00 - 19:00', 4.6, '-15.812584062617702', '-47.90565915619903', '/static/imagem_cultural/espacoculturalrenatorusso.jpg'),
 ('Fundação Athos Bulcão', 'Asa Sul', 'CRS 510 Bloco B Loja 51', '(61) 33227801', 'Seg - Sex, 09:00 - 18:00 // Sáb, 09:00 - 14:00', 4.5, '-15.816781959293282', '-47.9122335446364', '/static/imagem_cultural/fundacaoathosbulcao.jpg'),
 ('Templo da Boa Vontade', 'Asa Sul', 'SGAS 915 Lote 75', '(61) 3114-1070', 'Aberto 24 horas', 4.8, '-15.823945532763833', '-47.929446459978216', '/static/imagem_cultural/temploboavontade.jpg'),
 ('Teatro Mapati', 'Asa Norte', 'SHCGN 707, Casa 13', '(61) 3347-3920', 'Conferir Eventos', 4.4, '-15.767614838301448', '-47.89144745997905', '/static/imagem_cultural/teatromapati.jpg'),
 ('Teatro Nacional', 'Asa Norte', 'Setor Cultural Teatral Norte', '(61) 3325-6170', 'Conferir Eventos', 4.0, '-15.792396759820907', '-47.88034477893579', '/static/imagem_cultural/teatronacional.jpg'),
 ('Teatro Dulcina', 'Asa Sul', 'CONIC, SDS Bloco C 30/64', '(61) 3322-4147', 'Conferir Eventos', 3.9, '-15.795421608206373', '-47.884378821170486', '/static/imagem_cultural/teatrodulcina.jpg'),
 ('Teatro Pedro Calmon', 'Setor Militar Urbano', 'Avenida Do Exército', '(61) 3415-4184', 'Conferir Eventos', 4.7, '-15.774663242333741', '-47.91968590230822', '/static/imagem_cultural/teatropedrocalmon.jpg'),
 ('Teatro dos Bancários', 'Asa Sul', 'Eqs 314/315 Bloco A', '(61) 3262-9090', 'Conferir Eventos', 4.5, '-15.826047190414823', '-47.92364264463639', '/static/imagem_cultural/teatrodosbancarios.jpg'),
 ('Teatro UNIP - Ulysses Guimarães', 'Asa Sul', 'SGAS 913', '(61) 99116-3027', 'Conferir Eventos', 4.5, '-15.818603513380818', '-47.92131120222369', '/static/imagem_cultural/teatrounip.jpg');

insert into parque(
	nome_parque,
    bairro,
    endereco,
    telefone,
    hr_funcionamento_parque,
    avaliacao_parque,
    latitude,
    longitude,
    desc_parque,
    preco_entrada,
    foto_parque) values 
    
    ('Parque Olhos D’água', 'Asa Norte', 'Quadra 413 e 414', '(61) 3447-3167', 'Seg - Dom, 05:30 - 20:00', 4.7, '-15.7433', '-47.8862', '(Unidade de Conservação)', null, '/static/imagem_parque/parqueolhosdagua.jpg'),
    ('Parque da Cidade', 'Asa Sul', 'Eixo Monumental Sul, s/nº,', '(61) 98169-1880', 'Seg - Dom, 08:00 - 19:00', 4.7, '-15.7924', '-47.9038', null, null, '/static/imagem_parque/parquedacidade.jpg'),
    ('Jardim Botânico de Brasília', 'Lago Sul', 'Smdb Conjunto 12', '(61) 99210-6258', 'Ter-Dom, 09:00 - 17:00', 4.7, '-15.86135696567407', '-47.82873889678555', null, 5.0, '/static/imagem_parque/jardimbotanico.jpg'),
    ('Parque Nacional de Brasília', 'Zona Industrial', 'S/N, Sman', '(61) 3233-4553', 'Seg - Dom, 08:00 - 16:00', 4.6, '-15.739195177479326', '-47.92605359450486', '(ingresso: R$ 14,00 para brasileiros e estrangeiros residentes no país, R$ 28,00 para os demais. Abre às 06:00 para frequentadores que compram o ingresso mensal - R$ 160,00)', null, '/static/imagem_parque/parquenacional.jpg'),
    ('Parque Ecológico Dom Bosco', 'Lago Sul', 'S/N, SEDB', '(61) 3367-4965', 'Seg-Sex, 8:30 - 17:00', 4.6, '-15.797676976667702', '-47.811611121567694', null, null, '/static/imagem_parque/parqueecologicodombosco.jpg'),
    ('Calçadão da Asa Norte', 'Asa Norte', 'Entre as vias L2 e L4, s/n', null, 'Aberto 24 horas', 4.2, '-15.731493705384475', '-47.88973728362983', null, null, '/static/imagem_parque/calcadaoasanorte.jpg'),
    ('Prainha do Lago Norte', 'Lago Norte', 'SMLN', null, 'Aberto 24 horas', 4.5, '-15.746495612756119', ' -47.82250611555871', null, null, '/static/imagem_parque/prainhalagonorte.jpg'),
    ('Parque Ecológico do Lago Norte Módulo II (Ou Parque Vivencial II)', 'Lago Norte', 'St. de Habitações Individuais Norte QL 2', '(61) 3214- 5640', 'Seg-Sex, 6:00 - 20:00', 4.4, '-15.729224380789809', '-47.889965536361444', '(Unidade de Conservação)', null, '/static/imagem_parque/parquevivenciallagonorte.jpg'),
    ('Parque das Garças', 'Lago Norte', 'St. de Habitações Individuais Norte QL 15', '(61) 3214- 5640', 'Seg-Dom, 6:00 - 20:00', 4.6, '-15.771466533152342', '-47.833207463704966', '(Unidade de Conservação)', null, '/static/imagem_parque/parquedasgarcas.jpg'),
    ('Parque do Bosque', 'Sudoeste', 'CLSW 302', null, 'Seg - Dom, 06:00 - 22:00', 4.6, '-15.7964', '-47.9264', null, null, '/static/imagem_parque/parquedobosque.jpg'),
    ('Parque Ecológico Península Sul', 'Lago Sul', 'St. de Habitações Individuais Sul QI 12', '(61) 3214- 5640', 'Seg - Dom, 06:00 - 18:00', 4.6, '-15.8281558144954', '-47.85545866137253', '(Unidade de Conservação)', null, '/static/imagem_parque/parquepeninsulasul.jpg'),
    ('Parque Ecológico das Copaíbas', 'Lago Sul', 'St. de Habitações Individuais Sul QI 26', '(61) 3214- 5640', 'Seg - Dom, 06:00 - 18:00', 4.5, '-15.825617879920076', '-47.807177925282794', '(Unidade de Conservação)', null, '/static/imagem_parque/parquedascopaibas.jpg'),
    ('Parque Ecológico Asa Sul', 'Asa Sul', 'SGAS 614 Sul, entre as vias L2 e L4 Sul', '(61) 3214-5640', 'Seg - Dom, 06:00 - 20:00', 4.2, '-15.838065292558973', '-47.912488125200355', '(Unidade de Conservação)', null, '/static/imagem_parque/parqueecologicoasasul.jpg'),
    ('Morro da Asa Delta', 'Lago Sul', 'St. de Habitações Individuais Sul', '(61) 99804-7909', 'Seg - Dom, 06:00 - 18:00', 4.7, '-15.836763921860944', '-47.86590747508182', null, null, '/static/imagem_parque/morrodaasadelta.jpg'),
    ('Pontão', 'Lago Sul', 'SHIS Ql 10, Lote 1/30', '(61) 3364-0580', 'Dom-Qui, 07:00 - 00:00 // Sex-Sáb, 07:00 - 01:00', 4.8, '-15.825763428822595', '-47.874107947796375', null, null, '/static/imagem_parque/pontao.jpg');
    
    
    insert into restaurante(
	nome_rest,
    bairro,
    endereco,
    telefone,
    hr_funcionamento_rest,
    avaliacao_rest,
    latitude,
    longitude,
    desc_rest,
    foto_rest) values 
    
    ('Maori', 'Asa Norte', 'CLN 110, Bloco D Loja 28', '(61) 3201-6066', 'Seg - Dom, 11:30 - 22:00', 4.5, '-15.75433640186995', '-47.88648373934713', null, '/static/imagem_restaurante/maori.jpg'),
    ('Sabor Vital Restaurante Natural', 'Asa Norte', 'CLN 316 Bloco A Loja 59', '(61) 99923-2171', 'Seg - Sex, 08:00 - 18:30 // Sáb, 08:00 - 15:00', 4.6, '-15.737425522671986', '-47.896268432755', null, '/static/imagem_restaurante/saborvital.jpg'),
    ('Amor à Natureza Restaurante Natural', 'Asa Norte', 'CLN 310 Bloco A', '(61) 3272-2055', 'Seg - Sáb, 11:30 - 15:00', 4.4, '-15.756562618107832', '-47.890284258547766', null, '/static/imagem_restaurante/amoranatureza.jpg'),
    ('Menu Saudável Brasil', 'Asa Norte', 'SEPN 509 Bloco D Loja 09', '(61) 98153-1880', 'Seg - Sex, 10:00 - 19:00 // Sáb, 10:00 - 15:00', 0.0, '-15.760742179615967', '-47.89145240206671', null, '/static/imagem_restaurante/menusaudavel.jpg'),
    ('Bálsamo Congelados Saudáveis', 'Asa Norte', 'SHCGN 708/709 Bloco G Loja 44', '(61) 99339-5424', 'Seg - Sex, 08:00 - 18:00 // Sáb, 09:00 - 13:00', 4.9, '-15.763263204816617', '-47.89281295788688', null, '/static/imagem_restaurante/balsamocongelados.jpg'),
    ('A Tribo Restaurante', 'Asa Norte', 'CLN 105 Bloco B Loja 52', '(61) 99372-4300', 'Ter - Sex, 11:30 - 14:30 // Sáb, 12:00 - 15:00', 4.4, '-15.771126914212465', '-47.884014013504185', null, '/static/imagem_restaurante/atriborestaurante.jpg'),
    ('Oby Sabores Orgânicos', 'Asa Norte', 'CLN 405 Bloco C Loja 31', '(61) 99966-1112', 'Ter - Sáb, 11:00 - 20:00 // Dom, 11:00 - 17:00', 5.0, '-15.773025412720978', '-47.87641874234019', null, '/static/imagem_restaurante/oby.jpg'),
    ('Nutrifresh - Alimentação Inteligente', 'Asa Norte', 'CLN 303 Bloco A loja 6', '(61) 33262381', 'Seg - Sex, 09:00 - 20:00 // Sáb, 09:00 - 18:00', 4.3, '-15.7803309461329', '-47.88483710197064', null, '/static/imagem_restaurante/nutrifreshasanorte.jpg'),
    ('Greens Restaurante Natural', 'Asa Norte', 'CLN 302 Bloco B loja', '(61) 33260272', 'Seg - Sex, 11:30 - 21:30 // Sáb, 11:30 - 15:30', 4.4, '-15.780722070914326', '-47.88492798478059', null, '/static/imagem_restaurante/greens.jpg'),
    ('Restaurante Flor de Lótus', 'Asa Norte', 'CLN 102 Bloco A  Loja 48', '(61)33264401', 'Seg - Sex, 08:00 - 18:00 // Sáb, 08:00 - 14:00', 4.5, '-15.783064342973754', '-47.882447677088535', null, '/static/imagem_restaurante/flordelotus.jpg'),
    ('Casa Graviola', 'Asa Sul', 'CLS 202 Bloco B Loja 34', '06132470923', 'Seg - Dom, 11:30 - 22:00', 4.4, '-15.804626617219084', '-47.8852197023075', null, '/static/imagem_restaurante/casagraviola.jpg'),
    ('Salad Bowl', 'Asa Norte', 'St. de Habitações Coletivas e Geminadas Norte 716 BL H', '(61) 3554-0001', 'Seg - Sáb, 11:30 - 22:00 // Dom, 11:30 - 15:30', 4.7, '-15.809228061773263', '-47.88530452836388', null, '/static/imagem_restaurante/saladbowl.jpg'),
    ('The Plant', 'Asa Sul', 'CLS 103 Bloco C Loja 36', '(61) 3322-0404', 'Todos os dias, 11:00 - 22:30', 4.6, '-15.806287995911182', '-47.89356990251609', null, '/static/imagem_restaurante/theplant.jpg'),
    ('Nutrifresh - Alimentação Inteligente', 'Asa Sul', 'Loja 32, CLS 105 BL B', '(61) 3703-4042', 'Seg - Sex, 09:00 - 21:15 // Sáb, 08:00 - 19:00', 4.1, '-15.811295034922646', '-47.897622905513316', null, '/static/imagem_restaurante/nutrifreshasasul.jpg'),
    ('Boali', 'Asa Sul', 'CLS 404 BL A Loja 37', '(61) 98105-0187', 'Todos os dias, 11:00 - 21:00', 4.9, '-15.812805830060467', '-47.890390384363734', null, '/static/imagem_restaurante/boali.jpg'),
    ('Girassol Alimentação Saudável', 'Asa Sul', '409 sul Loja 15 e 16', '(61) 3242-1542', 'Seg - Sex, 08:00 - 18:00 // Sáb, 08:00 - 15:00', 4.7, '-15.822024868645801', '-47.90131341534566', null, '/static/imagem_restaurante/girassol.jpg'),
    ('Submore', 'Asa Sul', 'SHCS CLS 211 BL B Loja 01', '(61) 3345-5555', 'Todos os dias, 10:00 - 22:00', 4.2, '-15.825887973284022', '-47.91059051534566', null, '/static/imagem_restaurante/submore.jpg'),
    ('Nutrifresh - Alimentação Inteligente', 'Sudoeste', 'St. Sudoeste CLSW 103', '(61) 3710-4042', 'Seg - Sex, 08:30 - 20:00 // Sáb, 09:00 - 20:00', 4.3, '-15.800768305433927', '-47.92642453069133', null, '/static/imagem_restaurante/nutrifreshsudoeste.jpg'),
    ('Viva Leve', 'Sudoeste', 'Área Especial 3 / 8', '(61) 992932002', 'Seg - Sáb, 11:00 - 19:00', 4.5, '-15.80141358064177', '-47.942809302307694', null, '/static/imagem_restaurante/vivaleve.jpg'),
    ('Sabor Light', 'Sudoeste', 'CSLW 103 Bloco A Loja 15', '(61) 30324874', 'Seg - Sex, 08:00 - 19:00 // Sáb, 08:00 - 14:00', 4.5, '-15.799126186891762', '-47.92494183264264', null, '/static/imagem_restaurante/saborlight.jpg'),
    ('Nutrifresh', 'Lago Norte', 'CA 1 Lote B Loja 58, Península Shopping', '(61) 35760101', 'Seg - Sex, 08:00 - 21:00 // Sáb, 09:00 - 19:00', 4.2, '-15.721562739828068', '-47.88299937162513', null, '/static/imagem_restaurante/nutrifreshlagonorte.jpg');

create table autoavaliacao_saude (
	idAutoAvaliacao int not null primary key auto_increment,
    intervalo varchar(20) not null,
    proporcao float not null    
);

insert into autoavaliacao_saude (intervalo, proporcao)  values 
('De 18 a 29 anos', '80.7'),
('De 30 a 59 anos', '67.7'),
('De 60 a 64 anos', '52'),
('De 65 a 74 anos', '47'),
('Acima de 75 anos', '41.1');

## Consumo recomendado de hortaliças e frutas, inclusive suco (pelo menos 25 vezes na semana). 
create table consumo_hortalicas (
	idConsumoHortalica int not null primary key auto_increment,
    intervalo varchar(20) not null,
    proporcao float not null    
);

insert into consumo_hortalicas (intervalo, proporcao)  values 
('De 18 a 24 anos', '7.4'),
('De 25 a 39 anos', '10.7'),
('De 40 a 59 anos', '14.1'),
('Acima de 60 anos', '17.9');


## Consumo regular de feijão (cinco ou mais dias da semana)
create table consumo_feijao (
	idConsumoFeijao int not null primary key auto_increment,
    intervalo varchar(20) not null,
    proporcao float not null    
);

insert into consumo_feijao (intervalo, proporcao)  values 
('De 18 a 24 anos', '68'),
('De 25 a 39 anos', '66.3'),
('De 40 a 59 anos', '69'),
('Acima de 60 anos', '70.2');

## Proporção de prática do nível recomendado de atividade física no lazer (fora do âmbito escolar ou trabalho, por mais de 150 minutos para atividade moderada ou por 75 minutos para atividades vigorosas na semana)
create table exercicio_lazer (
	idExercicioLazer int not null primary key auto_increment,
    intervalo varchar(20) not null,
    proporcao float not null    
);

insert into exercicio_lazer (intervalo, proporcao)  values 
('De 18 a 24 anos', '41'),
('De 25 a 39 anos', '35.4'),
('De 40 a 59 anos', '27.6'),
('Acima de 60 anos', '19.8');


    
    
    
    
    
    
    
    
    
    
    
    