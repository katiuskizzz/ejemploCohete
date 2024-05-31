import { useState } from 'react'
import axios from 'axios';
import './App.css'

function App() {

  const [mensaje, setMensaje] = useState('');
  const [mensaje2, setMensaje2] = useState('');
  const [mensaje3, setMensaje3] = useState('');

  const handleSubmit = async (event) => {
    event.preventDefault();

    try{
      const response = await axios.post('http://localhost:4000/enviar',{
      mensaje,
      mensaje2,
      mensaje3
      });
      if (response.status === 201){
        alert('Se envio esto con exito ale');
      }else{
        alert('error:' + response.data.error)
      }
      
    }catch (error){
          console.log('Error en todo salveneme', error);
          alert('mas errores dio');
      }
  };


  return (

    <form onSubmit={handleSubmit}>
      <div>
        <label htmlFor="mensaje">Mensaje:</label>
        <input
        type="text"
        id="mensaje"
        value={mensaje}
        onChange={(e)=> setMensaje(e.target.value)}
        required
        />
      </div>

      <div>
        <label htmlFor="mensaje2">Mensaje2:</label>
        <input
        type="text"
        id="mensaje2"
        value={mensaje2}
        onChange={(e)=> setMensaje2(e.target.value)}
        required
        />
      </div>

      <div>
        <label htmlFor="mensaje3">Mensaje3:</label>
        <input
        type="text"
        id="mensaje3"
        value={mensaje3}
        onChange={(e)=> setMensaje3(e.target.value)}
        required
        />
      </div>
      <button type='submit'>Enviar</button>
    </form>
    
  )
}

export default App
