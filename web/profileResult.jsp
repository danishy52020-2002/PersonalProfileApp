
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    public String escapeHtml(Object value) {
        if (value == null) return "";
        String text = value.toString();
        return text.replace("&", "&amp;")
                   .replace("<", "&lt;")
                   .replace(">", "&gt;")
                   .replace("\"", "&quot;")
                   .replace("'", "&#39;");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Personal Profile</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <div class="container">

        <h1>My Personal Profile</h1>
        <p class="subtitle">
            Here is your submitted information.
        </p>

        <h3>Personal Information</h3>

        <div class="profile-info">
            <strong>Full Name:</strong>
            <%= escapeHtml(request.getAttribute("name")) %>
        </div>

        <div class="profile-info">
            <strong>Student ID:</strong>
            <%= escapeHtml(request.getAttribute("studentId")) %>
        </div>

        <div class="profile-info">
            <strong>Program:</strong>
            <%= escapeHtml(request.getAttribute("program")) %>
        </div>

        <div class="profile-info">
            <strong>Email:</strong>
            <%= escapeHtml(request.getAttribute("email")) %>
        </div>

        <div class="profile-info">
            <strong>Hobbies:</strong>
            <%= escapeHtml(request.getAttribute("hobbies")) %>
        </div>

        <h3>About Me</h3>

        <div class="profile-info">
            <%= escapeHtml(request.getAttribute("introduction")) %>
        </div>

        <a href="index.html" class="btn">Back to Form</a>

    </div>

</body>
</html>
