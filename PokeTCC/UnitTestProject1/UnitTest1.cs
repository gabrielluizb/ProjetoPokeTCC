using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using prjDto;

namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void pokemonResult()
        {
            DtoPokemon dpoke = new DtoPokemon(944,"#006","Voldrazal",3,"Fire",18,"Dragon");
            Assert.IsNotNull(dpoke.NumPokedex);
            Assert.IsNotNull(dpoke.Nome);
            Assert.AreNotEqual(dpoke.IdTipo, dpoke.IdTipo2);
        }
        [TestMethod]
        public void tipoResult()
        {
            DtoTipo dtipo = new DtoTipo(20,null);
            Assert.IsNotNull(dtipo.Nome);
        }
    }
}
