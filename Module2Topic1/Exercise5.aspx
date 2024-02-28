<%@ Page Language="C#" CodeBehind="~/Exercise5.aspx.cs" Inherits="Module1Exercise1.Exercise4" %>

<%-- Exercise 5: Creating reusable layouts using master pages--%>
<%-- TODO 5.1 Create a master page that contains a navigation bar, a main content, and a footer. --%>
<%-- The navigation bar should contain links to the other exercises --%>
<%-- The main content must include the content that the other pages will implement --%>
<%-- The footer should contain the copyright information of the page. I.e. it should display "Copyright <your name> 2024" --%>
<%-- Hint: https://www.c-sharpcorner.com/article/how-to-create-master-page-in-asp-net/ --%>

<%-- TODO 5.2 Make this page use the master page that you have created --%>
<%-- In the main content of this page, write your reflection about the following: --%>
<%-- * How would you compare plain HTML to ASP.NET WebForms --%>
<%-- * The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples. --%>
<%-- * Explain what post backs are. --%>


<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <nav id="navbar">
    <asp:HyperLink runat="server" NavigateUrl="~/Exercise1.aspx" Text="Exercise 1" />
    <asp:HyperLink runat="server" NavigateUrl="~/Exercise2.aspx" Text="Exercise 2" />
    <asp:HyperLink runat="server" NavigateUrl="~/Exercise3.aspx" Text="Exercise 3" />
    <asp:HyperLink runat="server" NavigateUrl="~/Exercise4.aspx" Text="Exercise 4" />
        </nav> <br />
        
        <div id="Answers5.2"
            <p>
                HTML provides the basic structure and content for web pages, defining elements like text, images, and links. It's static and lacks built-in capabilities for dynamic content generation or server-side processing. In contrast, ASP.NET WebForms is a framework for building dynamic web applications, offering server-side controls, event-driven programming, and a higher level of abstraction for web development tasks. WebForms abstracts away much of the complexity of web development, enabling rapid application development through drag-and-drop components and familiar programming paradigms like event handlers.
            </p>
            <p>
                Logic implemented in the code-behind (C#) is best suited for server-side tasks like data validation, business rules enforcement, and database operations where security and performance are paramount. It's ideal for handling authentication, authorization, and complex server-side calculations. In contrast, JavaScript is preferred for enhancing client-side interactivity, such as form validation, dynamic content updates, and real-time data visualization, as it offers immediate feedback to users without requiring server round-trips. Use JavaScript for asynchronous operations and tasks that don't involve server interactions, like client-side data manipulation and interactive UI elements, ensuring a responsive and seamless user experience.
            </p>
            <p>
                Postbacks are a mechanism in web development, particularly associated with ASP.NET WebForms, where a form is submitted to the server, processed, and then the entire page is sent back to the client browser. This process is typically triggered by an event on the client side, such as clicking a button or changing a dropdown selection. When a postback occurs, the entire page lifecycle in ASP.NET WebForms is executed again on the server, including events like page load, event handling, and page rendering. Postbacks enable server-side processing and interaction with server controls, but they can also lead to slower user experiences due to the round-trip nature of web requests. AJAX techniques are often used to mitigate this by enabling partial page updates without full postbacks.
            </p>
        <div id="footer">
            <footer>Copyright David Joseph N. Cortez 2024</footer>
        </div>
    </form>
    
</body>
</html>
