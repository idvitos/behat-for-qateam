<?php

use \Drupal\DrupalExtension\Context\MinkContext;
use Behat\Gherkin\Node\PyStringNode,
    Behat\Gherkin\Node\TableNode;

/**
 * Features context
 */
class FeatureContext extends MinkContext
{
    /**
     * @Given I am on the :arg1
     */
    public function iAmOn($arg1) //Open Homepage
    {
        $this->visit($arg1);
    }
    /**
     * @Given I am searching for :arg2
     */
    public function iAmSearchingFor($arg1) //Searching...
    {
        $page = $this->getSession()->getPage();
        $page->fillField("lst-ib", $arg1);
        $page->find("css", "button[name=btnG]")->click();
        $this->getSession()->wait(1000);
    }
    /**
     * @Then I should see link with text :expected on the page
     */
    public function iShouldSeeThusAsResult($expected) //Results
    {
        $text = $this->getSession()->getPage()->find('css', 'h3')->getText();
        if (trim($text) !== $expected) {
            throw new Exception('There are no link/text which you are searching');
        }
        PHPUnit_Framework_Assert::assertEquals($text, $expected);
    }

}
