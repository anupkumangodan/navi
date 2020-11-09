package com.yahoo.navi.ws.test.integration

import com.yahoo.navi.ws.test.framework.IntegrationTest
import com.jayway.restassured.RestAssured.given
import org.junit.jupiter.api.Test

class StarwarsTest: IntegrationTest() {
    @Test
    fun simple_starwars_table_test(){
        given()
                .header("User","testuser")
                .`when`()
                .get("/table/pilots?fields[table]=name\n")
                .then()
                .statusCode(200)
    }
}