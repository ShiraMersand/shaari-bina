
using Entities1.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace DL1
{
    public interface IVideoDL
    {
        Task<List<Videos>> getAllVideo();
        Task<Videos> getVideoById(int id);
        Task putVideo(Videos Video);
        Task postVideo(Videos Video);
        Task deleteVideo(int Id);
    }
}
