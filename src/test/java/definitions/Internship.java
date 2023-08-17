package definitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;

import static support.TestContext.getDriver;

public class Internship {
    @Given("YS navigate to URL {string}")
    public void ysNavigateToURL(String sURL) {
        getDriver().get("https://www.google.com");
        switch (sURL) {
            case "Google":
                getDriver().get("https://www.google.com");
            case "Yahoo":
                getDriver().get("https://www.yahoo.com");
            case "Ask":
                getDriver().get("https://www.ask-int.com");
            default:
                System.out.println("No URL found");
        }
    }

    @Then("YS get page information")
    public void ysGetPageInformation() {
        System.out.println("The page title is "+getDriver().getTitle());
        System.out.println(("The page URL is " + getDriver().getCurrentUrl()));
        System.out.println("Window handle is " +getDriver().get().getWindowHandle());
    }

    @Then("YS maximize the window")
    public void ysMaximizeTheWindow() {
        getDriver().manage().window().maximize();
    }
}
