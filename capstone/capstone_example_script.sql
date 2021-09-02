CREATE TABLE `Users` (
                         `id` bigint  not null auto_increment,
                         `full_name` varchar(75) not null,
                         `username` varchar(100) not null,
                         `email` varchar(100) not null,
                         `password` varchar(100) not null,
                         `bio` text not null,
                         `zipcode` varchar(5) not null,
                         `role` char,
                         PRIMARY KEY (`id`)
);

CREATE TABLE `Types` (
                         `id` bigint auto_increment,
                         `type` varchar(100) not null,
                         PRIMARY KEY (`id`)
);

CREATE TABLE `Events` (
                          `id` bigint auto_increment,
                          `owner_id` bigint not null,
                          `event_type` varchar(50) not null,
                          `title` varchar(150) not null,
                          `description` text not null,
                          `date_created` datetime not null,
                          `event_date` datetime,
                          `location_id` bigint not null,
                          `outdoor` tinyint(1) not null,
                          PRIMARY KEY (`id`),
                          FOREIGN KEY (`owner_id`) REFERENCES `Users`(`id`),
                          FOREIGN KEY (`event_type`) REFERENCES `Types`(`type`)
);

CREATE TABLE `users_event_types` (
                                     `user_id` bigint,
                                     `type_id` bigint,
                                     FOREIGN KEY (`user_id`) REFERENCES `Users`(`id`),
                                     FOREIGN KEY (`type_id`) REFERENCES `Types`(`id`)
);

CREATE TABLE `Posts` (
                         `id` bigint auto_increment,
                         `event_type` varchar(100),
                         `title` varchar(150) not null,
                         `body` text not null,
                         `create_date` datetime not null,
                         `user_id` bigint,
                         PRIMARY KEY (`id`),
                         FOREIGN KEY (`event_type`) REFERENCES `Types`(`type`),
                         FOREIGN KEY (`user_id`) REFERENCES `Users`(`id`)
);

CREATE TABLE `Comments` (
                            `id` bigint auto_increment,
                            `title` varchar(150),
                            `content` text not null,
                            `posted_date` datetime not null,
                            `user_id` bigint,
                            `event_id` bigint,
                            `post_id` bigint,
                            PRIMARY KEY (`id`),
                            FOREIGN KEY (`event_id`) REFERENCES `Events`(`id`),
                            FOREIGN KEY (`post_id`) REFERENCES `Posts`(`id`),
                            FOREIGN KEY (`user_id`) REFERENCES `Users`(`id`)
);

CREATE TABLE `User_event` (
                              `user_id` bigint,
                              `event_id` bigint,
                              FOREIGN KEY (`event_id`) REFERENCES `Events`(`id`),
                              FOREIGN KEY (`user_id`) REFERENCES `Users`(`id`)
);

CREATE TABLE `Locations` (
                             `id` bigint auto_increment,
                             `address` varchar(255),
                             `lat` float not null,
                             `long` float not null,
                             `zipcode` varchar(5) not null,
                             PRIMARY KEY (`id`)
);

CREATE TABLE `Recurring_events` (
                                    `event_id` bigint,
                                    `additional_date` datetime,
                                    FOREIGN KEY (`event_id`) REFERENCES `Events`(`id`)
);

