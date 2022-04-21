-- (A) ROLES TABLE
CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT;

-- (B) PERMISSIONS TABLE
CREATE TABLE `permissions` (
  `perm_id` int(11) NOT NULL,
  `perm_mod` varchar(5) NOT NULL,
  `perm_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `permissions`
  ADD PRIMARY KEY (`perm_id`),
  ADD KEY `perm_mod` (`perm_mod`);

ALTER TABLE `permissions`
  MODIFY `perm_id` int(11) NOT NULL AUTO_INCREMENT;

-- (C) ROLE PERMISSIONS
CREATE TABLE `roles_permissions` (
  `role_id` int(11) NOT NULL,
  `perm_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`role_id`,`perm_id`);
