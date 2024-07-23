import  { consulta } from "../database/conexao.js"

class MangaRepository {
    //CRUD
    create(authors) {
        const sql = "INSERT INTO mangas SET ?;"
        return consulta(sql, authors, 'Não foi possível cadastrar!')
    }

    findAll() {
        const sql = "SELECT * FROM mangas;"
        return consulta(sql, 'Não foi possível localizar!')
    }

    findById(id) {
        const sql = "SELECT * FROM mangas WHERE manga_id=?;"
        return consulta(sql, id, 'Não foi possível localizar!')
    }

    update(authors, id) {
        const sql = "UPDATE mangas SET ? WHERE manga_id=?;"
        return consulta(sql, [authors, id], 'Não foi possível atualizar!')
    }

    delete(id) {
        const sql = "DELETE FROM mangas WHERE manga_id=?;"
        return consulta(sql, id, 'Não foi possível apagar!')
    }
}

export default new MangaRepository()
