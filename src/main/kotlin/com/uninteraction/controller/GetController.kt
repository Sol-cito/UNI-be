package com.uninteraction.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class GetController {
    @GetMapping("/health")
    fun getHealth(): String {
        return "Hello UNInteraction!!!"
    }
}