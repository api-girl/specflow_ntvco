using NUnit.Framework;
using OpenQA.Selenium;
using Pages;
using System;
using System.Collections.Generic;
using System.Text;
using TechTalk.SpecFlow;


namespace Steps
{
    [Binding]

    class VerifyCartInfo_Steps
    {
        private readonly PromotionsPage _promotions;

        public VerifyCartInfo_Steps(PromotionsPage promotions)
        {
            _promotions = promotions;
        }

        [Given(@"that I select Box option")]
        public void GivenThatISelectBoxOption()
        {
            //promotions.OpenBoxPromotion();
        }

        [When(@"I select Promotion ""(.*)""")]
        public void WhenISelectPromotion(string p0)
        {
            ScenarioContext.Current.Pending();
        }

        [Then(@"I see the following cart items")]
        public void ThenISeeTheFollowingCartItems(Table table)
        {

        }

        [When(@"I select Subscription ""(.*)""")]
        public void WhenISelectSubscription(string p0)
        {
            
        }

        [Given(@"that I select No Box option")]
        public void GivenThatISelectNoBoxOption()
        {
            
        }




         }
}
