class DatabaseHelper{

      initDB() async{
         String databasePath = await getDatabasesPath();
         String path = join(databasePath, "usuarios".db)

         var db = await openDatabase(
         path,
         version: 1,
         onCreate: _onCreate,
         );

         return db;
      }

      FutureOr<void>_onCreate( database db, int version){
         
          String sql = 'CREATE TABLE usuarios (
          id INT PRIMARY KEY AUTO_INCREMENT, 
          nome VARCHAR(200), 
          cpf VARCHAR(14), 
          email VARCHAR(100), 
          cidade VARCHAR(100),
          uf VARCHAR(2),
          data_nascimento VARCHAR(10),
          sexo VARCHAR(20),
          senha VARCHAR(50),
          numero_cartao_sus INT
          );'
          ;
          await db.execute(sql);


          sql = 'CREATE TABLE agendamento(
          id_agendamento INT PRIMARY KEY AUTO_INCREMENT, 
          local VARCHAR(100),
          dia VARCHAR(20),
          horario VARCHAR(20)
          id_usuario INT,
          CONSTRAINT fk_usuario_agenda FOREIGN KEY(id_usuario) REFERENCES usuarios(id)
          );'
          await db.execute(sql);

      }
 } 

