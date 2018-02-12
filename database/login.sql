CREATE TABLE `tr2018_user` (
`user_id` int(11) NOT NULL,
`user_name` varchar(50) NOT NULL,
`user_email` varchar(50) NOT NULL,
`user_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tr2018_user` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(1, 'admin', 'informativa@aaue.pt', MD5('info2018admin')),
(2, 'desportiva', 'desportiva@aaue.pt', MD5('EditReitor2018'));