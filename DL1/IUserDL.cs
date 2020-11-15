
using Entities1.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace DL1
{
   public interface IUserDL
    {
        Task<Users> GetUser(string email, string password);
        Task<Users> GetUserById(int id);
        Task PutUser(Users user);
        Task PostUser(Users user);
        Task deleteUser(int id);
    }
}
