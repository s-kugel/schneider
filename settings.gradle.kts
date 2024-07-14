rootProject.name = "schneider"

include("backoffice-api")
include("batch")
include("common")
include("front-api")

project(":backoffice-api").projectDir = File("schneider-backoffice-api")
project(":batch").projectDir = File("schneider-batch")
project(":common").projectDir = File("schneider-common")
project(":front-api").projectDir = File("schneider-front-api")
