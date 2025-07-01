using SysTickAPI.AppDbContext;
using SysTickAPI.Models;

namespace SysTickAPI.Repos
{
    public class PassangerRepository : IPassanger
    {
    
       private  readonly TicketBookingdbContext _ticketBookingdbContext;
        public PassangerRepository(TicketBookingdbContext db)
        {
            _ticketBookingdbContext= db;
        }
        public bool addPassanger(Passanger p)
        {
            bool status = false;
            try
            {
                var Passanger = new Passanger
                {
                    FirstName = p.FirstName,
                    LastName = p.LastName,
                    DateOfBirth = p.DateOfBirth,
                    Height = p.Height,
                    Weight = p.Weight,
                    Gender = p.Gender,
                    State = p.State,
                    Pincode = p.Pincode,
                    Address = p.Address,
                    Country = p.Country,
                    MobileNo = p.MobileNo
                };

                //Add the p into context object using DbSet Property and Add method
                _ticketBookingdbContext.Passangers.Add(Passanger);
                //Call the SaveChanges method to make the changes Permanent into the Database
                _ticketBookingdbContext.SaveChanges();
                status = true;
            }
            catch (Exception ex)
            {
                status = false;
            }
           
           
            return status;
        }
        public List<Passanger> AllPassanger()
        {
            return _ticketBookingdbContext.Passangers.ToList();
        }

        public bool deletePassanger(int id)
        { 
            bool status = false;
            
            var deleteobj=  _ticketBookingdbContext.Passangers.FirstOrDefault(m => m.Id == id);
            if (deleteobj !=null )
            {
                _ticketBookingdbContext.Passangers.Remove(deleteobj);
                _ticketBookingdbContext.SaveChanges();
                status = true;
            }
          return (status);
           

        }

        public Passanger retrivePassangerbyId(int id)
        {
            var passager=new Passanger();
            var passagerobj = _ticketBookingdbContext.Passangers.FirstOrDefault(m => m.Id == id);
            return passagerobj == null ? passager : passagerobj;
        }

        public bool updatePassanger(Passanger p)
        {
            bool status = false;

            var deleteobj = _ticketBookingdbContext.Passangers.FirstOrDefault(m => m.Id == p.Id);
            if (deleteobj != null)
            {
                _ticketBookingdbContext.Passangers.Update(p);
                _ticketBookingdbContext.SaveChanges();
                status = true;
            }
            return (status);
        }
    }
}
