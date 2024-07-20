import express from 'express'

const app = express()

// mock
const escritores = [
    {id: 1, author: 'Eiichiro Oda'},
    {id: 2, author: 'Masahi Kishimoto'},
    {id: 3, author: 'Kohei Horikoshi'},
    {id: 4, author: 'Oda Tomohito'},
]

// Criar rota padrão ou raiz
app.get('/', (req, res) => {
    res.status(200).send('Projeto API de Mangas')
})

app.get('/autores', (req, res) =>{
    res.send(escritores)
})

export default app
