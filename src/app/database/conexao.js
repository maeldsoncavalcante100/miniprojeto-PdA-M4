import mysql from "mysql";

const conexao = mysql.createConnection({
  host: "localhost",
  port: "3306",
  user: "root",
  password: "1234567",
  database: "dbapimanga",
});

conexao.connect();

/**
 * Executa um código SQL com ou sem valores
 * @param {string} sql instrução SQL a ser executada
 * @param {string=id | [authors, id]} valores a serem passados para o SQL
 * @param {string} mensagemReject mensagem a ser exibida 
 * @returns objeto da Promise
 */
export const consulta = (sql, valores='', mensagemReject) => {
    return new Promise((resolve, reject) => {
        conexao.query(sql, valores, (erro, resultado) => {
          if (erro) return reject(mensagemReject)
          // fazer o parse dos resultados
          const row = JSON.parse(JSON.stringify(resultado));
          return resolve(row);
        });
      });
}

export default conexao;
