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

### **Cypress Command:**

In your **commands.js**:

```javascript
Cypress.Commands.add("Credentials", () => {
  const username = Cypress.env("username");
  const password = Cypress.env("password");

  cy.visit("https://gor-pathology.web.app/");
});
```

In your **cypress.config**:

```json
{
  "env": {
    "username": "test@kennect.io",
    "password": "Qwerty@1234"
  }
}
```

In your **e2e.js**:

```javascript
 beforeEach(() => {
  cy.Credentials();
  cy.clearCookies();
  cy.clearLocalStorage();
});
```
### Approach : 

I used Cypress as a tetsing and first added Links and Credentials as a before each to make login easier. Then i started with Verifying the components seen on the dashboard page and Continued with Adding patient details. 
I faced challenges while trying to locate few elements on the Add patients page as it was coming as Undefined in console which made it harder to click on the element. 
After adding details the page is taking time to load which is sometimes throwing exception error 
