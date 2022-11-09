package com.fleetApp.step_definitions;

import com.fleetApp.pages.HomePage;
import com.fleetApp.pages.LoginPage;
import com.fleetApp.utilities.Driver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class RememberMe_StepDef {
    LoginPage loginPage = new LoginPage();
    HomePage homePage = new HomePage();
    @When("User clicks Remember Me box")
    public void user_clicks_remember_me_box() {

        loginPage.rememberMeBox.click();
    }
    @And("User enters credentials and clicks login btn")
    public void userEntersCredentialsAndClicksLoginBtn() {

        loginPage.loginAsDriver();
    }
    @And("User lands on Home Page")
    public void user_lands_on_home_page() {

        Assert.assertEquals("Dashboard", Driver.get().getTitle());

    }
    @And("User logs out")
    public void user_logs_out() {

        homePage.johnDoeClick.click();
        homePage.logoutBtn.click();
    }
    @Then("User should see own credentials")
    public void user_should_see_own_credentials() {

        String username = "user1";
        loginPage.inputVerify(username);
    }
}
