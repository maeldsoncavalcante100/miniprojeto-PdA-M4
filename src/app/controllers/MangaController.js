
import MangaRepository from "../models/MangaRepository.js"

class MangaController {

    async index(req, res) {
       const row = await MangaRepository.findAll()
       res.json(row)
    }
    
    async show(req, res) {
        const id = req.params.id
        const row = await MangaRepository.findById(id)
        res.json(row)
    }

    async store(req, res) {
        const mangas = req.body
        const row = await MangaRepository.create(mangas)
        res.json(row)
    }

    async update(req, res) {
        const id = req.params.id
        const mangas = req.body
        const row = await MangaRepository.update(mangas, id)
        res.json(row)
    }

    async delete(req, res) {
        const id = req.params.id
        const row = await MangaRepository.delete(id)
        res.json(row)
    }

}

export default new MangaController()
