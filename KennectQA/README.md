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

"env": {
    "username": "test@kennect.io",
    "password": "Qwerty@1234"
  }

Cypress.Commands.add("Credentials", () => {
  const username = Cypress.env("username");
  const password = Cypress.env("password");

  cy.visit("https://prgloo-dev-admin-01.azurewebsites.net/login/");
  cy.get("#username").type(username);
  cy.get("#password").type(password);
  cy.get("#btn-submit").click();
});

e2e.js
beforeEach(() => {
  cy.Credentials();
  cy.clearCookies();
  cy.clearLocalStorage();
});


