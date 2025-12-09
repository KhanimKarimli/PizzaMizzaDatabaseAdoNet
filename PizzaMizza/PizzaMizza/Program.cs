using PizzaMizza.Models;
using System;


//Consolda 1 daxil ediləndə bütün pizzalar ekrana çıxmalıdı.
//Pizzanın Id - si,
//Pizzanın adı ,
//Tipi,
//Qiyməti.

//Pizzaların siyahısı çıxandan sonra:
//"Pizza haqqında ətraflı məlumat almaq istəyirsizsə pizzanın İd -sini ,istəmirsizə 0 daxil edin" - Mesajı çıxsın.
//İd->daxil edildikdə həmin İd -yə uyğun pizzanın:
//         İngredientləri
//		 Ardınca, hər ölçü üçün qiymətləri consola çıxsın
//0 -> daxil edildikdə əsas menyuya geri dönsün



Pizza pizza =new Pizza();

Console.WriteLine("----Pizza Mizza----");
Console.WriteLine("1. Pizzalara bax");
Console.WriteLine("2. Pizza sifarish et");
Console.WriteLine("Sechim daxil edin:");
string secim = Console.ReadLine();
switch (secim)
{ 
	case "1":
		pizza.GetAllPizzaInfo();
		bool secim2 = true;
		while (secim2)
		{
			Console.WriteLine("Pizza haqqında ətraflı məlumat almaq istəyirsizsə pizzanın İd -sini ,istəmirsizə 0 daxil edin");
			int secim1 = int.Parse(Console.ReadLine());
			if (secim1==0)
			{
				secim2=false;
				break;
			}
			else
				pizza.GetPizzaInfo(secim1);
		}
		break;
}


