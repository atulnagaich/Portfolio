<!-- 🌟 HEADER -->
<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&color=0:00c6ff,100:0072ff&height=200&section=header&text=💼%20Spring%20Boot%20Portfolio%20Management%20System&fontSize=36&fontColor=ffffff&animation=fadeIn&fontAlignY=35"/>
</p>

<h2 align="center">🚀 Build | Manage | Showcase — Your Dynamic Portfolio Powered by Spring Boot</h2>

<p align="center">
  <b>Crafted with ❤️ by <a href="https://github.com/atulnagaich">Atul Nagaich</a></b>  
  <br>
  <i>Java Engineer | Full Stack Developer | Tech Enthusiast</i>
</p>

<p align="center">
  <a href="mailto:atulnagaich99@gmail.com"><img src="https://img.shields.io/badge/Email-Contact%20Me-red?logo=gmail&logoColor=white" /></a>
  <a href="https://atulnagaich.netlify.app"><img src="https://img.shields.io/badge/Portfolio-Visit%20Now-blue?logo=netlify&logoColor=white" /></a>
  <a href="https://github.com/atulnagaich"><img src="https://img.shields.io/badge/GitHub-Atul%20Nagaich-black?logo=github" /></a>
  <a href="https://www.linkedin.com/in/atulnagaich/"><img src="https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin" /></a>
</p>

<p align="center">
  <img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=22&duration=3000&pause=1000&color=0072FF&center=true&vCenter=true&width=600&lines=Dynamic+Portfolio+Website;Spring+Boot+%7C+JSP+%7C+MySQL;Role-Based+Access+(Admin+%26+Member);Secure%2C+Responsive%2C+Professional" />
</p>

---

## 🌟 **Project Overview**

A **Dynamic Portfolio Management System** built using **Spring Boot, JSP, and MySQL**, enabling users to display and manage professional details securely.

👑 **Admin** can perform CRUD operations (Add, Update, Delete)  
👤 **Member/User** can only view data (Read-only access)

This project is perfect for developers who want to **showcase their portfolio dynamically** and understand **Role-Based Access Control (RBAC)** in Spring Boot.

---

## 🔐 **Role-Based Access Control (RBAC)**

| Role | Permissions | Description |
|------|--------------|-------------|
| 🧑‍💼 **Admin** | ✅ Create, ✅ Read, ✅ Update, ✅ Delete | Full control of all portfolio data |
| 👤 **Member/User** | ✅ Read Only | Can only view profile, projects, and resume |

<p align="center">
  <img src="https://skillicons.dev/icons?i=spring,java,mysql,html,css,bootstrap,js,git,github" />
</p>

---

## ✨ **Key Features**

- 🧑‍💼 **Admin Dashboard** – Manage all sections (Profile, Projects, Resume).  
- 💼 **Project Management** – Add, Update, Delete, and List portfolio projects.  
- 🖼️ **Profile Management** – Upload and update personal data & profile images.  
- 📄 **Resume Upload/Download** – Store and access your resume dynamically.  
- 🎓 **Home,About,Service,Contact** – Dynamic backend-driven sections.  
- 🔐 **Spring Security Role-Based Login** – Separate access for Admin and Members.  
- 📬 **Contact Section** – Receive messages from visitors securely.  
- 🌈 **Fully Responsive UI** – Works seamlessly across all devices.  

---

## ⚙️ **Tech Stack**

| Layer | Technologies |
|-------|---------------|
| **Frontend** | HTML5, CSS3, Bootstrap, JSP, JavaScript |
| **Backend** | Java, Spring Boot, Spring MVC, Spring Security |
| **Database** | MySQL |
| **Build Tool** | Maven |
| **Server** | Apache Tomcat |
| **IDE/Tools** | Spring Tool Suite (STS), IntelliJ, Git, Postman |

---

## 🧩 **System Architecture**

