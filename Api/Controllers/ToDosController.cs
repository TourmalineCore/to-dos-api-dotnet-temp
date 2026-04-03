using Microsoft.AspNetCore.Mvc;

namespace Api.Controllers;

[ApiController]
[Route("api/to-dos")]
public class ToDosController : ControllerBase
{
    [HttpGet]
    public Task<GetToDosResponse> GetToDosAsync()
    {
        return Task.FromResult(
            new GetToDosResponse
            {
                ToDos = new List<ToDoDto>()
            }
        );
    }
}
