#!/bin/bash
echo "Removing 'Gemfile.lock'..."
rm Gemfile.lock && echo "Done."

echo "Restoring Gemfile..."
git restore Gemfile && echo "Done."

echo "Removing config_files/bots.json..."
rm config_files/bots.json && echo "Done."

echo "Removing all migration files..."
rm db/migrations/*.rb && echo "Done."

echo "Removing the database file..."
rm db/data.db && echo "Done."