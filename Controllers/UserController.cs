using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BL2;
using Entities1.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        IUserBL _iUserBl;


        public UserController(IUserBL iUserBl)
        {
            _iUserBl = iUserBl;
        }

        [Route("GetByEmail")]
        [HttpGet]
        public async Task<Users> GetUser(string email, string password)
        {

            return await _iUserBl.getUser(email, password);
        }

        [Route("GetById")]
        [HttpGet]
        public async Task<Users> GetUserById(int id)
        {

            return await _iUserBl.GetUserById(id);
        }




        [HttpPost]

        public void postuser([FromBody] Users user)
        {
            _iUserBl.postUser(user);
        }

        // PUT: api/My/5
        [HttpPut]
        public void Put([FromBody] Users userToUpdate)
        {
            _iUserBl.putUser(userToUpdate);
        }

        //// DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
            _iUserBl.deleteUser(id);
        }
    }
}
