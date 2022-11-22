CREATE TABLE SalesFact(
    DateKey int NOT NULL,
    CarKey int NOT NULL,
    CustomerKey int NOT NULL,
    DealerKey int NOT NULL,
    CouncilKey int NOT NULL,
    PriceInThousand int NOT NULL,
    AnnualIncome int NOT NULL
);

GO

alter table SalesFact add constraint FKSalesDate foreign key (DateKey) references DateDim (DateKey);
alter table SalesFact add constraint FKSalesCar foreign key (CarKey) references CarDim (CarKey);
alter table SalesFact add constraint FKSalesCustomer foreign key (CustomerKey) references CustomerDim (CustomerKey);
alter table SalesFact add constraint FKSalesDealer foreign key (DealerKey) references DealerDim (DealerKey);
alter table SalesFact add constraint FKSalesCouncil foreign key (CouncilKey) references CouncilDim (CouncilKey);

GO




