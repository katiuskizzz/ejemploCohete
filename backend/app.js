import express from 'express';
import cors from 'cors';
import pool from './conexion.js';

const app = express();

app.use(express.json());
app.use(cors());
app.use(express.urlencoded({extended:true}));


app.listen(4000,() => {
    console.log('Hola katiuska');
});

app.post('/enviar', async(req,res)=> {
    const {mensaje, mensaje2, mensaje3}= req.body;


    if(!mensaje || !mensaje2 || !mensaje3){
        return res.status(400).json({error: 'por favor complete eso'});
    }
    try{
        const sql = 'INSERT INTO notificacion (	mensaje, mensaje2, mensaje3) VALUES (?,?,?)';
        const [result] = await pool.execute(sql, [mensaje, mensaje2, mensaje3]);

        res.status(201).json({message:'Se enviaron correctamente los mensajes'});

    }
    catch(error){
        console.log('Error interno:', error);
        res.status(500).json({error: 'Interno error'});
    }
});