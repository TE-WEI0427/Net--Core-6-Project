using System.Data;
using System.Security.Cryptography;
using System.Text;

namespace NETCore6_CRUD_Test.Classes
{
    public class UserHelp
    {
        readonly StringBuilder strSql = new(200);
        readonly SqlTool sqltool;

        public UserHelp()
        {
            sqltool = new SqlTool();
        }

        /// <summary>
        /// 查詢所有使用者
        /// </summary>
        /// <returns></returns>
        public DataTable GetUsersTable()
        {
            strSql.Clear();
            strSql.Append(" SELECT Id, UserName, Email, CASE isUse WHEN 1 THEN '使用中' ELSE '不再使用' END AS isUse FROM [User] ");

            return sqltool.GetSqlDataTable(strSql.ToString());
        }

        /// <summary>
        /// 在查詢、修改及刪除時確認該編號是否存在
        /// </summary>
        /// <param name="Id">編號</param>
        /// <returns></returns>
        public bool ChkId(int Id)
        {
            strSql.Clear();
            strSql.Append(" SELECT COUNT(*) AS UserCount FROM [User] WHERE Id=" + Id.ToString() + " ");
            DataTable tbl_QueryTable = sqltool.GetSqlDataTable(strSql.ToString());

            return tbl_QueryTable.Rows[0]["UserCount"].ToString() != "0" ? true : false;
        }

        /// <summary>
        /// 依編號查詢特定使用者的所有資訊
        /// </summary>
        /// <param name="id">編號</param>
        /// <returns></returns>
        public DataTable GetUserTableById(int Id)
        {
            strSql.Clear();
            strSql.Append(" SELECT Id, UserName, Password, PasswordHash, PasswordSalt, Email, CASE isUse WHEN 1 THEN '使用中' ELSE '不再使用' END AS isUse, ");
            strSql.Append(" CreateTime, ActTime FROM [User] WHERE Id=" + Id.ToString());

            return sqltool.GetSqlDataTable(strSql.ToString());
        }

        /// <summary>
        /// 新增時，檢查使用者名稱(帳號)是否已存在
        /// </summary>
        /// <param name="Username">使用者名稱</param>
        /// <returns></returns>
        public string ChkUsernameIsExist(string UserName)
        {
            strSql.Clear();
            strSql.Append(" SELECT isUse FROM [User] WHERE Username='" + UserName + "' ");
            DataTable tbl_QueryTable = sqltool.GetSqlDataTable(strSql.ToString());

            if (tbl_QueryTable.Rows.Count > 0)
            {
                return tbl_QueryTable.Rows[0]["isUse"].ToString();
            }
            else
            {
                return null;
            }
        }

        /// <summary>
        /// 登入時，檢查使用者的信箱是否正確
        /// </summary>
        /// <param name="Username">使用者名稱</param>
        /// <param name="Email">信箱</param>
        /// <returns></returns>
        public bool ChkUserEmail(string UserName, string Email)
        {
            strSql.Clear();
            strSql.Append(" SELECT COUNT(*) AS UserCount FROM [USER] WHERE UserName='" + UserName + "' AND Email='" + Email + "' ");
            DataTable tbl_QueryTable = sqltool.GetSqlDataTable(strSql.ToString());

            return tbl_QueryTable.Rows[0]["UserCount"].ToString() != "0" ? true : false;
        }

        /// <summary>
        /// 修改時，依編號，檢查使用者名稱(帳號)是否已存在
        /// </summary>
        /// <param name="Id">編號</param>
        /// <param name="Username">使用者名稱</param>
        /// <returns></returns>
        public bool ChkUsernameIsExistById(int Id, string UserName)
        {
            strSql.Clear();
            strSql.Append(" SELECT COUNT(*) AS UserCount FROM [User] WHERE Username='" + UserName + "' AND Id!=" + Id.ToString() + " ");
            DataTable tbl_QueryTable = sqltool.GetSqlDataTable(strSql.ToString());

            return tbl_QueryTable.Rows[0]["UserCount"].ToString() != "0" ? true : false;
        }

