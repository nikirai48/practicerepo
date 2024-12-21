import { When, Then } from "cypress-cucumber-preprocessor/steps";
import dashboardpage from "../PageObject/GOR.cy";

When("Verify that after login User lands on the Homepage", () => {
  dashboardpage.login();
});

Then(
  "Verify that user can view a list of todos and access the Cost Calculator for blood tests.",
  () => {
    dashboardpage.Todos();
  },
);

Then("Verify that the user can access cost calculator", () => {
  dashboardpage.costcalculatordropdowns();
});

Then(
  "Verify that the user can click on Tests and click on Add Patients test",
  () => {
    dashboardpage.newpatient();
  },
);

Then("Verify that the user can fill in Patients details", () => {
  dashboardpage.Patientdetails();
});

Then("Verify that the details can be added", () => {
  dashboardpage.addPatient();
});

Then("Verify that after adding the test it is reflected on the page", () => {
  dashboardpage.patientreflect();
});
