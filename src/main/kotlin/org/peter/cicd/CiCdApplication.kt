package org.peter.cicd

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class CiCdApplication

fun main(args: Array<String>) {
    runApplication<CiCdApplication>(*args)
}
