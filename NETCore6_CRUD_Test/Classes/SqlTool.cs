using System.Data;
using System.Data.SqlClient;

namespace NETCore6_CRUD_Test.Classes
{
    public class SqlTool
    {
        private static string _StrConnection;

        public SqlTool()
        {
            // Get Connect String
            _StrConnection = GlobalSystemVar.StrConnection1;
        }

        /// <summary>
        /// 開啟sql連線
        /// </summary>
        /// <param name="StrConnection">連線字串</param>
        /// <returns></returns>
        private static SqlConnection OpenSqlConn(string StrConnection)
        {
            SqlConnection cnn = new SqlConnection
            {
                ConnectionString = StrConnection
            };

            if (cnn.State == ConnectionState.Open) cnn.Close();

            cnn.Open();

            return cnn;
        }

        /// <summary>
        /// 取得回傳Table(單個資料表)
        /// </summary>
        /// <param name="sql">SQL語句</param>
        /// <returns></returns>
        public DataTable GetSqlDataTable(string sql)
        {
            SqlConnection cnn = OpenSqlConn(_StrConnection);

            SqlDataAdapter da = new SqlDataAdapter(sql, cnn);

            DataTable dt = new DataTable();

            dt.Clear();

            da.Fill(dt);

            if (cnn.State == ConnectionState.Open) cnn.Close();

            return dt;
        }

        /// <summary>
        /// 取得(單)多個表資料
        /// </summary>
        /// <param name="sql">SQL語句</param>
        /// <returns></returns>
        public DataSet GetSqlDataSet(string sql)
        {
            SqlConnection cnn = OpenSqlConn(_StrConnection);

            SqlDataAdapter da = new SqlDataAdapter(sql, cnn);

            DataSet ds = new DataSet();

            ds.Clear();

            da.Fill(ds);

            if (cnn.State == ConnectionState.Open) cnn.Close();

            return ds;
        }

        /// <summary>
        /// 更新或刪除
        /// </summary>
        /// <param name="sql">SQL語句</param>
        /// <returns></returns>
        public string SqlInsertUpdateDelete(string sql)
        {
            SqlConnection cnn = OpenSqlConn(_StrConnection);

            SqlCommand cmd = new SqlCommand(sql, cnn);

            SqlTransaction transaction = cnn.BeginTransaction();

            try
            {
                cmd.Transaction = transaction;
                cmd.ExecuteNonQuery();
                transaction.Commit();
            }
            catch (Exception ex)
            {
                transaction.Rollback();
                return ex.Message;
            }
            if (cnn.State == ConnectionState.Open) cnn.Close();

            return "";
        }
    }
}
