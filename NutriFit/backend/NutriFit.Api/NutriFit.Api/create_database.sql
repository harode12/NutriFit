-- =============================================
-- Complete Database Creation Script for NutriFit
-- Run this on your Azure SQL Database
-- =============================================

-- Create Migration History Table
CREATE TABLE [__EFMigrationsHistory] (
    [MigrationId] nvarchar(150) NOT NULL,
    [ProductVersion] nvarchar(32) NOT NULL,
    CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
);
GO

-- =============================================
-- Migration 1: InitialCreate
-- =============================================
CREATE TABLE [Users] (
    [UserId] int NOT NULL IDENTITY(1,1),
    [Name] nvarchar(max) NULL,
    [Email] nvarchar(max) NULL,
    [Password] nvarchar(max) NULL,
    [CreatedAt] datetime2 NOT NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY ([UserId])
);
GO

CREATE TABLE [UserProfiles] (
    [ProfileId] int NOT NULL IDENTITY(1,1),
    [UserId] int NOT NULL,
    [Age] int NOT NULL,
    [Gender] nvarchar(max) NULL,
    [Height] decimal(18,2) NOT NULL,
    [Weight] decimal(18,2) NOT NULL,
    [ActivityLevel] nvarchar(max) NULL,
    [Goal] nvarchar(max) NULL,
    [FoodPreference] nvarchar(max) NULL,
    [Bmi] decimal(18,2) NOT NULL,
    [WeightCategory] nvarchar(max) NULL,
    CONSTRAINT [PK_UserProfiles] PRIMARY KEY ([ProfileId]),
    CONSTRAINT [FK_UserProfiles_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [Users] ([UserId]) ON DELETE CASCADE
);
GO

CREATE INDEX [IX_UserProfiles_UserId] ON [UserProfiles] ([UserId]);
GO

-- =============================================
-- Migration 2: AddAdminTable
-- =============================================
CREATE TABLE [Admins] (
    [AdminId] int NOT NULL IDENTITY(1,1),
    [Name] nvarchar(max) NULL,
    [Email] nvarchar(max) NULL,
    [Password] nvarchar(max) NULL,
    [CreatedAt] datetime2 NOT NULL,
    CONSTRAINT [PK_Admins] PRIMARY KEY ([AdminId])
);
GO

-- =============================================
-- Migration 3: AddHealthConditionTables
-- =============================================
CREATE TABLE [HealthConditions] (
    [HealthConditionId] int NOT NULL IDENTITY(1,1),
    [Name] nvarchar(max) NULL,
    [Description] nvarchar(max) NULL,
    CONSTRAINT [PK_HealthConditions] PRIMARY KEY ([HealthConditionId])
);
GO

CREATE TABLE [UserHealthConditions] (
    [UserHealthConditionId] int NOT NULL IDENTITY(1,1),
    [UserId] int NOT NULL,
    [HealthConditionId] int NOT NULL,
    CONSTRAINT [PK_UserHealthConditions] PRIMARY KEY ([UserHealthConditionId]),
    CONSTRAINT [FK_UserHealthConditions_HealthConditions_HealthConditionId] FOREIGN KEY ([HealthConditionId]) REFERENCES [HealthConditions] ([HealthConditionId]) ON DELETE CASCADE,
    CONSTRAINT [FK_UserHealthConditions_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [Users] ([UserId]) ON DELETE CASCADE
);
GO

CREATE INDEX [IX_UserHealthConditions_HealthConditionId] ON [UserHealthConditions] ([HealthConditionId]);
CREATE INDEX [IX_UserHealthConditions_UserId] ON [UserHealthConditions] ([UserId]);
GO

-- =============================================
-- Migration 4: AddWorkoutEngine
-- =============================================
CREATE TABLE [WorkoutPlans] (
    [PlanId] int NOT NULL IDENTITY(1,1),
    [Goal] nvarchar(max) NULL,
    [WeightCategory] nvarchar(max) NULL,
    [ActivityLevel] nvarchar(max) NULL,
    [HealthConditionId] int NOT NULL,
    [MaxIntensity] nvarchar(max) NULL,
    CONSTRAINT [PK_WorkoutPlans] PRIMARY KEY ([PlanId])
);
GO

CREATE TABLE [Workouts] (
    [WorkoutId] int NOT NULL IDENTITY(1,1),
    [WorkoutName] nvarchar(max) NULL,
    [WorkoutType] nvarchar(max) NULL,
    [Intensity] nvarchar(max) NULL,
    [CaloriesBurnedPerMin] real NOT NULL,
    [HealthSafe] nvarchar(max) NULL,
    CONSTRAINT [PK_Workouts] PRIMARY KEY ([WorkoutId])
);
GO

CREATE TABLE [WorkoutPlanDetails] (
    [Id] int NOT NULL IDENTITY(1,1),
    [PlanId] int NOT NULL,
    [WorkoutId] int NOT NULL,
    [DayName] nvarchar(max) NULL,
    [DurationMinutes] int NOT NULL,
    [WorkoutPlanPlanId] int NULL,
    CONSTRAINT [PK_WorkoutPlanDetails] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_WorkoutPlanDetails_WorkoutPlans_WorkoutPlanPlanId] FOREIGN KEY ([WorkoutPlanPlanId]) REFERENCES [WorkoutPlans] ([PlanId]),
    CONSTRAINT [FK_WorkoutPlanDetails_Workouts_WorkoutId] FOREIGN KEY ([WorkoutId]) REFERENCES [Workouts] ([WorkoutId]) ON DELETE CASCADE
);
GO

CREATE INDEX [IX_WorkoutPlanDetails_WorkoutId] ON [WorkoutPlanDetails] ([WorkoutId]);
CREATE INDEX [IX_WorkoutPlanDetails_WorkoutPlanPlanId] ON [WorkoutPlanDetails] ([WorkoutPlanPlanId]);
GO

-- =============================================
-- Migration 5: DietModule
-- =============================================
CREATE TABLE [DietPlanFoods] (
    [Id] int NOT NULL IDENTITY(1,1),
    [DietId] int NOT NULL,
    [FoodId] int NOT NULL,
    [MealType] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_DietPlanFoods] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [DietPlans] (
    [DietId] int NOT NULL IDENTITY(1,1),
    [Goal] nvarchar(max) NOT NULL,
    [ConditionId] int NOT NULL,
    [FoodPreference] nvarchar(max) NOT NULL,
    [WeightCategory] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_DietPlans] PRIMARY KEY ([DietId])
);
GO

