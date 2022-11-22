CREATE TABLE DateDim(
    DateKey int NOT NULL IDENTITY(1, 1),
    CalendarDate date NOT NULL,
    DayOfWeek int NOT NULL,
    DayOfWeekName varchar(50) NOT NULL,
    DayOfMonth int NOT NULL,
    DayOfYear int NOT NULL,
    LastDayOfMonthInd int NOT NULL,
    CalendarWeekOfYear int NOT NULL,
    CalendarMonthName varchar(50) NOT NULL,
    CalendarMonthNumber int NOT NULL,
    CalendarYearMonth varchar(30) NOT NULL,
    CalendarQuarter int NOT NULL,
    CalendarYearQuarter varchar(30) NOT NULL,
    CalendarYear varchar(4) NOT NULL,
    WeekdayInd int NOT NULL
);

GO
    CREATE TABLE CarDim(
        CarKey int NOT NULL IDENTITY(1, 1),
        CarID varchar(255) NOT NULL,
        Company varchar(30) NOT NULL,
        Model varchar(30) NOT NULL,
        YearManufactured varchar(30) NOT NULL,
        BodyStyle varchar(15) NOT NULL,
        Engine varchar(30) NOT NULL,
        Transmission varchar(15) NOT NULL,
        Color varchar(30) NOT NULL,
        PriceInThousand int NOT NULL,
        ActiveInd smallint NOT NULL DEFAULT 1
    );

GO
    CREATE TABLE CustomerDim(
        CustomerKey int IDENTITY(1, 1) NOT NULL,
        CustomerID varchar(255) NOT NULL,
        CustomerName varchar(50) NOT NULL,
        CustomerAddress varchar(100) NOT NULL,
        Gender varchar(50) NULL,
        AnnualIncome int NOT NULL,
        Phone varchar(15) NOT NULL,
        ActiveInd smallint NOT NULL DEFAULT 1
    );

GO
    CREATE TABLE DealerDim(
        DealerKey int IDENTITY(1, 1) NOT NULL,
        DealerID varchar(255) NOT NULL,
        DealerName varchar(100) NOT NULL,
        DealerAddress varchar(100) NOT NULL,
        DealerLocation varchar(100) NOT NULL,
        DealerNo varchar(15) NOT NULL,
        DealerRegion varchar(30) NOT NULL,
        ActiveInd smallint NOT NULL DEFAULT 1
    );

GO
    CREATE TABLE CouncilDim(
        CouncilKey int IDENTITY(1, 1) NOT NULL,
        CouncilID varchar(255) NOT NULL,
        CouncilArea varchar(50) NOT NULL,
        ActiveInd smallint NOT NULL DEFAULT 1
    );

GO
alter table
    DateDim
add
    primary key (DateKey);

alter table
    CarDim
add
    primary key (CarKey);

alter table
    CustomerDim
add
    primary key (CustomerKey);

alter table
    DealerDim
add
    primary key (DealerKey);

alter table
    CouncilDim
add
    primary key (CouncilKey);

GO