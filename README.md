# 🎮 Comparador de Precios de Videojuegos de PC
Un comparador de precios de videojuegos que extrae datos de Steam y G2A mediante web scraping, permitiendo a los usuarios encontrar las mejores ofertas y descubrir nuevos juegos gracias al sistema de filtros avanzados.

# 🚀 Características  
- 📊 **Comparación de precios** entre Steam y G2A.  
- 🔍 **Filtros avanzados** por relevancia, fecha de salida, precio, valoración y etiquetas de los videojuegos.  
- 🕵️ **Scraping de Steam** obtenido desde https://tornware.net/best-of-steam/ y traducido desde su archivo binario mediante ingeniería inversa.  
- 📡 **Obtención de datos de G2A** simulando llamadas Postman.  
- 💾 **Base de datos optimizada**, solo se almacenan los juegos que coinciden en ambas fuentes.

## 🛠 Tecnologías utilizadas  
- **Frontend**: React.js, Bootstrap.  
- **Backend**: Flask, SQLAlchemy.  
- **Scraping**:  
  - Steam: transformación de datos binarios mediante ingeniería inversa obtenidos desde https://tornware.net/best-of-steam/ .  
  - G2A: simulación de llamadas Postman con newman.  
- **Base de datos**: SQLite.
- **Autenticación**: JWT.
- **Generación token recuperación de cuenta**: itsdangerous.
- **Encriptado de contraseñas**: bcrypt.
- **Envío de correos**: EmailJS.
- **Control de versiones**: GIT y GitHub.

## 📗 Pasos a seguir para iniciar/configurar el proyecto

### 📡 Codespaces
**1- Incia el entorno virtual**
  
    pipenv shell

**2- Abre puertos locales desde codespaces:**

Abre los puertos para el front y el back desde la pestaña de "PUERTOS" de codespaces haciendo click derecho > visibilidad del puerto > public.

**3- Configura el archivo .env**

configura la variable de `BACKEND_URL` con la url de tu codespaces backend (puerto 3001), configura la variable `FRONTEND_URL` con la url de tu codespaces frontend (puerto 3000) y configura una `SECRET_KEY` con la palabra que quieras (EJ:`SECRET_KEY="palabra"`).


**4- Crea la base de datos y realiza las migraciones**

    pipenv run upgrade

**5- Inserta datos iniciales**

    flask insert-game-tag-data
    flask insert-game-data

**6- Levanta el proyecto**
mediante los comandos `$npm run start` levantando el front y `$pipenv run start` levantando el back
- ¡¡Compara y descrubre nuevos juegos!!

### 🖥️ Configuración en entorno local
**0- Requisitos previos**

Tener instalados:

    Python 3.x y pip
    
    Node.js y npm
    
    pipenv (pip install pipenv)
    
    Flask CLI (pip install flask)

    bcrypt (pip install flask-bcrypt)

    JWT (pip install flask-jwt-extended)

    rc-slider (npm install rc-slider)


**1- Clona el repositorio**

    git clone https://github.com/4GeeksAcademy/Fs-Spain_85-AllGamesDB.git
    cd Fs-Spain_85-AllGamesDB

**2- Configura el entorno virtual y las dependencias del backend**

    pipenv install

**3- Crea el archivo .env en la raíz del proyecto con las siguientes variables**:

    SECRET_KEY="tu_clave_secreta"
    BACKEND_URL="http://localhost:3001"
    FRONTEND_URL="http://localhost:3000"

**4- Crea la base de datos y realiza las migraciones**

Instala tu motor de base de datos y crea tu base de datos, dependiento de tu base de datos tendrás que crear una variable llamada `DATABASE_URL` con uno de los siguientes valores, aegurate de reemplazxar los valores con la información de tu base de datos:
| Motor     | DATABASE_URL                                        |
| --------- | --------------------------------------------------- |
| SQLite    | sqlite:////test.db                                  |
| MySQL     | mysql://username:password@localhost:port/example    |
| Postgress | postgres://username:password@localhost:5432/example |

Finalmente ejecuta el comando:

    pipenv run upgrade

**5- Inserta los datos iniciales**

    flask insert-game-tag-data
    flask insert-game-data

**6- Ejecuta el backend**

    pipenv run start

**7- Ejecuta el frontend**

    npm run start

¡Listo! Accede a la aplicación en http://localhost:3000

### Contribuciones
Se hace uso de la plantilla de 4GeeksAcademy para la configuración inicial del proyecto [school github page](https://github.com/4geeksacademy/).
