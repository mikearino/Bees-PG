# Beekeeping SQL (Postgres)

SQL portfolio project to show schema design + queries. **Readable on GitHub** and **runnable with or without Docker**.

---

## Browse only (no setup)
- Schema: [`schema.sql`](./schema.sql)
- Seed data: [`seed.sql`](./seed.sql)
- Queries: [`queries/`](./queries)
- (Optional) CSV previews: [`data/`](./data)
- (Optional) Screenshots: [`screenshots/`](./screenshots)

---

## Run locally (no Docker)
Use any Postgres you already have installed (or connect via DataGrip).

```bash
createdb bees_db
psql -d bees_db -f schema.sql
psql -d bees_db -f seed.sql
```

Prefer a GUI? In DataGrip: connect > open schema.sql > Run; then seed.sql > Run.

## Run With Docker (optional)

```bash
docker run --name bees-pg \
  -e POSTGRES_USER=beekeeper \
  -e POSTGRES_PASSWORD=changeme \
  -e POSTGRES_DB=bees_db \
  -p 5432:5432 -d postgres:16

psql -h localhost -U beekeeper -d bees_db -f schema.sql
psql -h localhost -U beekeeper -d bees_db -f seed.sql
```

## Schema at a Glance

```sql

DROP TABLE IF EXISTS beekeepers;

CREATE TABLE beekeepers (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  age INT NOT NULL,
  exp_years INT NOT NULL,
  location TEXT NOT NULL
);

```

## Project Structure

```text
beekeeping-sql/
├─ README.md
├─ schema.sql
├─ seed.sql
├─ queries/
│  └─ 
├─ data/          # CSV snapshots for quick viewing
└─ screenshots/   # query results / ERD
```