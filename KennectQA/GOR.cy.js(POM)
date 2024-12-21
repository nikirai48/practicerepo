class dashboardpage {
  login() {
    cy.url().should("eq", "https://gor-pathology.web.app/dashboard");
  }

  Todos() {
    cy.get(".MuiCardContent-root").should("exist");
    cy.get(".jss63 > .MuiBox-root").should("exist");
  }

  costcalculatordropdowns() {
    cy.get("input#patient-test").click();
    cy.get('[role="option"]').should("be.visible");
    cy.get("#patient-test-popup").scrollTo("bottom");
    cy.get("div.MuiSelect-root").click();
    cy.get('ul.MuiList-root[role="listbox"]').should("be.visible");
    cy.get('li[role="option"]').contains("20%").click();
  }

  newpatient() {
    cy.contains("span", "Tests")
      .closest("div.MuiListItem-root")
      .should("be.visible")
      .click({ force: true });
    cy.get(
      "button.MuiButton-root.MuiButton-contained.MuiButton-containedPrimary",
    )
      .contains("Add Patient's Test")
      .click();
    cy.url().should("eq", "https://gor-pathology.web.app/patients/add");
  }

  Patientdetails() {
    cy.get('input[name="name"]').click().type("Nikita rai");
    cy.get('input[name="email"]').click().clear().type("nikirai48@gmail.com");
    cy.get('input[name="phone"]').click().clear().type("8286698601");
    cy.get(
      "button.MuiButton-root.MuiButton-contained.MuiButton-containedPrimary",
    ).click();
    cy.get('input[name="height"]').click().clear().type("183");
    cy.get('input[name="weight"]').click().clear().type("69");

    cy.get("#mui-component-select-gender").click();

    cy.get('[role="option"]').contains("Female").click();

    cy.get('input[name="age"]')
      .click()

      .clear()
      .type("50");

    cy.get("button").contains("Add Tests").click();
  }

  addPatient() {
    cy.get("input#patient-test").click();
    cy.get('[role="option"]').should("be.visible");
    cy.get("#patient-test-popup").scrollTo("bottom");

    cy.get('#patient-test-popup [role="option"]')
      .eq(3)
      .scrollIntoView()
      .click();

    cy.get("div.MuiSelect-root").first().click();
    cy.get("li.MuiMenuItem-root").contains("20").click();

    cy.get("#patient-tests-labs").click();
    cy.get('[role="option"]').should("be.visible");

    cy.get('[role="option"]').eq(1).click();

    cy.get('input[name="doctor_name"]').click();
    cy.get(".MuiAutocomplete-popper").should("be.visible");

    cy.get('.MuiAutocomplete-listbox [role="option"]')
      .contains("Atharva Hiwase")
      .click();

    cy.window().then((win) => {
      const button = win.document.querySelector(
        'button[title="Add equipment"]',
      );
      if (button) {
        button.click();
      } else {
        console.log("Add equipment button not found");
      }
    });

    cy.window().then((win) => {
      cy.get("span.material-icons")
        .contains("check")
        .then((checkIcon) => {
          const button = checkIcon.closest("button");
          if (button.length > 0) {
            button.click();
          } else {
            cy.log("Check icon button not found");
          }
        });
    });

    cy.contains("button", "Add Patient").should("be.visible").click();
    cy.wait(15000);
  }

  patientreflect() {
    cy.get('input[aria-label="Search"]').click();

    cy.get('input[aria-label="Search"]')
      .type("Nikita rai")
      .should("have.value", "Nikita rai");
    cy.contains("td", "No records to display").should("not.exist");
  }
}

export default new dashboardpage();