CREATE TABLE [Foods] (
    [FoodId] int NOT NULL IDENTITY(1,1),
    [FoodName] nvarchar(max) NOT NULL,
    [FoodType] nvarchar(max) NOT NULL,
    [Calories] decimal(6,2) NOT NULL,
    [Protein] decimal(6,2) NOT NULL,
    [Carbs] decimal(6,2) NOT NULL,
    [Fat] decimal(6,2) NOT NULL,
    [GlycemicIndex] nvarchar(max) NOT NULL,
    [SodiumContent] decimal(6,2) NOT NULL,
    CONSTRAINT [PK_Foods] PRIMARY KEY ([FoodId])
);
GO

CREATE TABLE [MealLogs] (
    [MealId] int NOT NULL IDENTITY(1,1),
    [UserId] int NOT NULL,
    [FoodId] int NOT NULL,
    [MealType] nvarchar(max) NOT NULL,
    [Quantity] decimal(6,2) NOT NULL,
    [Date] datetime2 NOT NULL,
    CONSTRAINT [PK_MealLogs] PRIMARY KEY ([MealId])
);
GO

-- =============================================
-- Migration 6: AddGoalAndProgress
-- =============================================
CREATE TABLE [Goals] (
    [GoalId] int NOT NULL IDENTITY(1,1),
    [UserId] int NOT NULL,
    [GoalType] nvarchar(max) NOT NULL,
    [TargetValue] float NOT NULL,
    [StartDate] datetime2 NOT NULL,
    [EndDate] datetime2 NOT NULL,
    [Status] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_Goals] PRIMARY KEY ([GoalId]),
    CONSTRAINT [FK_Goals_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [Users] ([UserId]) ON DELETE CASCADE
);
GO

