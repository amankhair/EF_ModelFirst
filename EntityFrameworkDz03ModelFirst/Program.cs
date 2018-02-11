using EntityFrameworkDz03ModelFirst.Model;
using System;

namespace EntityFrameworkDz03ModelFirst
{
    class Program
    {
        static void Main(string[] args)
        {
            using (TestDBContainer db = new TestDBContainer())
            {
                University ut = new University();
                ut.Name = "Nazarbayev University";
                ut.City = "Astana";
                ut.Rating = 100;

                db.Universities.Add(ut);
                db.SaveChanges();
                Console.WriteLine("Объект успешно добавлен!");
                Console.WriteLine();

                var data = db.Universities;

                foreach (var it in data)
                {
                    Console.WriteLine("Name: {0}", it.Name);
                    Console.WriteLine("City: {0}", it.City);
                    Console.WriteLine("Rating: {0}", it.Rating);
                }
            }

        }
    }
}
