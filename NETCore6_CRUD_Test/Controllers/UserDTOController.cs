using Microsoft.AspNetCore.Mvc;
using NETCore6_CRUD_Test.Classes;
using Newtonsoft.Json;

namespace NETCore6_CRUD_Test.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserDTOController : ControllerBase
    {
        private static UserDTO userDTO = new();
        private static UserHelp userHelp;

        //string resultCode = "10";
        string errStr = "";

        public UserDTOController()
        {
            userHelp = new UserHelp();
        }

        /// <summary>
        /// 取得所有使用者資料
        /// </summary>
        /// <returns></returns>
        [HttpGet("GetUsers")]
        public IActionResult GetUsers()
        {
            return Ok(JsonConvert.SerializeObject(userHelp.GetUsersTable(), Formatting.Indented));
        }

        /// <summary>
        /// by id 取得使用者資料
        /// </summary>
        /// <param name="id">使用者編號</param>
        /// <returns></returns>
        [HttpGet("GetUser")]
        public IActionResult GetUser(int id)
        {
            if (!userHelp.ChkId(id))
                return BadRequest("Not Found Id."); // http 400

            return Ok(JsonConvert.SerializeObject(userHelp.GetUserTableById(id), Formatting.Indented)); // http 200
        }

        /// <summary>
        /// 新增使用者
        /// </summary>
        /// <param name="request">用戶端資料模組</param>
        /// <returns></returns>
        [HttpPost("AddUser")] // Register
        public async Task<ActionResult<ClientAddUserData>> AddUser(ClientAddUserData request)
        {
            if (userHelp.ChkUsernameIsExist(request.UserName) != null)
                return BadRequest("UserName is exist.");

            userHelp.CreatePaswwordHash(request.Password, out byte[] passwordHash, out byte[] passwordSalt);

            userDTO.UserName = request.UserName;
            userDTO.Password = request.Password;
            userDTO.Email = request.Email;
            userDTO.PasswordHash = passwordHash;
            userDTO.PasswordSalt = passwordSalt;   

            errStr = userHelp.InsertUserData(userDTO);
            if (errStr != "") return BadRequest(errStr);

            return Ok(JsonConvert.SerializeObject(userHelp.GetUsersTable(), Formatting.Indented));
        }

        /// <summary>
        /// 更新使用者資料
        /// </summary>
        /// <param name="request">使用者資料模組</param>
        /// <returns></returns>
        [HttpPut("UpdateUser")]
        public async Task<ActionResult<UserDTO>> UpdateUser(UserDTO request)
        {
            if (!userHelp.ChkId(request.Id))
                return BadRequest("Not Found Id.");

            if (userHelp.ChkUsernameIsExistById(request.Id, request.UserName))
                return BadRequest("UserName is exist.");

            userHelp.CreatePaswwordHash(request.Password, out byte[] passwordHash, out byte[] passwordSalt);

            request.PasswordHash = passwordHash;
            request.PasswordSalt = passwordSalt;

            errStr = userHelp.UpdateUserData(request);
            if (errStr != "") return BadRequest(errStr);

            return Ok(JsonConvert.SerializeObject(userHelp.GetUsersTable(), Formatting.Indented));
        }

        /// <summary>
        /// 刪除使用者
        /// </summary>
        /// <param name="id">使用者編號</param>
        /// <returns></returns>
        [HttpDelete("DeleteUser")]
        public async Task<ActionResult<UserDTO>> DeleteUser(int id)
        {
            if (!userHelp.ChkId(id))
                return BadRequest("Not Found Id.");

            errStr = userHelp.DeleteUserData(id);
            if (errStr != "") return BadRequest(errStr);

            return Ok(JsonConvert.SerializeObject(userHelp.GetUsersTable(), Formatting.Indented));
        }
    }
}
