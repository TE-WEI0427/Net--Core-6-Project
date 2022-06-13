using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Security.Cryptography;

namespace NETCore6_CRUD_Test.Classes
{
    public class AuthHelp
    {
        private static UserHelp userHelp;

        public AuthHelp()
        {
            userHelp = new UserHelp();
        }

        /// <summary>
        /// 登入時 驗證密碼
        /// </summary>
        /// <param name="UserName">使用者名稱</param>
        /// <returns></returns>
        public bool VerifyPasswordHash(string UserName, string Password)
        {
            byte[] PasswordSalt = Convert.FromBase64String(userHelp.GETUserPasswordSalt(UserName));
            byte[] PasswordHash = Convert.FromBase64String(userHelp.GETUserPasswordHash(UserName));

            using (var hmac = new HMACSHA512(PasswordSalt))
            {
                var computedHash = hmac.ComputeHash(System.Text.Encoding.UTF8.GetBytes(Password));
                return computedHash.SequenceEqual(PasswordHash);
            }
        }

        /// <summary>
        /// 創建Token
        /// </summary>
        /// <param name="request">用戶端資料模組</param>
        /// <returns></returns>
        public string CreateToken(ClientAddUserData request)
        {
            List<Claim> claims = new List<Claim>();

            // 要加入 token 的資料
            claims.Add(new Claim(ClaimTypes.Name, request.UserName));
            if (request.Email != "")
            {
                claims.Add(new Claim(ClaimTypes.Email, request.Email));
            }
            claims.Add(new Claim(ClaimTypes.Expired, DateTime.Now.AddDays(1).ToString("yyyy-MM-dd HH:mm:ss.ss")));

            var key = new SymmetricSecurityKey(System.Text.Encoding.UTF8.GetBytes(GlobalSystemVar.SecretKey));

            var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha512Signature);

            var token = new JwtSecurityToken(
                claims: claims,
                expires: DateTime.Now.AddDays(1),
                signingCredentials: creds
                );

            var jwt = new JwtSecurityTokenHandler().WriteToken(token);

            return jwt;
        }

        /// <summary>
        /// 驗證Token
        /// </summary>
        /// <param name="Token">Token</param>
        /// <returns>UserName/Expires</returns>
        public string VerifyToken(string Token)
        {
            if (Token == null)
                return null;

            var tokenHandler = new JwtSecurityTokenHandler();

            var key = new SymmetricSecurityKey(System.Text.Encoding.UTF8.GetBytes(GlobalSystemVar.SecretKey));

            try
            {
                tokenHandler.ValidateToken(Token, new TokenValidationParameters
                {
                    ValidateIssuerSigningKey = true,
                    IssuerSigningKey = key,
                    ValidateIssuer = false,
                    ValidateAudience = false,
                    // set clockskew to zero so tokens expire exactly at token expiration time (instead of 5 minutes later)
                    ClockSkew = TimeSpan.Zero,
                }, out SecurityToken validatedToken);

                var jwtToken = (JwtSecurityToken)validatedToken;
                var UserName = jwtToken.Claims.First(x => x.Type == ClaimTypes.Name).Value;
                //var Email = jwtToken.Claims.First(x => x.Type == ClaimTypes.Email).Value;
                var Expires = jwtToken.Claims.First(x => x.Type == ClaimTypes.Expired).Value;

                return UserName + "/" + Expires;
            }
            catch(Exception ex)
            {
                if (ex.Message.Contains("IDX10223"))
                {
                    return "Token 已過期";
                }
                else
                {
                    return null;
                }
            }
        }
    }
}
