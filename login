<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Nativa - Login</title>

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: Arial, sans-serif;
    }

    body {
      height: 100vh;
      background: linear-gradient(135deg, #2e7d32, #3a7d44);
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .container {
      width: 100%;
      padding: 20px;
    }

    .login-box {
      background: rgba(255, 255, 255, 0.1);
      backdrop-filter: blur(10px);
      border-radius: 15px;
      padding: 30px;
      max-width: 350px;
      margin: auto;
      text-align: center;
      color: white;
    }

    .login-box h1 {
      margin-bottom: 10px;
    }

    .login-box h2 {
      margin-bottom: 20px;
      font-weight: normal;
    }

    .input-group {
      text-align: left;
      margin-bottom: 15px;
    }

    .input-group label {
      font-size: 14px;
    }

    .input-group input {
      width: 100%;
      padding: 8px;
      border: none;
      border-bottom: 2px solid white;
      background: transparent;
      color: white;
      outline: none;
    }

    .forgot {
      font-size: 12px;
      float: right;
      cursor: pointer;
    }

    button {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 10px;
      background: white;
      color: #2e7d32;
      font-weight: bold;
      cursor: pointer;
      margin-top: 10px;
    }

    button:hover {
      background: #e0e0e0;
    }

    .cadastro {
      margin-top: 15px;
      font-size: 14px;
    }

    .cadastro span {
      cursor: pointer;
      text-decoration: underline;
    }

 
    @media (max-width: 600px) {
      .login-box {
        padding: 20px;
      }
    }
  </style>
</head>

<body>

  <div class="container">
    <div class="login-box">
      <h1>NATIVA</h1>
      <h2>Login</h2>

      <form id="loginForm">
        <div class="input-group">
          <label>Usuário</label>
          <input type="text" id="usuario" required>
        </div>

        <div class="input-group">
          <label>Senha</label>
          <input type="password" id="senha" required>
          <span class="forgot">Esqueceu a senha?</span>
        </div>

        <button type="submit">Entrar</button>

        <p class="cadastro">Ainda não tem conta? <span>Cadastre-se</span></p>
      </form>
    </div>
  </div>

  <script>
    document.getElementById("loginForm").addEventListener("submit", function(e) {
      e.preventDefault();

      let usuario = document.getElementById("usuario").value;
      let senha = document.getElementById("senha").value;

      if (usuario === "admin" && senha === "1234") {
        alert("Login realizado com sucesso!");
        // window.location.href = "home.html";
      } else {
        alert("Usuário ou senha incorretos!");
      }
    });
  </script>

</body>
</html>
