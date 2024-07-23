import { consulta } from "../database/conexao.js";

class AuthorRepository {
  // CRUD
  create(authors) {
    const sql = "INSERT INTO authors SET ?;";
    return consulta(sql, authors, 'Não foi possível cadastrar!')
  }

  findAll() {
    const sql = "SELECT * FROM authors;";
    return consulta(sql, 'Não foi possível localizar!')
  }

  findById(id) {
    const sql = "SELECT * FROM authors WHERE author_id=?;";
    return consulta(sql, id,  'Não foi possível localizar!')
  }

  update(authors, id) {
    const sql = "UPDATE authors SET ? WHERE author_id=?;";
    return consulta(sql, [authors,id],  'Não foi possível atualizar!')
  }

  delete(id) {
    const sql = "DELETE FROM authors WHERE author_id=?;";
    return consulta(sql, id,  'Não foi possível apagar!')
  }
}

export default new AuthorRepository();
