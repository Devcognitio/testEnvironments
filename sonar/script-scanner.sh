   --rm \
    -e SONAR_HOST_URL="http://localhost:9000" \
    -e SONAR_SCANNER_OPTS="-Dsonar.projectKey=petbook" \
    -e SONAR_LOGIN="sqp_2290212ba47917d15460414d584000a87dab1ddc" \
    -v "${RUTA_ABSOLUTA_REPO}:/usr/src" \
    --network="host" \
    sonarsource/sonar-scanner-cli