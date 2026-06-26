## 🌐 Webservices-Integracao-Net-Soap
Exemplo de integração SOAP WebServices em C# .NET e banco de dados SQL-Server.

## 📁 Soap-Provedor-Database
#### 📋 O que você vai encontrar neste projeto
| Tecnologia | Descrição |
|-----------|-----------|
| **WSDL**  | Padrão baseado em XML que funciona como um "contrato" para descrever serviços web. |
 
#### 💬 Requisitos do Projeto
- Se necessário Acessar Visual Studio como administrador.
- Se necessário atribuir acesso de usuário NT Service\MSSQLSERVER a pasta App_Data.

#### ⚠️ String de conexão do banco
Modifique o [DIRETORIO] na string de conexão no arquivo **PessoaService.asmx**, no trecho indicado:

```bash
Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=[DIRETORIO]\\App_Data\\BancoTesteSoap.mdf;Integrated Security=True;
```
O script para criação da Database do exemplo encontra-se na pasta **Database**.

#### 🔄 Executar a aplicação
Para executar a aplicação é necessário: 

- Acessar link de referência da documentação: **http://localhost:54222/PessoaService.asmx**
- O WSDL fica disponivel em **http://localhost:54222/PessoaService.asmx?wsdl**
  
## 📁 Razor-Consumir-Soap
#### 📋 O que você vai encontrar neste projeto
| Tecnologia | Descrição |
|-----------|-----------|
| **Client SOAP**  | Aplicação que inicia uma requisição de comunicação usando o protocolo SOAP |
| **Proxy/Stub**  | Processo de geração de ler um serviço e manipulalo automaticamente |
| **ServiceModel**  | Classe utilizada no C# para implementar e consumir serviços WCF (Windows Communication Foundation) |

#### 🔄 Executar a aplicação
- Para executar a aplicação é necessário, rodar antes o soap-provedor-database. **http://localhost:54222/PessoaService.asmx**

