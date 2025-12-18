<!DOCTYPE html>
<html lang="id">
<head>
<meta charset="UTF-8">
<title>Login LocalStorage</title>
<style>
body {
  font-family: Arial, sans-serif;
  background: #f2f2f2;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}
.box {
  background: white;
  padding: 20px;
  width: 300px;
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(0,0,0,.2);
}
input, button {
  width: 100%;
  padding: 10px;
  margin-top: 10px;
}
h2 {
  text-align: center;
}
</style>
</head>
<body>

<div class="box" id="loginBox">
  <h2>Login</h2>
  <input type="text" id="username" placeholder="Username">
  <input type="password" id="password" placeholder="Password">
  <button onclick="login()">Login</button>
</div>

<div class="box" id="userBox" style="display:none;">
  <h2 id="welcome"></h2>
  <button onclick="logout()">Logout</button>
</div>

<script>
// DATABASE (JSON + LocalStorage)
if (!localStorage.getItem("users")) {
  const users = [
    { username: "user1", password: "123" },
    { username: "user2", password: "456" },
    { username: "user3", password: "789" }
  ];
  localStorage.setItem("users", JSON.stringify(users));
}

// LOGIN
function login() {
  const username = document.getElementById("username").value;
  const password = document.getElementById("password").value;
  const users = JSON.parse(localStorage.getItem("users"));

  const user = users.find(u => 
    u.username === username && u.password === password
  );

  if (user) {
    document.getElementById("loginBox").style.display = "none";
    document.getElementById("userBox").style.display = "block";
    document.getElementById("welcome").innerText = "Hi " + user.username;
  } else {
    alert("Gagal login!");
  }
}

// LOGOUT
function logout() {
  location.reload();
}
</script>

</body>
</html>
