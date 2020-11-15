
using Entities1.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace DL1
{
   public interface ILocationDL
    {
        Task<List<Locations>> getLocationList();
        Task<Locations> getLocationById(int LocationId);
        Task PutLocation(Locations Location);
        Task PostLocation(Locations Location);
        Task deleteLocation(int locationId);
    }
}
