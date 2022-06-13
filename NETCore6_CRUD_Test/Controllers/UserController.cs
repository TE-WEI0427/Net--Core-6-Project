using Microsoft.AspNetCore.Mvc;

namespace NETCore6_CRUD_Test.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        /// <summary>
        /// 模擬DB資料
        /// </summary>
        private static List<User> users = new List<User>()
            {
                new User()
                {
                    Id = 1,
                    UserName = "AndyHSU",
                    Password = "Z043",
                    Email = "andyhsu@zhtech.com.tw"
                },
                new User()
                {
                    Id = 2,
                    UserName = "ZhTech",
                    Password = "24369238",
                    Email = "zhtech@zhtech.com.tw"
                }
            };

        /// <summary>
        /// 取得所有使用者資料
        /// </summary>
        /// <returns></returns>
        [HttpGet("GetUsers")]
        public async Task<ActionResult<List<User>>> GetUsers()
        {
            return Ok(users);
        }

        /// <summary>
        /// 取得指定id的使用者資料
        /// </summary>
        /// <param name="id">使用者編號</param>
        /// <returns></returns>
        [HttpGet("GetUser")]
        public async Task<ActionResult<List<User>>> GetUser(int id)
        {
            var user = users.Find(u => u.Id == id); // by pk find data
            if(user == null)
                return BadRequest("Not Found User."); // http 400

            return Ok(user); // http 200
        }

        /// <summary>
        /// 新增使用者
        /// </summary>
        /// <param name="request">使用者模組</param>
        /// <returns></returns>
        [HttpPost("AddUser")]
        public async Task<ActionResult<User>> AddUser(User request)
        {
            var chkPassword = users.Find(u => u.Password==request.Password ); // check password is exist
            if (chkPassword != null)
                return BadRequest("Password is exist.");

            users.Add(request);

            return Ok(users);
        }

        /// <summary>
        /// 更新使用者資料
        /// </summary>
        /// <param name="request">使用者模組</param>
        /// <returns></returns>
        [HttpPut("UpdateUser")]
        public async Task<ActionResult<User>> UpdateUser(User request)
        {
            var user = users.Find(u => u.Id == request.Id);
            if (user == null)
                return BadRequest("Not Found User.");

            user.UserName = request.UserName;
            user.Password = request.Password;
            user.Email = request.Email;

            return Ok(users);
        }

        /// <summary>
        /// 刪除使用者
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpDelete("DeleteUser")]
        public async Task<ActionResult<User>> DeleteUser(int id)
        {
            var user = users.Find(u => u.Id == id);
            if (user == null)
                return BadRequest("Not Found User."); 

            users.Remove(user); // 刪除對應資料

            return Ok(users); 
        }

    }
}
