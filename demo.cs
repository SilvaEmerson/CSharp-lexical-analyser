using System;

public class Animal
{
   private string raca;

   public Animal(string raca)
   {
      Raca = raca;
   }

   public string Raca
   {
      get { return raca; }
      set { raca = value; }
   }

   public void Respirar()
   {
      // …
   }
}

public class Cachorro : Animal
{
   public Cachorro(string raca) : base(raca) {}
}

public class Application
{
   static void Main()
   {
      Cachorro cachorro = new Cachorro("beagle");

      cachorro.Respirar();
   }
}
