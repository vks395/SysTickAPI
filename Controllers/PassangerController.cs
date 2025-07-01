using Microsoft.AspNetCore.Mvc;
using SysTickAPI.Models;
using SysTickAPI.Repos;
using System.Net;

namespace SysTickAPI.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PassangerController : ControllerBase
    {
        private readonly IPassanger _IPassanger;

        public PassangerController(IPassanger passangerService)
        {
            _IPassanger = passangerService;
        }

        // GET: api/<PassangerController>
        [Route("GetallPassangers")]
        [HttpGet]
        public IActionResult GetallPassangers(string name = "")
        {
            try
            {
                var plist = _IPassanger.AllPassanger();
                if (plist == null || plist.Count == 0)
                {
                    return NotFound("No passengers found.");
                }
                return Ok(plist);
            }
            catch (Exception ex)
            {
                return StatusCode((int)HttpStatusCode.InternalServerError, ex.Message);
            }
        }

        // GET api/<PassangerController>/5
        [HttpGet("GetPassangersById/{id}")]
        public IActionResult GetPassangersById(int id)
        {
            try
            {
                var passanger = _IPassanger.retrivePassangerbyId(id);
                if (passanger == null)
                {
                    return NotFound($"Passenger with ID {id} not found.");
                }
                return Ok(passanger);
            }
            catch (Exception ex)
            {
                return StatusCode((int)HttpStatusCode.InternalServerError, ex.Message);
            }
        }

        // POST api/<PassangerController>
        [HttpPost("AddPassagners")]
        public IActionResult Post([FromBody] Passanger p)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            try
            {
                var status = _IPassanger.addPassanger(p);
                if (status)
                {
                    return Ok("success");
                }
                return BadRequest("unsuccessful!");
            }
            catch (Exception ex)
            {
                return StatusCode((int)HttpStatusCode.InternalServerError, ex.Message);
            }
        }

        // PUT api/<PassangerController>/5
        [HttpPut("GetPassangersUpdateById/{id}")]
        public IActionResult Put(int id, [FromBody] Passanger p)
        {
            if (!ModelState.IsValid)
                return BadRequest(ModelState);

            if (id != p.Id)
                return BadRequest("ID mismatch.");

            try
            {
                var status = _IPassanger.updatePassanger(p);
                if (status)
                {
                    return Ok("success");
                }
                return BadRequest("unsuccessful!");
            }
            catch (Exception ex)
            {
                return StatusCode((int)HttpStatusCode.InternalServerError, ex.Message);
            }
        }

        // DELETE api/<PassangerController>/5
        [HttpDelete("GetPassangersDeleteById/{id}")]
        public IActionResult Delete(int id)
        {
            try
            {
                var status = _IPassanger.deletePassanger(id);
                if (status)
                {
                    return Ok("success");
                }
                return BadRequest("unsuccessful!");
            }
            catch (Exception ex)
            {
                return StatusCode((int)HttpStatusCode.InternalServerError, ex.Message);
            }
        }
    }
}
