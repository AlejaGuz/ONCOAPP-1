# FastAPI + Supabase Auth API

API de autenticaci�n construida con FastAPI y Supabase.

## ?? Soluci�n al Error de Puerto

El error `[WinError 10013]` indica que el puerto est� siendo usado por otro proceso. He implementado una soluci�n autom�tica que:

1. **Busca autom�ticamente un puerto disponible** comenzando desde el 8000
2. **Maneja errores de permisos** de socket
3. **Proporciona mensajes informativos** sobre el estado del servidor

## ?? Instalaci�n

1. **Instalar dependencias:**
   ```bash
   pip install -r requirements.txt
   ```

2. **Crear archivo .env:**
   ```env
   SUPABASE_URL=tu_supabase_url_aqui
   SUPABASE_SERVICE_ROLE_KEY=tu_service_role_key_aqui
   JWT_SECRET=tu_jwt_secret_muy_seguro_aqui
   JWT_ALG=HS256
   JWT_EXPIRE_MINUTES=60
   ```

## ????? Ejecuci�n

### Opci�n 1: Modo Producci�n (Con Supabase) - RECOMENDADO
```bash
# Windows
start_prod.bat

# O manualmente
python run_server.py
```

### Opci�n 2: Ejecutar directamente
```bash
python main.py
```

### Opci�n 3: Usar uvicorn directamente
```bash
uvicorn main:app --reload --port 8001
```

## ?? Caracter�sticas Implementadas

- ? **Manejo autom�tico de puertos** - Encuentra puertos disponibles autom�ticamente
- ? **Modo producci�n** - Conecta directamente con Supabase
- ? **Validaci�n de email** - Usa `EmailStr` de Pydantic para validar emails
- ? **Autenticaci�n JWT** - Tokens seguros con expiraci�n configurable
- ? **Integraci�n con Supabase** - Base de datos en la nube (opcional)
- ? **Hashing de contrase�as** - Usando bcrypt para seguridad
- ? **Documentaci�n autom�tica** - Swagger UI en `/docs`
- ? **Manejo de errores mejorado** - Mensajes informativos y soluciones

## ?? Endpoints

- `GET /health` - Verificar estado del servidor
- `POST /register` - Registrar nuevo usuario
- `POST /login` - Iniciar sesi�n
- `GET /me` - Obtener informaci�n del usuario actual

## ??? Soluci�n de Problemas

### Error de Puerto
Si sigues teniendo problemas de puerto:

1. **Cierra otros servidores** que puedan estar usando el puerto
2. **Ejecuta como administrador** si es necesario
3. **Usa un puerto espec�fico:**
   ```bash
   uvicorn main:app --reload --port 8001
   ```

### Error de Dependencias
```bash
pip install --upgrade -r requirements.txt
```

### Error de Variables de Entorno
Aseg�rate de que el archivo `.env` existe y tiene todas las variables necesarias.

## ?? URLs de Acceso

Una vez iniciado el servidor, podr�s acceder a:
- **API**: `http://localhost:PUERTO`
- **Documentaci�n**: `http://localhost:PUERTO/docs`
- **ReDoc**: `http://localhost:PUERTO/redoc`
