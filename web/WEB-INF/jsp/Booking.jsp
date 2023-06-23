<%-- 
    Document   : Booking
    Created on : 12 Jun, 2023, 5:24:35 AM
    Author     : DINESH RITHEESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Ticket Booking</title>
        <link rel="stylesheet" href="Css/book.css"></link>
    </head>
    <body>
        <section class="book-container">
            <header>Book Your Ticket</header>
            <form action="#" class="book-form" onsubmit="return validateForm(event);">
                <div class="book-input">
                    <label>Full Name</label>
                    <input type="text" name="fullName" placeholder="Enter Your Name" required>
                    <div class="error" id="fullNameError"></div>
                </div>
                <div class="book-input">
                    <label>Email</label>
                    <input type="email" name="email" placeholder="Enter Your Email" required>
                    <div class="error" id="emailError"></div>
                </div>
                <div class="book-input">
                    <label>Phone Number</label>
                    <input type="tel" name="phoneNumber" placeholder="Enter Your Phone Number" required>
                    <div class="error" id="phoneNumberError"></div>
                </div>
                <div class="book-coloumn">
                    <div class="book-input">
                        <label>No.Of Person</label>
                        <input type="number" name="numOfPerson" placeholder="No.Of Person" min="1" max="10" oninput="updateTotalAmount()">
                        <div class="error" id="numOfPersonError"></div>
                    </div>
                    <div class="book-input">
                        <label>Amount</label>
                        <input type="text" name="amount" value="499" placeholder="Amount" readonly>
                    </div>
                </div>
                <div class="book-input">
                    <label>Total Amount</label>
                    <input type="text" name="totalAmount" placeholder="Total Amount" readonly>
                    <div class="error" id="totalAmountError"></div>
                </div>
                <button type="submit" class="book-btn">Book Now</button>
            </form>
        </section>

        <div class="book-popup" id="bookpopup">
            <img src="images/images/tick2.png" alt="">
            <h2>Thank You!</h2>
            <p>Thank You for Booking your ticket!</p>
            <a href="done.html">  <button onclick="closePopup()">Here Is Your Ticket</button></a>
        </div>
        <script>
                    let popup = document.getElementById("bookpopup");
                    function openPopup(){
                    popup.classList.add("open-popup");
                    }
            function closePopup(){
            popup.classList.remove("open-popup");
            }

            function validateForm(event) {
            event.preventDefault();
                    let fullNameInput = document.querySelector('input[name="fullName"]');
                    let emailInput = document.querySelector('input[name="email"]');
                    let phoneNumberInput = document.querySelector('input[name="phoneNumber"]');
                    let numOfPersonInput = document.querySelector('input[name="numOfPerson"]');
                    let fullNameError = document.getElementById("fullNameError");
                    let emailError = document.getElementById("emailError");
                    let phoneNumberError = document.getElementById("phoneNumberError");
                    let numOfPersonError = document.getElementById("numOfPersonError");
                    let totalAmountError = document.getElementById("totalAmountError");
                    let isValid = true;
                    // Validate full name
                    let fullName = fullNameInput.value.trim();
                    if (fullName === "") {
            fullNameError.textContent = "Please enter your full name.";
                    isValid = false;
            } else {
            fullNameError.textContent = "";
            }

            // Validate email
            let email = emailInput.value.trim();
                    let emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                    if (email === "") {
            emailError.textContent = "Please enter your email.";
                    isValid = false;
            } else if (!emailRegex.test(email)) {
            emailError.textContent = "Please enter a valid email address.";
                    isValid = false;
            } else {
            emailError.textContent = "";
            }

            // Validate phone number
            let phoneNumber = phoneNumberInput.value.trim();
                    let phoneRegex = /^\d{10}$/;
                    if (phoneNumber === "") {
            phoneNumberError.textContent = "Please enter your phone number.";
                    isValid = false;
            } else if (!phoneRegex.test(phoneNumber)) {
            phoneNumberError.textContent = "Please enter a valid 10-digit phone number.";
                    isValid = false;
            } else {
            phoneNumberError.textContent = "";
            }

            // Validate number of persons
            let numOfPerson = Number(numOfPersonInput.value);
                    if (numOfPerson < 1 || numOfPerson > 10) {
            numOfPersonError.textContent = "Number of persons should be between 1 and 10.";
                    isValid = false;
            } else {
            numOfPersonError.textContent = "";
            }

            // Show popup if the form is valid
            if (isValid) {
            openPopup();
            }

            // Return the form validity status
            return isValid;
            }

            function updateTotalAmount() {
            let numOfPersonInput = document.querySelector('input[name="numOfPerson"]');
                    let amountInput = document.querySelector('input[name="amount"]');
                    let totalAmountInput = document.querySelector('input[name="totalAmount"]');
                    let numOfPersonError = document.getElementById("numOfPersonError");
                    let totalAmountError = document.getElementById("totalAmountError");
                    let numOfPerson = Number(numOfPersonInput.value);
                    let isValid = true;
                    // Validate number of persons
                    if (numOfPerson < 1 || numOfPerson > 10) {
            numOfPersonError.textContent = "Number of persons should be between 1 and 10.";
                    isValid = false;
            } else {
            numOfPersonError.textContent = "";
            }

            // Update total amount if the input is valid
            if (isValid) {
            let totalAmount = numOfPerson * Number(amountInput.value);
                    totalAmountInput.value = totalAmount.toFixed(2);
                    totalAmountError.textContent = "";
            } else {
            totalAmountInput.value = "";
                    totalAmountError.textContent = "Please enter a valid number of persons.";
            }
            }
        </script>
    </body>
</html>