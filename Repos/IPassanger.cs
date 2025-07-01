using SysTickAPI.Models;

namespace SysTickAPI.Repos
{
    public interface IPassanger
    {
        public bool addPassanger(Passanger p);
        public List<Passanger> AllPassanger();
        public Passanger retrivePassangerbyId(int id);
        public bool deletePassanger(int id);
        public bool updatePassanger(Passanger p);
    }
}
