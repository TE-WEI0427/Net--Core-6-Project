namespace NETCore6_CRUD_Test.Models
{
    /// <summary>
    /// 寄件模組
    /// </summary>
    public class EmailDTO
    {
        public string To { get; set; } = string.Empty;
        public string Subject { get; set; } = string.Empty;
        public string Body { get; set; } = string.Empty;
    }
}
