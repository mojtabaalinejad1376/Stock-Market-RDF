create table stockmarket.stockmarket.company
(
    "id" INTEGER,
    "symbol" VARCHAR (255) NOT NULL,
    "name" VARCHAR (255) NOT NULL,
    "sector" VARCHAR (255) NOT NULL,
    "industry" VARCHAR (255) NOT NULL,
    "market_cap" BIGINT NOT NULL,
    "pe_ratio" FLOAT NOT NULL,
    "eps" FLOAT NOT NULL,
	"dbpedia_id" INTEGER,
	"country_geo_id" INTEGER,
	"city_geo_id" INTEGER,
	"country_dbpedia_id" INTEGER,
	"city_dbpedia_id" INTEGER,
	PRIMARY KEY (id)
)

create table stockmarket.stockmarket.history
(
    "id" INTEGER,
    "symbol_id" INTEGER,
    "date" DATE NOT NULL,
    "open" FLOAT NOT NULL,
    "high" FLOAT NOT NULL,
    "low" FLOAT NOT NULL,
    "close" FLOAT NOT NULL,
    "volume" BIGINT NOT NULL,
    FOREIGN KEY (symbol_id) REFERENCES "stockmarket"."stockmarket"."company" (id) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (id)
)