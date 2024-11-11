using Bogus;
using API.Models;

namespace API.Data
{
    public static class DbSeeder
    {
        public static void Seed(AppDbContext context)
        {
            if (!context.Users.Any())
            {
                var faker = new Faker<User>("es")
                    .RuleFor(u => u.Name, f => f.Name.FullName())
                    .RuleFor(u => u.Email, f => f.Internet.Email());

                var users = faker.Generate(500);

                context.Users.AddRange(users);
                context.SaveChanges();
            }
        }
    }
}
