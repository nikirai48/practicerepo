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

```javascript
{
  "env": {
   Cypress.Commands.add("Credentials", () => {
  const username = Cypress.env("username");
  const password = Cypress.env("password");

  cy.visit("https://gor-pathology.web.app/");
});
  }
}
