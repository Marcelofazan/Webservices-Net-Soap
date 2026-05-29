using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace exemploProvedorSOAP
{
    public class Pessoa
    {

        public Guid IdPessoa { get; set; }
        public string Nome { get; set; }

        // Força o minOccurs="1" e IsNullable="false" no WSDL
        [XmlElement(IsNullable = false)]
        public string Email { get; set; }
        public string Senha { get; set; }

    }
}