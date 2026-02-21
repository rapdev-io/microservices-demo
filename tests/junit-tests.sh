#!/bin/bash
# Generate JUnit XML test results: 5 tests (4 pass, 1 fail)

mkdir -p test-results

cat > test-results/results.xml <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<testsuite name="SwagstoreTests" tests="5" failures="1" errors="0" skipped="0" time="0.120">
  <testcase name="homepage_loads_successfully" classname="SwagstoreTests" time="0.025"/>
  <testcase name="product_catalog_returns_items" classname="SwagstoreTests" time="0.030"/>
  <testcase name="cart_add_item" classname="SwagstoreTests" time="0.020"/>
  <testcase name="currency_conversion_valid" classname="SwagstoreTests" time="0.015"/>
  <testcase name="checkout_flow_complete" classname="SwagstoreTests" time="0.030">
    <failure message="Checkout total mismatch">Expected total $59.99 but got $61.14</failure>
  </testcase>
</testsuite>
EOF

echo "JUnit test results written to test-results/results.xml"
