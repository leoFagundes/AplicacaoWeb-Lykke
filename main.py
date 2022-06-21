import mysql.connector
from flask import Flask, render_template, request


class SQL:
    def __init__(self, usuario='root', senha='uniceub', esquema='lykke'):
        self.cnx = mysql.connector.connect(user=usuario, password=senha,
                                           host='127.0.0.1',
                                           database=esquema)

    def executar(self, comando, parametros):
        cs = self.cnx.cursor()
        cs.execute(comando, parametros)
        self.cnx.commit()
        cs.close()
        return True

    def consultar(self, comando, parametros):
        cs = self.cnx.cursor()
        cs.execute(comando, parametros)
        return cs

    def __del__(self):
        self.cnx.close()

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('home.html')


@app.route('/contact')
def up_contact():
    return render_template('contact.html')


@app.route('/getContact', methods=['POST'])
def get_contact():
    msg = ''
    if request.method == 'POST':
        nome = request.form['pNome']
        email = request.form['pEmail']
        mensagem = request.form['pMensagem']
        mysql = SQL()
        if '@' not in email:
            msg = 'Email inválido, tente novamente.'
        else:
            comando = "INSERT INTO contato(nome, email, mensagem) VALUES (%s, %s, %s);"
            if mysql.executar(comando, [nome, email, mensagem]):
                msg = 'Dados enviados com sucesso!'
            else:
                msg = 'Falha no envio dos dados.'

    return render_template('get_contact.html', msg=msg)

@app.route('/conteudo')
def conteudo():
    return render_template('conteudo.html')


@app.route('/sobre')
def sobre():
    return render_template('sobre.html')


@app.route('/alimentacao')
def alimentacao():
    mysql = SQL()
    comando = "SELECT intervalo, proporcao FROM consumo_hortalicas"
    cs = mysql.consultar(comando, ())
    grf = ""
    for [intervalo, proporcao] in cs:
        grf += f", ['{intervalo}', {proporcao}, '#F59443']"
    cs.close()

    comando_02 = "SELECT intervalo, proporcao FROM consumo_feijao"

    cs_02 = mysql.consultar(comando_02, ())
    grf_02 = ""
    for [intervalo, proporcao] in cs_02:
        grf_02 += f", ['{intervalo}', {proporcao}, '#00D4F7']"
    cs_02.close()

    return render_template('alimentacao.html', barras_01=grf, barras_02=grf_02)


@app.route('/habitos')
def habitos():
    mysql = SQL()
    comando = "SELECT intervalo, proporcao FROM autoavaliacao_saude"

    cs = mysql.consultar(comando, ())
    grf = ""
    for [intervalo, proporcao] in cs:
        grf += f", ['{intervalo}', {proporcao}, '#9999FF']"
    cs.close()

    return render_template('habitos.html', barras=grf)


@app.route('/exercicio')
def exercicio():
   mysql = SQL()
   comando = "SELECT intervalo, proporcao FROM exercicio_lazer"

   cs = mysql.consultar(comando, ())
   grf = ""
   for [intervalo, proporcao] in cs:
      grf += f", ['{intervalo}', {proporcao}, '#9999FF']"
   cs.close()

   return render_template('exercicio.html', barras_03=grf)


@app.route('/lazer')
def lazer():
    return render_template('lazer.html')


@app.route('/lazerCultural')
def lazerCultural():
    return render_template('lazerCultural.html')


@app.route('/lazerArLivre')
def lazerArLivre():
    return render_template('lazerArLivre.html')


@app.route('/saudeMental')
def saudeMental():
    return render_template('saudeMental.html')


@app.route('/sistemaImunologico')
def sistemaImunologico():
    return render_template('sistemaImunologico.html')

@app.route("/recomendacaoParques")
def recomendacaoParques():
    mysql = SQL()
    cmd = 'SELECT idt_parque, latitude, longitude, nome_parque FROM parque'
    cs = mysql.consultar(cmd, ())
    marcadores = ''
    popups = ''
    icone = '{icon: lykkeicon}'
    for idt, lat, lng, nome in cs:
        marcadores += 'var mk_{} = L.marker([{}, {}], {}).addTo(m);\n'.format(idt, lat, lng, icone)
        popups += 'mk_{}.bindPopup("<a href=\'\#{}\'>{}</a>");'.format(idt, 'i'+str(idt), nome)
    cs.close()

    comando = "SELECT idt_parque, nome_parque, bairro, endereco, telefone, hr_funcionamento_parque, avaliacao_parque, foto_parque FROM parque;"
    imagens = ""
    cs_02 = mysql.consultar(comando, [])
    for (idt, nome, bairro, end, tel, hrfunc, avaliacao, foto) in cs_02:
        imagens += "<TR class='campoTR'>\n"
        imagens += "<TD class='camposTD' style='padding-left: 2%'>" + nome + "</TD>\n"
        imagens += "<TD class='camposTD'>" + bairro + "</TD>\n"
        imagens += "<TD class='camposTD'>" + end + "</TD>\n"
        imagens += "<TD class='camposTD'>" + str(tel) + "</TD>\n"
        imagens += "<TD class='camposTD'>" + hrfunc + "</TD>\n"
        imagens += "<TD class='camposTD' style='padding-left: 3.5%'>" + str(avaliacao) + "</TD>\n"
        imagens += "<TD id='i" + str(idt) + "' class='imagemRecomendacao'><IMG class='imagem' SRC='" + foto + "'></TD>\n"
        imagens += "</TR>\n"

    return render_template("recomendacaoParques.html", marcadores = marcadores, popups = popups, imagens=imagens)

