using System.Text.Json.Serialization;

namespace NETCore6_CRUD_Test.Models
{
    /// <summary>
    /// 與DB做資料傳輸的User模組
    /// </summary>
    public class UserDTO
    {
        public int Id { get; set; } // If id is PK
        public string UserName { get; set; } = String.Empty;
        public string Password { get; set; } = String.Empty;
        /// <summary>
        /// Schema 隱藏欄位 密碼雜湊值
        /// </summary>
        [JsonIgnore]
        public byte[]? PasswordHash { get; set; }
        /// <summary>
        /// Schema 隱藏欄位 密碼鹽值
        /// </summary>
        [JsonIgnore]
        public byte[]? PasswordSalt { get; set; }
        public string Email { get; set; } = String.Empty;
        public bool IsUse { get; set; }
    }
}
