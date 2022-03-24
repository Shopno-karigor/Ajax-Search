

function validation() {
  var pass = document.getElementById("password1").value;
  var ln = pass.length;

  if (ln<8) {
    document.getElementById('errorPassLn').innerHTML="Password must be 8 digit";
  }
  else {
  document.getElementById('errorPassLn').innerHTML=" ";
  }
}


function passConfirm() {
  var pass = document.getElementById("password1").value;
  var pass_con = document.getElementById("password_confirm").value;
  if (pass!==pass_con) {
    document.getElementById('errorPassCnf').innerHTML="Password not matched";
  }
  else {
    document.getElementById('errorPassCnf').innerHTML=" ";
  }
}

function usernameValid() {
  var username = document.getElementById("username1").value;

  if (/^[a-zA-Z0-9-_ ]*$/.test(username) == false) {
    document.getElementById('errorUsername').innerHTML="No special charecter";
  }
  else {
    document.getElementById('errorUsername').innerHTML=" ";
  }
}
