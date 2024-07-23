import AuthorRepository from "../models/AuthorRepository.js";

class AuthorController {
  async index(req, res) {
    const row = await AuthorRepository.findAll();
    res.json(row);
  }

  async show(req, res) {
    const id = req.params.id;
    const row = await AuthorRepository.findById(id);
    res.json(row);
  }

  async store(req, res) {
    const authors = req.body;
    const row = await AuthorRepository.create(authors);
    res.json(row);
  }

  async update(req, res) {
    const id = req.params.id;
    const authors = req.body;
    const row = await AuthorRepository.update(authors, id);
    res.json(row);
  }

  async delete(req, res) {
    const id = req.params.id;
    const row = await AuthorRepository.delete(id);
  }
}

// padrão singleton
export default new AuthorController();
