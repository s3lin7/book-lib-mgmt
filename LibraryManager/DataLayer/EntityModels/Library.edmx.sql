
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/01/2014 23:59:31
-- Generated from EDMX file: D:\git\book-lib-mgmt\LibraryManager\DataLayer\EntityModels\Library.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [library];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_BookBook_Author]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Book_Author] DROP CONSTRAINT [FK_BookBook_Author];
GO
IF OBJECT_ID(N'[dbo].[FK_AuthorBook_Author]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Book_Author] DROP CONSTRAINT [FK_AuthorBook_Author];
GO
IF OBJECT_ID(N'[dbo].[FK_BookBook_Borrowed]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Book_Borrowed] DROP CONSTRAINT [FK_BookBook_Borrowed];
GO
IF OBJECT_ID(N'[dbo].[FK_MemberBook_Borrowed]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Book_Borrowed] DROP CONSTRAINT [FK_MemberBook_Borrowed];
GO
IF OBJECT_ID(N'[dbo].[FK_MemberMember_MembershipPlan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Member_MembershipPlan] DROP CONSTRAINT [FK_MemberMember_MembershipPlan];
GO
IF OBJECT_ID(N'[dbo].[FK_MembershipPlanMember_MembershipPlan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Member_MembershipPlan] DROP CONSTRAINT [FK_MembershipPlanMember_MembershipPlan];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Books1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Books1];
GO
IF OBJECT_ID(N'[dbo].[Authors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Authors];
GO
IF OBJECT_ID(N'[dbo].[Book_Author]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Book_Author];
GO
IF OBJECT_ID(N'[dbo].[Members]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Members];
GO
IF OBJECT_ID(N'[dbo].[Book_Borrowed]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Book_Borrowed];
GO
IF OBJECT_ID(N'[dbo].[Admins]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Admins];
GO
IF OBJECT_ID(N'[dbo].[MembershipPlans]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MembershipPlans];
GO
IF OBJECT_ID(N'[dbo].[Member_MembershipPlan]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Member_MembershipPlan];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Books'
CREATE TABLE [dbo].[Books] (
    [BookId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [ISBN] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Category] nvarchar(max)  NOT NULL,
    [PublicationDate] datetime  NOT NULL,
    [NumberOfCopies] int  NOT NULL
);
GO

-- Creating table 'Authors'
CREATE TABLE [dbo].[Authors] (
    [AuthorId] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Books_Authors'
CREATE TABLE [dbo].[Books_Authors] (
    [BookId] int  NOT NULL,
    [AuthorId] int  NOT NULL,
    [Book_BookId] int  NOT NULL,
    [Author_AuthorId] int  NOT NULL
);
GO

-- Creating table 'Members'
CREATE TABLE [dbo].[Members] (
    [MemberId] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [JoiningDate] datetime  NOT NULL
);
GO

-- Creating table 'Books_Borrowed'
CREATE TABLE [dbo].[Books_Borrowed] (
    [BookId] int  NOT NULL,
    [MemberId] int  NOT NULL,
    [BorrowedOn] datetime  NOT NULL,
    [DueDate] datetime  NOT NULL,
    [Returned] bit  NOT NULL,
    [ReturnDate] datetime  NOT NULL,
    [Book_BookId] int  NOT NULL,
    [Member_MemberId] int  NOT NULL
);
GO

-- Creating table 'Admins'
CREATE TABLE [dbo].[Admins] (
    [AdminId] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'MembershipPlans'
CREATE TABLE [dbo].[MembershipPlans] (
    [MembershipPlanId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Fee] nvarchar(max)  NOT NULL,
    [DueDateLimit] nvarchar(max)  NOT NULL,
    [NumberOfBooks] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Members_MembershipPlans'
CREATE TABLE [dbo].[Members_MembershipPlans] (
    [MemberId] int  NOT NULL,
    [MembershipPlanId] int  NOT NULL,
    [Member_MemberId] int  NOT NULL,
    [MembershipPlan_MembershipPlanId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [BookId] in table 'Books'
ALTER TABLE [dbo].[Books]
ADD CONSTRAINT [PK_Books]
    PRIMARY KEY CLUSTERED ([BookId] ASC);
GO

-- Creating primary key on [AuthorId] in table 'Authors'
ALTER TABLE [dbo].[Authors]
ADD CONSTRAINT [PK_Authors]
    PRIMARY KEY CLUSTERED ([AuthorId] ASC);
GO

-- Creating primary key on [BookId], [AuthorId] in table 'Books_Authors'
ALTER TABLE [dbo].[Books_Authors]
ADD CONSTRAINT [PK_Books_Authors]
    PRIMARY KEY CLUSTERED ([BookId], [AuthorId] ASC);
GO

-- Creating primary key on [MemberId] in table 'Members'
ALTER TABLE [dbo].[Members]
ADD CONSTRAINT [PK_Members]
    PRIMARY KEY CLUSTERED ([MemberId] ASC);
GO

-- Creating primary key on [BookId], [MemberId] in table 'Books_Borrowed'
ALTER TABLE [dbo].[Books_Borrowed]
ADD CONSTRAINT [PK_Books_Borrowed]
    PRIMARY KEY CLUSTERED ([BookId], [MemberId] ASC);
GO

-- Creating primary key on [AdminId] in table 'Admins'
ALTER TABLE [dbo].[Admins]
ADD CONSTRAINT [PK_Admins]
    PRIMARY KEY CLUSTERED ([AdminId] ASC);
GO

-- Creating primary key on [MembershipPlanId] in table 'MembershipPlans'
ALTER TABLE [dbo].[MembershipPlans]
ADD CONSTRAINT [PK_MembershipPlans]
    PRIMARY KEY CLUSTERED ([MembershipPlanId] ASC);
GO

-- Creating primary key on [MemberId], [MembershipPlanId] in table 'Members_MembershipPlans'
ALTER TABLE [dbo].[Members_MembershipPlans]
ADD CONSTRAINT [PK_Members_MembershipPlans]
    PRIMARY KEY CLUSTERED ([MemberId], [MembershipPlanId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Book_BookId] in table 'Books_Authors'
ALTER TABLE [dbo].[Books_Authors]
ADD CONSTRAINT [FK_BookBook_Author]
    FOREIGN KEY ([Book_BookId])
    REFERENCES [dbo].[Books]
        ([BookId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BookBook_Author'
CREATE INDEX [IX_FK_BookBook_Author]
ON [dbo].[Books_Authors]
    ([Book_BookId]);
GO

-- Creating foreign key on [Author_AuthorId] in table 'Books_Authors'
ALTER TABLE [dbo].[Books_Authors]
ADD CONSTRAINT [FK_AuthorBook_Author]
    FOREIGN KEY ([Author_AuthorId])
    REFERENCES [dbo].[Authors]
        ([AuthorId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AuthorBook_Author'
CREATE INDEX [IX_FK_AuthorBook_Author]
ON [dbo].[Books_Authors]
    ([Author_AuthorId]);
GO

-- Creating foreign key on [Book_BookId] in table 'Books_Borrowed'
ALTER TABLE [dbo].[Books_Borrowed]
ADD CONSTRAINT [FK_BookBook_Borrowed]
    FOREIGN KEY ([Book_BookId])
    REFERENCES [dbo].[Books]
        ([BookId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BookBook_Borrowed'
CREATE INDEX [IX_FK_BookBook_Borrowed]
ON [dbo].[Books_Borrowed]
    ([Book_BookId]);
GO

-- Creating foreign key on [Member_MemberId] in table 'Books_Borrowed'
ALTER TABLE [dbo].[Books_Borrowed]
ADD CONSTRAINT [FK_MemberBook_Borrowed]
    FOREIGN KEY ([Member_MemberId])
    REFERENCES [dbo].[Members]
        ([MemberId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MemberBook_Borrowed'
CREATE INDEX [IX_FK_MemberBook_Borrowed]
ON [dbo].[Books_Borrowed]
    ([Member_MemberId]);
GO

-- Creating foreign key on [Member_MemberId] in table 'Members_MembershipPlans'
ALTER TABLE [dbo].[Members_MembershipPlans]
ADD CONSTRAINT [FK_MemberMember_MembershipPlan]
    FOREIGN KEY ([Member_MemberId])
    REFERENCES [dbo].[Members]
        ([MemberId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MemberMember_MembershipPlan'
CREATE INDEX [IX_FK_MemberMember_MembershipPlan]
ON [dbo].[Members_MembershipPlans]
    ([Member_MemberId]);
GO

-- Creating foreign key on [MembershipPlan_MembershipPlanId] in table 'Members_MembershipPlans'
ALTER TABLE [dbo].[Members_MembershipPlans]
ADD CONSTRAINT [FK_MembershipPlanMember_MembershipPlan]
    FOREIGN KEY ([MembershipPlan_MembershipPlanId])
    REFERENCES [dbo].[MembershipPlans]
        ([MembershipPlanId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MembershipPlanMember_MembershipPlan'
CREATE INDEX [IX_FK_MembershipPlanMember_MembershipPlan]
ON [dbo].[Members_MembershipPlans]
    ([MembershipPlan_MembershipPlanId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------