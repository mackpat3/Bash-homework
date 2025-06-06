#!/bin/bash

read -p "In what year were you born? " year

current_age=$((2025-$year))

echo "In 2025, you will be $current_age"

age_2020=$((2020-$year))

echo "In 2020, you were $age_2020"

age_2030=$((2030-$year))

echo "In 2030, you will be $age_2030"


