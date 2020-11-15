using System.Collections.Generic;
using System.Threading.Tasks;

using BL2;
using Entities1.Models;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LocationController : ControllerBase
    {

        ILocationBL _locationBl;

        public LocationController(ILocationBL locationBl)
        {
            this._locationBl = locationBl;
        }

        [HttpGet("{id}")]
        public async Task<Locations> getLocationById(int LocationId)
        {
            return await _locationBl.getLocationById(LocationId);
        }
        [HttpGet]
        public async Task<List<Locations>> getLocation()
        {
            return await _locationBl.getLocationList();
        }

    }
}
