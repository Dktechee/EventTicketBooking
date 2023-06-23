<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="Css/reg.css">

</head>
<body>
    <div class="container">
        <h1 class="form-title">Register Here </h1>
        <form name="register" method="post" action="requestandresponse.html">
            <div class="main-user-info">
                <div class="user-input-box">
                    <label for="Fullname">Full Name</label>
                    <input type="text" name="Fullname"  id="fullname" 
                 
                    placeholder="Enter Your Fullname">
                     <span class="error"></span>

            </div>
            <div class="user-input-box">
                <label for="UserName">User Name</label>
                <input type="text" name="Username"  id="User Name" 
          
                placeholder="Enter Your User Name">
                 <span class="error"></span>

        </div>
            <div class="user-input-box">
                <label for="Email">Email</label>
                <input type="Email"  name="Email"  id="Email" 
                
                placeholder="Enter Your Email">
                 <span class="error"></span>

        </div>
        <div class="user-input-box">
            <label for="Phone number">Phone number</label>
            <input type="Text"  name="phonenumber"  id="Phone number" 
           
            placeholder="Enter Your Phone number">
             <span class="error"></span>

    </div>
    <div class="user-input-box">
        <label for="Password">Password</label>
        <input type="password" name="Password" id="required" 
     
        placeholder="Enter Password">
         <span class="error"></span>

</div>
<div class="user-input-box">
    <label for="Confirm Password"> Confirm Password</label>
    <input type="text"  name="confirmpassword" id="Confirm Password" 
   
    placeholder=" Confirm Password">
     <span class="error"></span>

</div>
 </div>
<div class="gender-details-box">
    <span class="gender-title">Gender</span>
    <div class="gender-category">
        <input type="radio" value="male" name="gender1" id="male">
        <label for="male">Male</label>
        <input type="radio"   value="female" name="gender1" id="female">
        <label for="female">Female</label>
    </div>
</div>
<div class="form-submit-btn">
    <input type="submit" name="btn" value="Register Here">
</div>
 </form>
    </div>
 <script>
const form = document.forms['register'];
const fullnameInput = form.elements['fullname'];
const usernameInput = form.elements['User Name'];
const emailInput = form.elements['Email'];
const phoneInput = form.elements['Phone number'];
const passwordInput = form.elements['required'];
const confirmPasswordInput = form.elements['Confirm Password'];

// Function to display error message
function displayError(input, message) {
  const errorElement = input.nextElementSibling;
  errorElement.textContent = message;
}

// Function to validate the form
function validateForm(event) {
  event.preventDefault();

  // Reset error messages
  const errorElements = document.querySelectorAll('.error');
  errorElements.forEach(element => {
    element.textContent = '';
  });

  // Validate full name
  const fullnameValue = fullnameInput.value.trim();
  if (fullnameValue === '') {
    displayError(fullnameInput, 'Full name is required.');
    fullnameInput.focus();
    return false;
  }

  // Validate username uniqueness
  const usernameValue = usernameInput.value.trim();
  if (usernameValue === '') {
    displayError(usernameInput, 'Username is required.');
    usernameInput.focus();
    return false;
  }

  // Validate username format
  const usernameRegex = /^[a-zA-Z0-9_-]{3,16}$/;
  if (!usernameRegex.test(usernameValue)) {
    displayError(usernameInput, 'Username must be between 3 and 16 characters and can contain letters, numbers, hyphens, and underscores.');
    usernameInput.focus();
    return false;
  }

  // Check if the username is already taken
  const isUsernameTaken = checkUsernameAvailability(usernameValue);
  if (isUsernameTaken) {
    displayError(usernameInput, 'Username is already taken.');
    usernameInput.focus();
    return false;
  }

  // Validate email
  const emailValue = emailInput.value.trim();
  if (emailValue === '') {
    displayError(emailInput, 'Email is required.');
    emailInput.focus();
    return false;
  }

  const emailRegex = /^\S+@\S+\.\S+$/;
  if (!emailRegex.test(emailValue)) {
    displayError(emailInput, 'Invalid email format.');
    emailInput.focus();
    return false;
  }

  // Validate phone number
  const phoneValue = phoneInput.value.trim();
  if (phoneValue === '') {
    displayError(phoneInput, 'Phone number is required.');
    phoneInput.focus();
    return false;
  }

  const phoneRegex = /^\d{10}$/;
  if (!phoneRegex.test(phoneValue)) {
    displayError(phoneInput, 'Phone number must be 10 digits.');
    phoneInput.focus();
    return false;
  }

  // Validate password
  const passwordValue = passwordInput.value.trim();
  if (passwordValue === '') {
    displayError(passwordInput, 'Password is required.');
    passwordInput.focus();
    return false;
  }

  // Check if password contains at least one special character
  const specialCharRegex = /[!@#$%^&*]/;
  if (!specialCharRegex.test(passwordValue)) {
    displayError(passwordInput, 'Password must contain at least one special character (!@#$%^&*).');
    passwordInput.focus();
    return false;
  }

  // Validate confirm password
  const confirmPasswordValue = confirmPasswordInput.value.trim();
  if (confirmPasswordValue === '') {
    displayError(confirmPasswordInput, 'Please confirm your password.');
    confirmPasswordInput.focus();
    return false;
  }

  if (passwordValue !== confirmPasswordValue) {
    displayError(confirmPasswordInput, 'Passwords do not match.');
    confirmPasswordInput.focus();
    return false;
  }

  // If all validations pass, submit the form
  form.submit();
}

// Function to check username availability (dummy implementation)
function checkUsernameAvailability(username) {
  // You need to implement your own logic to check for username availability
  // This is just a dummy implementation
  const takenUsernames = ['john123', 'emma456', 'alex789'];
  return takenUsernames.includes(username);
}

// Add form submit event listener
form.addEventListener('submit', validateForm);


</script>
</body>
</html>
