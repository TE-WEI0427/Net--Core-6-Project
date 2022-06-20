using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace NETCore6_CRUD_Test.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TaskController : ControllerBase
    {
        /// <summary>
        /// 註冊 userService
        /// </summary>
        private readonly IUserService _userService;

        public TaskController(IUserService userService)
        {
            _userService = userService;
        }

        /// <summary>
        /// DoSomething need Authorize
        /// </summary>
        /// <returns></returns>
        [HttpGet("DoSomething"), Authorize]
        public ActionResult<string> DoSomething()
        {
            var userName = _userService.GetMyName();
            if(userName == "AndyHSU" || userName == "Andy") // 特定使用者權限
                return Ok("DoSomething");
            else 
                return Ok("權限不足");
        }
    }
}