@app.route("/recomendacaoRestaurantes")
def recomendacaoRestaurantes():
    mysql = SQL()
    cmd = 'SELECT idt_restaurante, latitude, longitude, nome_rest FROM restaurante'
    cs = mysql.consultar(cmd, ())
    marcadores = ''
    popups = ''
    icone = '{icon: lykkeicon}'
    for idt, lat, lng, nome in cs:
        marcadores += 'var mk_{} = L.marker([{}, {}], {}).addTo(m);\n'.format(idt, lat, lng, icone)
        popups += 'mk_{}.bindPopup("<a href=\'\#{}\'>{}</a>");'.format(idt, 'i'+str(idt), nome)
    cs.close()

    comando = "SELECT idt_restaurante, nome_rest, bairro, endereco, telefone, hr_funcionamento_rest, avaliacao_rest, foto_rest FROM restaurante;"
    imagens = ""
    cs_02 = mysql.consultar(comando, [])
    for (idt, nome, bairro, end, tel, hrfunc, avaliacao, foto) in cs_02:
        imagens += "<TR class='campoTR'>\n"
        imagens += "<TD class='camposTD' style='padding-left: 2%'>" + nome + "</TD>\n"
        imagens += "<TD class='camposTD'>" + bairro + "</TD>\n"
        imagens += "<TD class='camposTD'>" + end + "</TD>\n"
        imagens += "<TD class='camposTD'>" + str(tel) + "</TD>\n"
        imagens += "<TD class='camposTD'>" + hrfunc + "</TD>\n"
        imagens += "<TD class='camposTD' style='padding-left: 3.5%'>" + str(avaliacao) + "</TD>\n"
        imagens += "<TD id='i" + str(idt) + "' class='imagemRecomendacao'><IMG class='imagem' SRC='" + foto + "'></TD>\n"
        imagens += "</TR>\n"


    return render_template("recomendacaoRestaurantes.html", marcadores = marcadores, popups = popups, imagens=imagens)

@app.route("/recomendacaoAcademias")
def recomendacaoAcademias():
    mysql = SQL()
    cmd = 'SELECT idt_acad, latitude, longitude, nome_acad FROM academia'
    cs = mysql.consultar(cmd, ())
    marcadores = ''
    popups = ''
    icone = '{icon: lykkeicon}'
    for idt, lat, lng, nome in cs:
        marcadores += 'var mk_{} = L.marker([{}, {}], {}).addTo(m);\n'.format(idt, lat, lng, icone)
        popups += 'mk_{}.bindPopup("<a href=\'\#{}\'>{}</a>");'.format(idt, 'i'+str(idt), nome)
    cs.close()

    comando = "SELECT idt_acad, nome_acad, bairro, endereco, telefone, hr_funcionamento_acad, avaliacao_acad, foto_acad FROM academia;"
    imagens = ""
    cs_02 = mysql.consultar(comando, [])
    for (idt, nome, bairro, end, tel, hrfunc, avaliacao, foto) in cs_02:
        imagens += "<TR class='campoTR'>\n"
        imagens += "<TD class='camposTD' style='padding-left: 2%'>" + nome + "</TD>\n"
        imagens += "<TD class='camposTD'>" + bairro + "</TD>\n"
        imagens += "<TD class='camposTD'>" + end + "</TD>\n"
        imagens += "<TD class='camposTD'>" + str(tel) + "</TD>\n"
        imagens += "<TD class='camposTD'>" + hrfunc + "</TD>\n"
        imagens += "<TD class='camposTD' style='padding-left: 3.5%'>" + str(avaliacao) + "</TD>\n"
        imagens += "<TD id='i" + str(idt) + "' class='imagemRecomendacao'><IMG class='imagem' SRC='" + foto + "'></TD>\n"
        imagens += "</TR>\n"

    return render_template("recomendacaoAcademias.html", marcadores = marcadores, popups = popups, imagens=imagens)

@app.route("/recomendacaoCultural")
def recomendacaoCultural():
    mysql = SQL()
    cmd = 'SELECT idt_cultural, latitude, longitude, nome_cult FROM cultural'
    cs = mysql.consultar(cmd, ())
    marcadores = ''
    popups = ''
    icone = '{icon: lykkeicon}'
    for idt, lat, lng, nome in cs:
        marcadores += 'var mk_{} = L.marker([{}, {}], {}).addTo(m);\n'.format(idt, lat, lng, icone)
        popups += 'mk_{}.bindPopup("<a href=\'\#{}\'>{}</a>");'.format(idt, 'i'+str(idt), nome)
    cs.close()

    comando = "SELECT idt_cultural, nome_cult, bairro, endereco, telefone, hr_funcionamento_cult, avaliacao_cult, foto_cult FROM cultural;"
    imagens = ""
    cs_02 = mysql.consultar(comando, [])
    for (idt, nome, bairro, end, tel, hrfunc, avaliacao, foto) in cs_02:
        imagens += "<TR class='campoTR'>\n"
        imagens += "<TD class='camposTD' style='padding-left: 2%'>" + nome + "</TD>\n"
        imagens += "<TD class='camposTD'>" + bairro + "</TD>\n"
        imagens += "<TD class='camposTD'>" + end + "</TD>\n"
        imagens += "<TD class='camposTD'>" + str(tel) + "</TD>\n"
        imagens += "<TD class='camposTD'>" + hrfunc + "</TD>\n"
        imagens += "<TD class='camposTD' style='padding-left: 3.5%'>" + str(avaliacao) + "</TD>\n"
        imagens += "<TD id='i" + str(idt) + "'  class='imagemRecomendacao'><IMG class='imagem' SRC='" + foto + "'></TD>\n"
        imagens += "</TR>\n"

    return render_template("recomendacaoCultural.html", marcadores = marcadores, popups = popups, imagens=imagens)


app.run(debug=True)
