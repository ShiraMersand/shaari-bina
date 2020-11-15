
using Entities1.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DL1
{
   public class LocationDL:ILocationDL
    {
        SR_projectContext _sR_projectContext;
        public LocationDL(SR_projectContext sR_projectContext)
        {
            _sR_projectContext = sR_projectContext;

        }

        public async Task deleteLocation(int locationId)
        {
            Locations LocationsToDelete = await _sR_projectContext.Locations.Where(l =>
                   l.LocationId == locationId)
                      .FirstOrDefaultAsync();

            _sR_projectContext.Locations.Remove(LocationsToDelete);
            _sR_projectContext.SaveChanges();
        }

        public async Task<Locations> getLocationById(int LocationId)
        {
            return await _sR_projectContext.Locations.Where(l =>
                l.LocationId == LocationId)
                    .FirstOrDefaultAsync();
        }

        public async Task<List<Locations>> getLocationList()
        {
            return await _sR_projectContext.Locations.ToListAsync();
        }

        public async Task PostLocation(Locations Location)
        {
            await _sR_projectContext.Locations.AddAsync(Location);
            await _sR_projectContext.SaveChangesAsync();
        }

        public async Task PutLocation(Locations location)
        {
            Locations LocationToChange = _sR_projectContext.Locations.Find(location.LocationId);
            if (LocationToChange != null)
            {
                try
                {
                    _sR_projectContext.Entry(LocationToChange).CurrentValues.SetValues(location);
                    await _sR_projectContext.SaveChangesAsync();
                }
                catch (Exception)
                {

                    throw;
                }

            }
        }
    }
}
