## 🛠️ WebServices-Net-Soap
Exemplo de WebServices SOAP em C# .NET WCF com banco de dados SQL-Server.

#### 📋 O que você vai encontrar neste projeto
| Tecnologia | Descrição |
|-----------|-----------|
| **SOAP**  |  Serviços de rede que permitem a troca de informações estruturadas (via XML) entre aplicações. |

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

- Acessar link de referência da documentação: (http://localhost:54222/PessoaService.asmx)

## 🌐 Razor-Consumir-Soap
Exemplo de Consumo de WebServices em C# ASP.NET Core 10. 

#### 📋 O que você vai encontrar neste projeto
| Tecnologia | Descrição |
|-----------|-----------|
| **Client SOAP**  | Manipulação de métodos CRUD para enviar/receber dados. |

#### 🔄 Executar a aplicação
- Para executar a aplicação é necessário, rodar antes o soap-provedor-database. **(http://localhost:54222/PessoaService.asmx)**

