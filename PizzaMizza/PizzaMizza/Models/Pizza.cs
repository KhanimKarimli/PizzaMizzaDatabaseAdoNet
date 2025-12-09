using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Text;

namespace PizzaMizza.Models
{
	public class Pizza
	{
		public void GetAllPizzaInfo()
		{
			string connectionString = @"Server=DESKTOP-VMH1DD7\SQLEXPRESS;Initial Catalog=PizzaMizzaDB;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Application Name=""SQL Server Management Studio"";Command Timeout=0";

			using (SqlConnection connection = new SqlConnection(connectionString))
			{
				connection.Open();

				string query = "SELECT p.Id, p.Name, s.Name, pr.Price FROM Pizzas p inner join Prices pr on p.Id=pr.PizzaId  inner join Sizes s on s.Id=pr.SizeId ";

				using (SqlCommand command = new SqlCommand(query, connection))
				{
					using (SqlDataReader reader = command.ExecuteReader())
					{
						while (reader.Read())
						{
							int id = reader.GetInt32(0);
							string name = reader.GetString(1);
							string Size = reader.GetString(2);
							decimal Price = reader.GetDecimal(3);
							Console.WriteLine($"ID: {id}, Name: {name}, Size: {Size}, Price: {Price}");
						}
					}
				}
			}
		}


		public void GetPizzaInfo(int ID)
		{
			string connectionString = @"Server=DESKTOP-VMH1DD7\SQLEXPRESS;Initial Catalog=PizzaMizzaDB;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=True;Application Name=""SQL Server Management Studio"";Command Timeout=0";

			using (SqlConnection connection = new SqlConnection(connectionString))
			{
				connection.Open();

				string query = $"SELECT I.Name FROM Pizzas P JOIN PizzaIngredients PI ON P.Id=PI.PizzaId JOIN Ingredients I ON I.Id=PI.IngredientId where P.Id={ID} ";

				using (SqlCommand command = new SqlCommand(query, connection))
				{
					using (SqlDataReader reader = command.ExecuteReader())
					{
						Console.WriteLine("Inqridentler:");
						while (reader.Read())
						{
							string name = reader.GetString(0);
							Console.WriteLine(name);
						}
					}
				}
			}
		}
	}
}






