using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BL2;
using Entities1.Models;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class VideoController : ControllerBase
    {
        IVideoBL _ivideoBL;


        public VideoController(IVideoBL ivideoBL)
        {
            _ivideoBL = ivideoBL;
        }

        //GET api/<VideoController>/5
        [Route("GetById")]
        public async Task<Videos> GetById([FromBody] int id)
        {
            return await _ivideoBL.getVideoById(id);
        }

        [Route("GetAll")]
        public async Task<List<Videos>> Get()
        {
             return await _ivideoBL.getAllVideo();
        }

        // POST api/<VideoController>
        [HttpPost]
        public void Post([FromBody] Videos video)
        {
            _ivideoBL.postVideo(video);
        }

        // PUT api/<VideoController>/5
        [HttpPut]
        public async Task Put([FromBody] Videos video)
        {
            await _ivideoBL.putVideo(video);
        }

        // DELETE api/<VideoController>/5
        [HttpDelete("{id}")]
        public async Task Delete(int id)
        {
            await _ivideoBL.deleteVideo(id);
        }
    }
}
