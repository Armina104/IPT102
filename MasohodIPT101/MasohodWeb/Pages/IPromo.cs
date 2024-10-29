namespace MasohodWeb.Pages
{
    public class IPromo
    {
        public IPromo()
        {
            Id = Guid.NewGuid().ToString();
        }

        public string? Name { get; set; }
        public string? Id { get; set; }
        public string? Number { get; set; }

    }
}

