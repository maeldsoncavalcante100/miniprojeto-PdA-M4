import { Router } from "express";
import AuthorController from "../controllers/AuthorController.js";
import MangaController from "../controllers/MangaController.js"


const router = Router()

// ROTAS
router.get("/autores", AuthorController.index);
router.get("/manga", MangaController.index)

router.get("/autores/:id", AuthorController.show);
router.get("/mangas/:id", MangaController.show)

router.post("/autores", AuthorController.store);
router.post("/manga", MangaController.store)

router.put("/autores/:id", AuthorController.update);
router.put("/mangas/:id", MangaController.update)

router.delete("/autores/:id", AuthorController.delete);
router.delete("/mangas/:id", MangaController.delete)

export default router
