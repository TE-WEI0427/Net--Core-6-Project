namespace NETCore6_CRUD_Test.Models
{
    /// <summary>
    /// 寄件模組
    /// </summary>
    public class EmailDTO
    {
        /// <summary>
        /// 對方郵件地址
        /// </summary>
        public string To { get; set; } = string.Empty;
        /// <summary>
        /// 標題
        /// </summary>
        public string Subject { get; set; } = string.Empty;
        /// <summary>
        /// 內容
        /// </summary>
        public string Body { get; set; } = string.Empty;
    }
}
