rootProject.name = "schneider"

include("batch")
include("common")
include("front-api")

project(":batch").projectDir = File("schneider-batch")
project(":common").projectDir = File("schneider-common")
project(":front-api").projectDir = File("schneider-front-api")
