
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/12/2018 02:04:18
-- Generated from EDMX file: C:\Users\Amankeldi Kairbay\source\repos\EntityFrameworkDz03ModelFirst\EntityFrameworkDz03ModelFirst\Model\TestDB.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [BookStore];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Universities'
CREATE TABLE [dbo].[Universities] (
    [UniversityId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Rating] int  NOT NULL,
    [City] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Students'
CREATE TABLE [dbo].[Students] (
    [StudentId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Surname] nvarchar(max)  NOT NULL,
    [Stipend] int  NOT NULL,
    [Kurs] int  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [BirthDay] datetime  NOT NULL,
    [UniversityId] int  NOT NULL,
    [UniversityUniversityId] int  NOT NULL
);
GO

-- Creating table 'LecturerSet'
CREATE TABLE [dbo].[LecturerSet] (
    [LecturerId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Surname] nvarchar(max)  NOT NULL,
    [City] nvarchar(max)  NOT NULL,
    [UniversityId] int  NOT NULL,
    [UniversityUniversityId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [UniversityId] in table 'Universities'
ALTER TABLE [dbo].[Universities]
ADD CONSTRAINT [PK_Universities]
    PRIMARY KEY CLUSTERED ([UniversityId] ASC);
GO

-- Creating primary key on [StudentId] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [PK_Students]
    PRIMARY KEY CLUSTERED ([StudentId] ASC);
GO

-- Creating primary key on [LecturerId] in table 'LecturerSet'
ALTER TABLE [dbo].[LecturerSet]
ADD CONSTRAINT [PK_LecturerSet]
    PRIMARY KEY CLUSTERED ([LecturerId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UniversityUniversityId] in table 'LecturerSet'
ALTER TABLE [dbo].[LecturerSet]
ADD CONSTRAINT [FK_UniversityLecturer]
    FOREIGN KEY ([UniversityUniversityId])
    REFERENCES [dbo].[Universities]
        ([UniversityId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UniversityLecturer'
CREATE INDEX [IX_FK_UniversityLecturer]
ON [dbo].[LecturerSet]
    ([UniversityUniversityId]);
GO

-- Creating foreign key on [UniversityUniversityId] in table 'Students'
ALTER TABLE [dbo].[Students]
ADD CONSTRAINT [FK_UniversityStudent]
    FOREIGN KEY ([UniversityUniversityId])
    REFERENCES [dbo].[Universities]
        ([UniversityId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UniversityStudent'
CREATE INDEX [IX_FK_UniversityStudent]
ON [dbo].[Students]
    ([UniversityUniversityId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------