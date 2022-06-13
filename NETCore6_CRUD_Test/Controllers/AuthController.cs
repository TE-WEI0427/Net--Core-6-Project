using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using NETCore6_CRUD_Test.Classes;

namespace NETCore6_CRUD_Test.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        private static UserHelp userHelp;
        private static AuthHelp authHelp;
        private readonly IUserService _userService;

        public AuthController(IUserService userService)
        {
            userHelp = new UserHelp();
            authHelp = new AuthHelp();
            _userService = userService;
        }

        /// <summary>
        /// 驗證後取得使用者名稱
        /// </summary>
        /// <returns></returns>
        [HttpGet, Authorize]
        public ActionResult<string> GetMe()
        {
            var userName = _userService.GetMyName();
            return Ok(userName);
        }

        /// <summary>
        /// 登入
        /// </summary>
        /// <param name="request">用戶端資料模組</param>
        /// <returns></returns>
        [HttpPost("login")]
        public async Task<ActionResult<ClientAddUserData>> Login(ClientAddUserData request)
        {
            if (request.UserName == null || request.UserName == "") return BadRequest("帳號不可空白");
            if (request.Password == null || request.Password == "") return BadRequest("密碼不可空白");

            switch (userHelp.ChkUsernameIsExist(request.UserName))
            {
                case "True":
                    break;
                case "False":
                    return BadRequest("帳號已不再使用");
                case null:
                    return BadRequest("查無此帳號");
            }

            if (!authHelp.VerifyPasswordHash(request.UserName, request.Password))
                return BadRequest("密碼錯誤");

            if (request.Email != "" && !userHelp.ChkUserEmail(request.UserName, request.Email))
                return BadRequest("信箱錯誤");

            string token = authHelp.CreateToken(request);
            string InsertErrorMessage = userHelp.InsertTokenLog(request.UserName, token);
            if (InsertErrorMessage != "") 
                return BadRequest(InsertErrorMessage);

            return Ok(token);
        }

        /// <summary>
        /// 驗證Token
        /// </summary>
        /// <param name="Token"></param>
        /// <returns></returns>
        [HttpPost("VerifyToken")]
        public async Task<IActionResult> VerifyToken(string Token)
        {
            var result = authHelp.VerifyToken(Token); // return {UserName/Expires}

            if (result == null) return Unauthorized("身分驗證失敗");
            if (result.Contains('/') == false) return BadRequest(result);

            var UserName = result.Split('/')[0];
            var Expires = result.Split('/')[1];

            var now = DateTime.Now;
            if (Convert.ToDateTime(Expires).CompareTo(now) == -1) return Unauthorized("身分有效日期已過期，請重新登入");

            if (UserName == null) return Unauthorized("身分驗證失敗");

            return Ok("使用者名稱 : " + UserName + " | Token到期日 : " + Expires);
        }
    }
}
