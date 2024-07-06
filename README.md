
# Hola, soy Nath! 👋

Antes que desarrolladora soy una persona de muchas pasiones! Además de mis perros y gatos me apasiona el arte, el scrapbooking y coleccionar stickers.

En cuanto a Ruby, fue el lenguaje que me atrapó hace más de 8 años en mundo lleno de posibilidades.

Hoy en día sigo trabajando con Ruby 🦋para una empresa en USA
# Refugio de Perritos

Este es un proyecto de ejemplo para la clase de APIs REST de Código Facilito.
Puedes clonar y jugar con el como tu quieras. Hay commits que te permitiran entender cada uno de los puntos de la presentación.

- Inicializacion del proyecto




## Funcionalidades

- Obtener una lista de perritos en adopción
- Crear un perrito en adopción
- Adoptar un perrito
- Borrar un perrito de la BD


## Tech Stack

**Client:** React, Redux, TailwindCSS

**API:** Rails 7.1.3, Ruby 3.3.0


## Environment Variables

To run this project, you will need to add the following environment variables to your .env file

`API_KEY`

`ANOTHER_API_KEY`


## Instalación

Estamos usando Rails asi que:

```bash
bundle install
```
    
## Running Tests

To run tests, run the following command

```bash
  rspec spec/
```


## Demo

Insert gif or link to demo



## Deployment

To deploy this project run

```bash
  npm run deploy
```


## API Reference

#### Get all items

```http
  GET /api/items
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `api_key` | `string` | **Required**. Your API key |

#### Get item

```http
  GET /api/items/${id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Required**. Id of item to fetch |

#### add(num1, num2)

Takes two numbers and returns the sum.


## Acknowledgements

 - [Awesome Readme Templates](https://awesomeopensource.com/project/elangosundar/awesome-README-templates)
 - [Awesome README](https://github.com/matiassingers/awesome-readme)
 - [How to write a Good readme](https://bulldogjob.com/news/449-how-to-write-a-good-readme-for-your-github-project)

