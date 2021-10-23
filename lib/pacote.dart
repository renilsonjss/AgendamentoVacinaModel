class PacoteDao {
		carregarPacotes(){
      databaseHelper databaseHelper = databaseHelper();
      Database db = await databaseHelper.db;

String sql = ‘comando sql’;

final result = db.rawQuery(sql);


		}
}

