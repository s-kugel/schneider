buildscript {
    repositories {
        mavenCentral()
    }
    dependencies {
        classpath(libs.flyway.mysql)
    }
}

plugins {
    `java-library`
    idea
    eclipse
    alias(libs.plugins.flyway)
    alias(libs.plugins.spotless)
}

repositories {
    mavenCentral()
}

dependencies {
    implementation(libs.mysql)
}

tasks.withType<JavaCompile> {
    options.encoding = "UTF-8"
}

flyway {
    url = "jdbc:mysql://${System.getenv("FASAN_DB_HOST")}:${System.getenv("FASAN_DB_PORT")}/${System.getenv("FASAN_DB_NAME")}"
    user = System.getenv("FASAN_DB_USER")
    password = System.getenv("FASAN_DB_PASSWORD")
}
