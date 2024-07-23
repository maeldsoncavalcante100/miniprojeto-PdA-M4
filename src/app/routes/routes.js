import { Router } from "express";
import AuthorController from "../controllers/AuthorController.js";

const router = Router()

// ROTAS
router.get("/autores", AuthorController.index);
router.get("/autores/:id", AuthorController.show);
router.post("/autores", AuthorController.store);
router.put("/autores/:id", AuthorController.update);
router.delete("/autores/:id", AuthorController.delete);

export default router
