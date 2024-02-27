<!DOCTYPE html>
<html>
<head>
  <title>COMP367 Greeting App</title>
  <script>
    // Function to determine the greeting
    function getGreeting() {
      var today = new Date();
      var hour = today.getHours();
      if (hour < 12) {
        return "Good morning, ";
      } else {
        return "Good evening, ";
      }
    }

    // Function to update the greeting
    function updateGreeting() {
      // Check if the element exists before setting content
      if (document.getElementById("greetingText")) {
        document.getElementById("greetingText").innerHTML = getGreeting() + " Jasper, Welcome to COMP367!";
      } else {
        console.error("Element with ID 'greetingText' not found!");
      }
    }

    window.onload = function() {
        updateGreeting();
      };
  </script>
</head>
<body>
  <h1 id="greetingText"></h1>
</body>
</html>
