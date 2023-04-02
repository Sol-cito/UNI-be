package com.uninteraction.controller

import io.kotest.core.spec.style.BehaviorSpec
import io.kotest.matchers.shouldBe

internal class GetContrllerTest : BehaviorSpec({
    Given("Health check test") {
        val getController = GetController()
        val expectedResult = "Hello UNInteraction!!!"

        When("When /health is called") {
            val result = getController.getHealth()

            Then("return expected String value") {
                result shouldBe expectedResult
            }
        }
    }
})