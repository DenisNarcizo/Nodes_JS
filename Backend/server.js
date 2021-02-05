const express = require('express');

const server = express();

const db = require('./database');

server.use(express.json());

server.get('/', function(request, response) {
    const consulta = 'SELECT * FROM produtos';

    db.query(consulta, function(erro, resultado) {
        if (erro) {
            return response.json({erro: 'Erro na consulta do Banco de Dados'})
        }
        return response.json(resultado);
    });
    
   });

   server.get('/comentarios', function(request, response) {
    const consulta = 'SELECT * FROM comentarios';

    db.query(consulta, function(erro, resultado) {
        if (erro) {
            return response.json({erro: 'Erro na consulta do Banco de Dados'})
        }
        return response.json(resultado);
    });
    
   });

   server.get('/pedidos', function(request, response) {
    const consulta = 'SELECT * FROM pedidos';

    db.query(consulta, function(erro, resultado) {
        if (erro) {
            return response.json({erro: 'Erro na consulta do Banco de Dados'})
        }
        return response.json(resultado);
    });
    
   });

   server.post('/comentarios', function(request, response) {
    const {nome, mensagem }= request.body;
   
    const consulta = `INSERT INTO comentarios (nome, mensagem) VALUES ('${nome}','${mensagem}')`;
   
    db.query(consulta, function(err, results){
        if(err){
            return response.json({ err: ' Não foi possível colocar os dados no banco',});
        }
        return response.json({ sucesso: 'Seus dados foram inseridos!'});
    })
   
});


server.listen(8080, function(){
    console.log('Servidor ligado!!')
});