CREATE TABLE [ProgressLogs] (
    [ProgressId] int NOT NULL IDENTITY(1,1),
    [UserId] int NOT NULL,
    [Weight] float NOT NULL,
    [Bmi] float NOT NULL,
    [WeightCategory] nvarchar(max) NOT NULL,
    [Date] datetime2 NOT NULL,
    CONSTRAINT [PK_ProgressLogs] PRIMARY KEY ([ProgressId]),
    CONSTRAINT [FK_ProgressLogs_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [Users] ([UserId]) ON DELETE CASCADE
);
GO

CREATE INDEX [IX_Goals_UserId] ON [Goals] ([UserId]);
CREATE INDEX [IX_ProgressLogs_UserId] ON [ProgressLogs] ([UserId]);
GO

-- =============================================
-- Migration 7: AddUserWorkoutAndDiet
-- =============================================
CREATE TABLE [UserDietFoods] (
    [UserDietFoodId] int NOT NULL IDENTITY(1,1),
    [UserId] int NOT NULL,
    [FoodId] int NOT NULL,
    [MealType] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_UserDietFoods] PRIMARY KEY ([UserDietFoodId]),
    CONSTRAINT [FK_UserDietFoods_Foods_FoodId] FOREIGN KEY ([FoodId]) REFERENCES [Foods] ([FoodId]) ON DELETE CASCADE,
    CONSTRAINT [FK_UserDietFoods_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [Users] ([UserId]) ON DELETE CASCADE
);
GO

CREATE TABLE [UserWorkouts] (
    [UserWorkoutId] int NOT NULL IDENTITY(1,1),
    [UserId] int NOT NULL,
    [WorkoutId] int NOT NULL,
    [DayName] nvarchar(max) NOT NULL,
    [DurationMinutes] int NULL,
    CONSTRAINT [PK_UserWorkouts] PRIMARY KEY ([UserWorkoutId]),
    CONSTRAINT [FK_UserWorkouts_Users_UserId] FOREIGN KEY ([UserId]) REFERENCES [Users] ([UserId]) ON DELETE CASCADE,
    CONSTRAINT [FK_UserWorkouts_Workouts_WorkoutId] FOREIGN KEY ([WorkoutId]) REFERENCES [Workouts] ([WorkoutId]) ON DELETE CASCADE
);
GO

CREATE INDEX [IX_UserDietFoods_FoodId] ON [UserDietFoods] ([FoodId]);
CREATE INDEX [IX_UserDietFoods_UserId] ON [UserDietFoods] ([UserId]);
CREATE INDEX [IX_UserWorkouts_UserId] ON [UserWorkouts] ([UserId]);
CREATE INDEX [IX_UserWorkouts_WorkoutId] ON [UserWorkouts] ([WorkoutId]);
GO

-- =============================================
-- Migration 8: AddResetPasswordFields
-- =============================================
ALTER TABLE [Users] ADD [ResetToken] nvarchar(max) NULL;
ALTER TABLE [Users] ADD [ResetTokenExpiry] datetime2 NULL;
GO

-- =============================================
-- Record all migrations as applied
-- =============================================
INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES
('20260124115607_InitialCreate', '8.0.4'),
('20260125035752_AddAdminTable', '8.0.4'),
('20260125042506_AddHealthConditionTables', '8.0.4'),
('20260125083923_AddWorkoutEngine', '8.0.4'),
('20260125100841_DietModule', '8.0.4'),
('20260126190143_AddGoalAndProgress', '8.0.4'),
('20260129090621_AddUserWorkoutAndDiet', '8.0.4'),
('20260129131727_AddResetPasswordFields', '8.0.4');
GO
