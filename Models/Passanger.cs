using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SysTickAPI.Models
{
    public class Passanger
    {
        [Key]
        public int Id { get; set; }
        public string? FirstName { get; set; }
        public string? LastName { get; set; }
        public DateTime? DateOfBirth { get; set; }
        [Column(TypeName = "decimal(18,4)")]
        public decimal Height { get; set; }
        [Column(TypeName = "decimal(18,4)")]
        public float? Weight { get; set; }
        public long MobileNo { get; set; }
        public string? State { get; set; }
        public string? Country { get; set; }
        public string? Pincode { get; set; }
        public string? Address { get; set; }
        public string? Gender { get; set; }    

    }
}