```plaintext
                         ┌─────────────────────┐
                         │   User (Member)     │
                         │   Read Only Access  │
                         └────────┬────────────┘
                                  │
                                  ▼
        ┌────────────────────────────────────────────────┐
        │                Spring Boot Backend              │
        │  ┌──────────┐   ┌────────────┐   ┌──────────┐  │
        │  │Controller│→ │ Service     │→ │ DAO Layer │  │
        │  └──────────┘   └────────────┘   └──────────┘  │
        └────────────────────────────────────────────────┘
                                  │
                                  ▼
                         ┌─────────────────────┐
                         │      MySQL DB       │
                         └─────────────────────┘
```
## 📂 Project Structure
```
PortfolioApp/
├── src/
│   ├── main/
│   │   ├── java/com/portfolio/
│   │   │   ├── controller/          # Handles HTTP requests (Admin/User)
│   │   │   ├── service/             # Business logic interfaces
│   │   │   ├── serviceimpl/         # Service implementations
│   │   │   ├── dao/                 # DAO interfaces
│   │   │   ├── daoimpl/             # DAO implementations (JPA/JDBC)
│   │   │   ├── model/               # Entity / POJO classes
│   │   │   └── PortfolioApplication.java  # Main Spring Boot App
│   │   │
│   │   ├── resources/
│   │   │   ├── application.properties     # Database configuration
│   │   │   └── static/                    # CSS, JS, Images
│   │   │
│   │   └── webapp/
│       ├── WEB-INF/web.xml                # Deployment descriptor
│       ├── jsp/                           # JSP Views
│       │   ├── header.jsp                 # Common header
│       │   ├── footer.jsp                 # Common footer
│       │   ├── index.jsp                  # Home page
│       │   ├── contact.jsp                # Contact page
│       │   ├── services.jsp               # Skills / services section
│       │   ├── login.jsp                  # Login form
│       │   ├── register.jsp               # Register form
│       │   ├── forgot-password.jsp        # Forgot password
│       │   ├── reset-password.jsp         # Reset password
│       │   └── unauthorized.jsp           # Access denied
│
├── pom.xml                                # Maven dependencies
└── README.md                              # Project documentation
```
## ⚙️ Installation & Setup
### Prerequisites
1. **JDK 8** installed
2. **MySQL Workbench** installed
3. **Spring Tool Suite (STS) IDE** installed
4. **Lombok configured** in your IDE

### Steps to Run
1. **Clone the repository**:
   ```sh
   git clone https://github.com/YOUR_USERNAME/springboot-portfolio-system.git
   cd springboot-portfolio-system

   ```
   2. **Set up the database**:
   - Create a **MySQL database** and import `database.sql`.
   - Update database credentials in `application.properties`:
     ```properties 
     spring.application.name=Portfolio
     spring.datasource.url=jdbc:mysql://localhost:3306/portfolio
     spring.datasource.username=root
     spring.datasource.password=yourpassword
     spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver

     spring.jpa.hibernate.ddl-auto=update
     #spring.jpa.show-sql=true

     spring.mvc.view.prefix=/WEB-INF/view/
     spring.mvc.view.suffix=.jsp

     spring.servlet.multipart.max-request-size=5MB

   ```
   3. **Run the Spring Boot application**:
   ```sh
   mvn spring-boot:run
   ```
4. **Access the application**:
   - Open `http://localhost:8080` in a web browser.
     
  ## 💡 Contributing

Contributions are welcome!

Fork the repository

Create a new branch (feature/your-feature)

Commit your changes

Submit a Pull Request 🚀
## 🎯 Project Documentation
[📄 Portfolio Documentation](https://drive.google.com/file/d/1xqSHUVndfwFj08Szr7HjAJr-eRUpLM8F/view?usp=sharing/pub)

## 🧑‍💻 Author

👨‍💻 Atul Nagaich
📧 atulnagaich99@gmail.com

## 🏁 Conclusion

The Spring Boot Portfolio Management System demonstrates how a modern full-stack application can effectively integrate Spring Boot, JSP, and MySQL to deliver a dynamic, secure, and user-friendly platform.

By implementing Role-Based Access Control (RBAC), the project showcases how to manage different levels of permissions — allowing Admins to perform all CRUD operations while ensuring that Members can only view data safely.

This project not only highlights proficiency in Java, Spring Framework, and Web Technologies, but also reflects strong software engineering principles such as modular design, scalability, and maintainability.
