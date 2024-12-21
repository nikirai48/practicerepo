# **Cypress Testing Setup**

## **Testing Tool - Cypress**

### **Setup Requirements:**

1. **Testing Tool**: **Cypress**
2. **Setup**:
   - **Node.js**
   - **Cypress**
   - **Feature files**, **POM (Page Object Model)**, and **Step definition files**

---

### **Login URL and User Credentials:**

The login URL and user credentials will be added in the background using the **beforeEach** hook for each test.

#### **Cypress Configuration:**

In your **cypress.json** or **cypress.config.js**:

```json
{
  "env": {
    "username": "test@kennect.io",
    "password": "Qwerty@1234"
  }
}

In your **command.js**:
```json
Cypress.Commands.add("Credentials", () => {
  const username = Cypress.env("username");
  const password = Cypress.env("password");

  cy.visit("https://gor-pathology.web.app/");
  // Add the steps to log in, using the username and password
});

In your **e2e.js**:
```json
beforeEach(() => {
  cy.Credentials();   // This calls the Credentials function defined in commands.js
  cy.clearCookies();   // Clears cookies before each test
  cy.clearLocalStorage();  // Clears localStorage before each test
});