        /// <summary>
        /// 新增使用者資料
        /// </summary>
        /// <param name="userDTO">使用者資料模組</param>
        /// <returns></returns>
        public string InsertUserData(UserDTO userDTO)
        {
            strSql.Clear();
            strSql.Append(" INSERT INTO [User] (UserName, Password, PasswordHash, PasswordSalt, Email, IsUse) ");
            strSql.Append(" VALUES ('" + userDTO.UserName + "', '" + userDTO.Password + "', '" + Convert.ToBase64String(userDTO.PasswordHash) + "', '" + Convert.ToBase64String(userDTO.PasswordSalt) + "', '" + userDTO.Email + "', '1') ");
            return sqltool.SqlInsertUpdateDelete(strSql.ToString());
        }

        /// <summary>
        /// 更新使用者資料
        /// </summary>
        /// <param name="userDTO">使用者資料模組</param>
        /// <returns></returns>
        public string UpdateUserData(UserDTO userDTO)
        {
            strSql.Clear();
            strSql.Append("UPDATE [User] SET Username='" + userDTO.UserName + "', Password='" + userDTO.Password + "', PasswordHash='" + Convert.ToBase64String(userDTO.PasswordHash) + "', PasswordSalt='" + Convert.ToBase64String(userDTO.PasswordSalt) + "', ");
            strSql.Append(" Email='" + userDTO.Email + "', IsUse='" + userDTO.IsUse.ToString() + "', ActTime=GETDATE() WHERE Id=" + userDTO.Id.ToString());
            return sqltool.SqlInsertUpdateDelete(strSql.ToString());
        }

        /// <summary>
        /// 更改使用者狀態為不再使用
        /// </summary>
        /// <param name="id">編號</param>
        /// <returns></returns>
        public string DeleteUserData(int Id)
        {
            strSql.Clear();
            strSql.Append(" UPDATE [User] SET IsUse=0, ActTime=GETDATE() WHERE Id=" + Id.ToString() + " ");

            return sqltool.SqlInsertUpdateDelete(strSql.ToString());
        }

        /// <summary>
        /// 創建密碼的雜湊與鹽值
        /// </summary>
        /// <param name="passeord"></param>
        /// <param name="passwordHash"></param>
        /// <param name="passwordSalt"></param>
        public void CreatePaswwordHash(string Passeord, out byte[] PasswordHash, out byte[] PasswordSalt)
        {
            using (var hmac = new HMACSHA512())
            {
                PasswordSalt = hmac.Key;
                PasswordHash = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(Passeord));
            }
        }

        /// <summary>
        /// 取得鹽值密碼
        /// </summary>
        /// <param name="UserName">使用者名稱</param>
        /// <returns></returns>
        public string GETUserPasswordSalt(string UserName)
        {
            strSql.Clear();
            strSql.Append(" SELECT PassWordSalt FROM [User] WHERE UserName='" + UserName + "' ");
            DataTable tbl_QueryTable = sqltool.GetSqlDataTable(strSql.ToString());

            if (tbl_QueryTable.Rows.Count == 0) return "";

            if (tbl_QueryTable.Rows[0]["PassWordSalt"] == null)
            {
                return "";
            }
            else
            {
                return tbl_QueryTable.Rows[0]["PassWordSalt"].ToString();
            }
        }

        /// <summary>
        /// 取得雜湊密碼
        /// </summary>
        /// <param name="UserName">使用者名稱</param>
        /// <returns></returns>
        public string GETUserPasswordHash(string UserName)
        {
            strSql.Clear();
            strSql.Append(" SELECT PassWordHash FROM [User] WHERE UserName='" + UserName + "' ");
            DataTable tbl_QueryTable = sqltool.GetSqlDataTable(strSql.ToString());

            if (tbl_QueryTable.Rows.Count == 0) return "";

            if (tbl_QueryTable.Rows[0]["PassWordHash"] == null)
            {
                return "";
            }
            else
            {
                return tbl_QueryTable.Rows[0]["PassWordHash"].ToString();
            }
        }

        /// <summary>
        /// 寫入Token到資料庫
        /// </summary>
        /// <param name="UserName">使用者名稱</param>
        /// <param name="Token"></param>
        /// <returns></returns>
        public string InsertTokenLog(string UserName, string Token)
        {
            strSql.Clear();
            strSql.Append(" INSERT INTO UserToken (UserName, Token) VALUES ('" + UserName + "','" + Token + "') ");
            return sqltool.SqlInsertUpdateDelete(strSql.ToString());
        }
    }
}
