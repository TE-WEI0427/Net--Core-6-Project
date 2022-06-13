namespace NETCore6_CRUD_Test.Models
{
    /// <summary>
    /// 不與DB做交易，簡易的CRUD範例 User模組
    /// </summary>
    public class User
    {
        public int Id { get; set; } 
        public string UserName { get; set; } = String.Empty;
        public string Password { get; set; } = String.Empty;
        public string Email { get; set; } = String.Empty;
    }
}
