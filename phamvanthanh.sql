-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2022 at 11:06 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phamvanthanh`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(2, 'Phát triển thành phố'),
(1, 'Thành lập thành phố'),
(3, 'Con người thành phố');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_date` date NOT NULL,
  `post_like` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_photo`, `post_content`, `post_date`, `post_like`) VALUES
(1, 'Chính thức thành lập thành phố Thủ Đức.', 'p1.jpg', 'Sáng 31-12, UBND TP.HCM đã tổ chức lễ công bố nghị quyết của Ủy ban Thường vụ Quốc hội về việc sắp xếp các đơn vị hành chính cấp huyện, xã và thành lập TP Thủ Đức thuộc TP.HCM. Hơn 400 đại biểu đã có mặt tại trụ sở UBND quận 2 - điểm cầu chính - để dự lễ công bố Nghị quyết thành lập TP Thủ Đức. Ngoài ra, tại hai điểm cầu trực tiếp cho cán bộ và người dân tại quận 9 và Thủ Đức có khoảng 750 người tham dự. Đến dự điểm cầu chính có nguyên thường trực Ban Bí thư Lê Hồng Anh, nguyên Phó thủ tướng Trương Vĩnh Trọng; Ủy viên Bộ Chính trị, theo dõi và chỉ đạo Đảng bộ, Trưởng Đoàn đại biểu Quốc hội TP.HCM Nguyễn Thiện Nhân; Bí thư Thành ủy TP.HCM Nguyễn Văn Nên cùng nhiều lãnh đạo, nguyên lãnh đạo Đảng, Nhà nước và TP.HCM. Phó chủ tịch Quốc hội Uông Chu Lưu đã trao Nghị quyết của Ủy ban Thường vụ Quốc hội về thành lập TP Thủ Đức thuộc TP.HCM cho lãnh đạo TP.HCM. Ông Uông Chu Lưu cho biết thành lập TP Thủ Đức không chỉ là sự kiện đặc biệt quan trọng với người dân 3 quận mà còn là cột mốc phát triển của TP.HCM trong hội nhập quốc tế, và đề nghị TP.HCM sớm trình ban hành cơ chế, chính sách đặc thù phát triển TP Thủ Đức.', '2020-12-31', 0),
(2, 'Thành lập thành phố Thủ Đức.', 'p2.jpg', 'Ủy ban Thường vụ Quốc hội thông qua nghị quyết thành lập thành phố Thủ Đức thuộc TP HCM với tỷ lệ đồng ý 100%, chiều 9/12. Nghị quyết có hiệu lực thi hành từ 1/1/2021. TP Thủ Đức được thành lập trên cơ sở nhập toàn bộ diện tích tự nhiên và dân số của Quận 2, Quận 9 và quận Thủ Đức. Sau khi thành lập, TP Thủ Đức rộng trên 211 km2 diện tích tự nhiên và quy mô dân số hơn một triệu người; nằm giáp Quận 1, Quận 4, Quận 7, Quận 12, quận Bình Thạnh; tỉnh Đồng Nai và tỉnh Bình Dương. Uỷ ban thường vụ Quốc hội giải thể Tòa án nhân dân, Viện kiểm sát nhân dân Quận 2, Quận 9 và quận Thủ Đức để thành lập Tòa án nhân dân, Viện Kiểm sát nhân dân TP Thủ Đức. Tại phiên họp, trình bày quan điểm của Chính phủ về sự cần thiết lập TP Thủ Đức, Bộ trưởng Nội vụ Lê Vĩnh Tân nói khu vực quận 2, quận 9 và quận Thủ Đức hiện nay có vị trí quan trọng trong vùng kinh tế trọng điểm phía Nam, là đầu mối của các tuyến giao thông huyết mạch giữa TP HCM và các tỉnh Đông Nam Bộ như: cao tốc TP HCM - Long Thành - Dầu Giây, xa lộ Hà Nội, quốc lộ 1A, đường Phạm Văn Đồng - quốc lộ 1K, quốc lộ 52...', '2020-12-09', 0),
(3, 'Đồng ý chủ trương thành lập TP.Thủ Đức', 'p3.jpg', 'Văn phòng Chính phủ vừa thông báo kết luận của Ủy viên Bộ Chính trị - Phó thủ tướng thường trực Trương Hòa Bình về Đề án không tổ chức HĐND quận, phường tại TP.HCM và Đề án thành lập TP trực thuộc TP.HCM. Cụ thể, căn cứ các quy định pháp luật và ý kiến chỉ đạo của Thủ tướng, Phó thủ tướng thường trực Trương Hòa Bình đồng ý chủ trương thành lập TP.Thủ Đức trên cơ sở sắp xếp 3 quận: 2, 9 và Thủ Đức theo đề án sắp xếp đơn vị hành chính cấp huyện, cấp xã giai đoạn 2019 - 2021. Việc thành lập TP.Thủ Đức theo định hướng hình thành khu đô thị sáng tạo, tương tác cao là phù hợp với chủ trương chung về phát triển kinh tế số, phát huy năng lực, đổi mới, sáng tạo. Để thu hút đầu tư vào TP.Thủ Đức, Phó thủ tướng thường trực Trương Hòa Bình lưu ý TP.HCM cần làm rõ các điểm nhấn, điểm khác biệt so với các TP trong nước cũng như các trung tâm tài chính, công nghệ trong khu vực châu Á; đồng thời hướng dẫn TP.HCM làm việc với các bộ, ngành để có thể tích hợp các đề án, chương trình liên quan vào định hướng phát triển của TP mới.', '2020-08-18', 0),
(4, 'Hiểu thế nào cho đúng về khu đô thị sáng tạo - thành phố Thủ Đức', 'p4.jpg', 'Đô thị sáng tạo là trọng tâm của các chiều kích tăng trưởng. Nơi đây là nơi hội tụ các ngành nghề khác nhau, hướng tới nục tiêu hợp tác đa ngành. Nhiều nhà phát triển kinh tế nghĩ đến thế giới về mặt ngành nghề (ví dụ như nông nghiệp, hàng không vũ trụ, chăm sóc sức khỏe). Nhưng những nền tảng đổi mới - như công nghệ thông tin, vật liệu mới, robot học - là những công cụ hỗ trợ công nghệ phục vụ cho nhiều ngành công nghiệp. Là vườn ươm cho các công nghệ nghiên cứu trong tương lai, các khu vực khác nhau của khu đô thị sáng tạo được xác định rõ ràng hơn bởi sự liên kết ngang chứ không phải bởi cách áp đặt từ trên xuống. Như vậy, các bên liên quan cần phải xây dựng năng lực để kết nối các ngành dường như không liên quan thông qua các nghiên cứu hợp tác, hội thoại và các công nghệ liên ngành. Đô thị sáng tạo là nơi có các hoạt động sáng tạo và khởi nghiệp diễn ra với cường độ và mật độ cao. Có thể nói đô thị sáng tạo là \" không gian sáng tạo\"  tập trung đổi mới về khoa học - kỹ thuật  và công nghệ, đa ngành với với mật đô cao.', '2020-09-24', 0),
(5, 'TP.HCM lấy ý kiến khi thành lập thành phố Thủ Đức\n', 'p5.jpg', 'Văn phòng Chính phủ vừa có thông báo kết luận của Phó thủ tướng thường trực Trương Hòa Bình về Đề án không tổ chức HĐND quận, phường tại TP.HCM và Đề án thành lập thành phố trực thuộc TP.HCM (gọi là thành phố Thủ Đức). Về đề án thành lập thành phố Thủ Đức, Thủ tướng Nguyễn Xuân Phúc đã có ý giao UBND TP.HCM xây dựng đề án, gửi xin ý kiến các Bộ, ngành, cơ quan liên quan, báo cáo Chính phủ xem xét, trình Ủy ban Thường vụ Quốc hội theo quy định. Căn cứ các quy định pháp luật và ý kiến chỉ đạo của Thủ tướng, Phó thủ tướng Trương Hòa Bình đồng ý chủ trương thành lập thành phố Thủ Đức trên cơ sở sắp xếp 3 quận: 2, 9 và Thủ Đức theo đề án sắp xếp đơn vị hành chính cấp huyện, cấp xã giai đoạn 2019 - 2021. Việc thành lập thành phố Thủ Đức theo định hướng hình thành khu đô thị sáng tạo, tương tác cao là phù hợp với chủ trương chung về phát triển kinh tế số, phát huy năng lực, đổi mới, sáng tạo. Trong quá trình xây dựng đề án, TP.HCM cần lưu ý về quy hoạch chung, tổ chức lấy ý kiến của các nhà đầu tư nước ngoài, các tập đoàn công nghệ, tài chính, bất động sản hàng đầu thế giới về định hướng xây dựng thành phố nhằm tìm hiểu nhu cầu đầu tư, yêu cầu về cơ sở hạ tầng để có thể tích hợp vào quy hoạch, định hướng chung của thành phố.\n', '2020-03-03', 0),
(6, 'Hội thảo phổ biến các hướng dẫn phòng, chống dịch COVID-19', 'p6.jpg', 'Ngày 06/9/2020, tại Thanh Hóa, dưới sự chủ trì của đồng chí Đỗ Xuân Tuyên, Thứ trưởng Bộ Y tế, Cục Quản lý môi trường - Bộ Y tế đã phối hợp với Quỹ Nhi đồng Liên hiệp quốc ở Việt Nam tổ chức Hội thảo phổ biến các hướng dẫn phòng, chống dịch COVID-19 cho các Trung tâm Y tế dự phòng, Trung tâm kiểm soát bệnh tật các tỉnh/thành phố từ Thừa Thiên – Huế trở ra. Tham dự Hội thảo, có lãnh đạo Cục Y tế dự phòng, Cục Quản lý Khám chữa bệnh, Vụ Truyền thông và Thi đua, khen thưởng, Vụ Kế hoạch tài chính, Trung tâm Truyền thông Giáo dục sức khỏe Trung ương (Bộ Y tế), Tổng liên đoàn lao động Việt Nam, Công đoàn Y tế Việt Nam. Phát biểu tại Hội thảo, Thứ trưởng Bộ Y tế Đỗ Xuân Tuyên đề nghị các đại biểu tập trung thảo luận và chỉ ra các khó khăn, vướng mắc đã gặp phải khi triển khai các hướng dẫn nói trên tại địa phương, đồng thời đề nghị các Cục, Vụ liên quan của Bộ Y tế nghiên cứu, tiếp thu và có hướng chỉnh sửa, bổ sung để hoàn thiện các Hướng dẫn phòng, chống dịch COVID-19. Thứ trưởng cũng yêu cầu ngành Y tế các địa phương phải tập trung kiểm tra, giám sát công tác phòng, chống dịch COVID-19 tại các cơ sở y tế đóng trên địa bàn mình phụ trách, đảm bảo các cơ sở y tế thực hiện nghiêm chỉnh các hướng dẫn phòng, chống dịch của Bộ Y tế, trong đó, cần thực hiện tốt công tác phân luồng khám, chữa bệnh; tập trung phát hiện các dấu hiệu mắc bệnh để chỉ định xét nghiệm kịp thời; trong công tác cách ly cần lưu ý người thuộc diện cách ly phải được cách ly tập trung đủ 14 ngày và có đủ 2 lần xét nghiệm SARS-CoV-2 âm tính mới đủ điều kiện rời khu cách ly tập trung tại các địa phương.', '2020-09-07', 0),
(7, 'Sở Y tế kích hoạt Bệnh viện điều trị COVID-19 Cần Giờ 1 trở lại', 'p7.jpg', 'Bên cạnh Bệnh viện dã chiến Củ Chi vẫn 1 liên tục từ đầu mùa dịch đến giờ (10/2/2020 – nay), Sở Y tế đã cho kích hoạt Bệnh viện điều trị COVID-19 Cần Giờ 1 trở lại kể từ 9g ngày 1/8/2020. Cả 2 bệnh viện này sẽ tiếp nhận cách ly những bệnh nhân có triệu chứng (sốt, viêm đường hô hấp, hoặc giống cảm cúm) và có tiền sử đến Đà Nẵng (từ ngày 1/7/2020 trở lại đây) đang được cách ly theo dõi và điều trị tại các khu cách ly của các bệnh viện thành phố và bệnh viện quận, huyện. Với tổng công suất lên đến 800 giường của 2 bệnh viện này (300 giường/BV dã chiến Củ Chi và 500 giường/BV điều trị COVID-19 Cần Giờ), việc tiếp nhận cách ly những bệnh nhân có triệu chứng và yếu tố dịch tễ từ các bệnh viện thành phố và bệnh viện quận, huyện chuyển đến sẽ giúp giải áp cho những bệnh viện này và chắc chắn làm giảm rủi ro lây chéo tại các bệnh viện đa khoa vốn có nhiều bệnh nhân khác. Để Bệnh viện dã chiến Củ Chi và Bệnh viện điều trị COVID-19 Cần Giờ 1, Sở Y tế phải huy động sự hỗ trợ và chia sẽ nguồn nhân lực của chính các bệnh viện thành phố và bệnh viện quận, huyện. Riêng Bệnh viện điều trị COVID-19 Cần Giờ, Sở Y tế giao Bệnh viện quận Thủ Đức (hạng 1) chịu trách nhiệm luân phiên bác sĩ, điều dưỡng đến công tác và phối hợp Bệnh viện Bệnh Nhiệt đới hỗ trợ chuyên môn khi cần thiết. Ngoài ra, còn có các y, bác sĩ của Trung tâm y tế Cần Giờ cũng tham gia chăm sóc bệnh nhân.', '2020-07-31', 0),
(8, 'TP HCM: Mỗi người dân là một chiến sĩ tham gia chống dịch', 'p8.jpg', 'UBND TP HCM vừa chỉ đạo các sở, ngành và UBND các quận, huyện, phường, xã, thị trấn tuyệt đối không chủ quan, mất cảnh giác trong 3 COVID-19; tiếp tục kiên trì thực hiện theo nguyên tắc ngăn chặn - phát hiện - cách ly - khoanh vùng - dập dịch trong đó chú trọng khâu phát hiện với phương châm trong tình hình mới là phòng dịch sớm - phát hiện kịp thời - cách ly triệt để; đồng thời phát huy tinh thần mỗi người dân là một chiến sĩ tham gia chống dịch, tự giác bảo vệ chính bản thân và gia đình trước nguy cơ dịch bệnh. Theo đó, Sở Y tế TP HCM tiếp tục tăng cường giám sát, lấy mẫu và xét nghiệm tất cả các trường hợp có triệu chứng mắc bệnh đường hô hấp hoặc viêm phổi trong cơ sở y tế cũng như các trường hợp nghi ngờ mắc COVID-19 trong cộng đồng; tổ chức giám sát trên diện rộng để phát hiện nguồn lây, đặc biệt khi ghi nhận chùm ca có triệu chứng viêm đường hô hấp cấp trong khu dân cư; chuẩn bị sẵn sàng đáp ứng với các tình huống dịch bệnh xảy ra; sẵn sàng các cơ sở cách ly tập trung tại quận, huyện. Các cơ sở bán lẻ thuốc cần nhắc nhở người đến mua thuốc có triệu chứng viêm hô hấp cấp đến cơ sở y tế khai báo và kiểm tra sức khỏe; đồng thời ghi nhận thông tin và báo cho phòng y tế và trung tâm y tế địa phương…', '2020-07-29', 0),
(9, 'TP.HCM phê bình các quận, huyện lơ là trong công tác 3', 'p9.jpg', 'Chiều nay (3/8), tại buổi Họp giao ban trực tuyến Ban Chỉ đạo 3 Covid-19 TP. HCM, Giám đốc Sở Y tế thành phố Nguyễn Tấn Bỉnh cho biết, ngành y tế đang tiếp tục triển khai các biện pháp 3 Covid-19 trên địa bàn, trong đó tập trung giám sát y tế với người từng đến Đà Nẵng. Theo ông Nguyễn Tấn Bỉnh, Giám đốc Sở Y tế TP.HCM, đến 11h ngày 3/8, thành phố có 237 trường hợp viêm đường hô hấp đang theo dõi cách ly, không có ai diễn biến nặng, 152 ca âm tính, 82 ca đang chờ kết quả. Thành phố đang cách ly tập trung 1.479 trường hợp, trong đó tại các cơ sở là 754 trường hợp, cách ly tại quận huyện 367 trường hợp, đang cách ly tại nhà, nơi lưu trú 8.994 trường hợp… Đến ngày 3/8, thành phố đã tổ chức xét nghiệm Covid-19 hơn 83.300 trường hợp. Về giám sát người đi đến Đà Nẵng, đã có 36.754 người đến Đà Nẵng từ ngày 1 – 28/7, trong có có gần 24.000 người lấy mẫu xét nghiệm và đã xét nghiệm hơn 5.600 mẫu, phát hiện 6 trường hợp dương tính. Về xét nghiệm điều tra những người có liên quan đến 8 ca bệnh mới thì phát hiện 848 trường hợp, trong đó F1 là 298 người và F2 là 550 người; đã lấy mẫu 744 trường hợp, trong đó ưu tiên các trường hợp F1. Các địa phương tiếp tục khoanh vùng, truy vết người tiếp xúc để cách ly y tế…', '2020-08-03', 0),
(10, 'TP.HCM: Kiến nghị hướng dẫn phòng chống Covid-19 đối với cơ sở sản xuất', 'p10.jpg', 'UBND TPHCM vừa có văn bản gửi Thủ tướng Chính phủ cho hay, thực hiện Chỉ thị số 15/CT-TTg của Thủ tướng, TP.HCM đang quyết liệt triển khai các giải pháp 3 bệnh trên địa bàn như chỉ đạo. Hiện tất cả cơ sở kinh doanh dịch vụ không cần thiết đã được yêu cầu đóng cửa, các phương tiện giao thông công cộng đã tạm dừng, cắt giảm số chuyến, tần suất vận tải hành khách đường bộ và đường thủy, tạm dừng mọi 1 xe buýt công cộng trên địa bàn TP đến hết ngày 15/4. Tuy nhiên, UBND TP.HCM cho rằng trong chỉ thị trên chưa quy định đối với 1 của các cơ sở sản xuất. Cụ thể các cơ sở sản xuất có số lượng công nhân đông là nơi tiềm ẩn nhiều nguy cơ lây nhiễm dịch Covid-19, vì đa số là 1 theo dây chuyền sản xuất cố định, khó đáp ứng yêu cầu không quá 20 người trong một phòng, yêu cầu thực hiện giữ khoảng cách tối thiểu 2m giữa người với người. Bên cạnh đó, việc đưa đón công nhân làm việc tại các cơ sở sản xuất chủ yếu sử dụng phương tiện xe buýt, đưa đón qua lại giữa các địa phương giáp ranh như Long An, Tiền Giang, Bình Dương…', '2020-04-04', 0),
(11, 'Thành đoàn TPHCM ra mắt đội tình nguyện phòng chống Covid-19', 'p11.jpg', 'Đội hình gồm 200 y bác sĩ trẻ, nhân viên các phòng khám, bệnh viện trực thuộc các trường đại học, hội viên Hội Thầy thuốc trẻ thành phố cùng sinh viên năm thứ 4, 5, 6 của các trường có đào tạo về ngành y phát huy tinh thần xung kích của tuổi trẻ thành phố, thực hiện nhiệm vụ chuyên môn, chung tay cùng chính quyền và nhân dân phòng chống hiệu quả dịch bệnh COVID-19. Theo Phó Bí thư thường trực Thành đoàn Phan Thị Thanh Phương, nhiệm vụ trọng tâm của các chiến sĩ là tập trung tuyên truyền nâng cao nhận thức cho học sinh, sinh viên, giáo viên, giảng viên, cán bộ, nhân viên, phụ huynh học sinh tại các trường học, các khu lưu trú công nhân trên địa bàn thành phố về diễn biến của dịch bệnh; nguyên nhân, hậu quả và các biện pháp phòng, chống dịch bệnh COVID-19. Đặc biệt, từ những bài học trên giảng đường, kinh nghiệm thực tập và quá trình làm việc thực tiễn tại đơn vị, các chiến sĩ tình nguyện sẽ hướng dẫn thanh thiếu niên, người dân địa phương nâng cao khả năng tự bảo vệ sức khỏe cộng đồng, hạn chế những tác động tâm lý, sinh hoạt, học tập của phụ huynh, học sinh do dịch bệnh gây ra.', '2020-03-22', 0),
(12, 'Chống dịch COVID-19 là một cuộc chiến trường kỳ', 'p12.jpg', 'Thủ tướng nhấn mạnh điều này khi kết luận cuộc họp Thường trực Chính phủ về phòng chống COVID-19 vào chiều nay, 21/8/2020. Bộ trưởng Bộ Thông tin và Truyền thông Nguyễn Mạnh Hùng cho biết, đến nay, có hơn 20 triệu cài đặt ứng dụng Bluezone, trong đó, 10 tỉnh, thành phố đạt tỉ lệ cài đặt chiếm 20-45% dân số, bắt đầu truy vết có hiệu quả, phát hiện 1.400 trường hợp F1, F2 nhanh, chính xác. Ở Hải Dương, ứng dụng giúp truy vết 730 trường hợp một cách chính xác. Báo cáo tại cuộc họp, Chủ tịch UBND TP. Đà Nẵng Huỳnh Đức Thơ cho biết tuần vừa qua, mỗi ngày Thành phố ghi nhận 2-6 ca nhiễm COVID-19, đa số trong đó nằm trong sự kiểm soát. Hằng ngày, có 5-10 ca xuất viện, giảm tải được áp lực tại các bệnh viện. TP. Đà Nẵng đã triển khai các biện pháp đúng đắn, đồng bộ, kịp thời, tiến tới sẽ khống chế được dịch vào cuối tháng 8, lãnh đạo TP. Đà Nẵng nêu rõ. Về năng lực xét nghiệm, hiện công suất xét nghiệm của ngành Y tế Thành phố đạt khoảng 13.000 mẫu/ngày. Đến nay, đã xét nghiệm 171.000 mẫu, xấp xỉ 1/3 số xét nghiệm cả nước nhờ tăng số lượng các cơ sở xét nghiệm và áp dụng phương pháp xét nghiệm gộp nhóm. Năng lực xét nghiệm chính là chìa khóa giúp TP. Đà Nẵng đón đầu, ngăn chặn việc lây nhiễm dịch. Bên cạnh đó, Thành phố đề nghị Bộ Giáo dục và Đào tạo phối hợp lên phương án thực hiện kỳ thi tốt nghiệp cho hơn 10.000 học sinh.', '2020-08-21', 0),
(13, 'Tăng cường phòng, chống dịch bệnh Covid-19 trong tình hình mới', 'p13.jpg', 'Công văn nêu rõ: Hiện nay, dịch bệnh Covid-19 trên thế giới và trong nước vẫn diễn biến phức tạp, khó lường, nhiều nước phải tăng cường các biện pháp kiểm soát nghiêm ngặt. Thực hiện chỉ đạo của Thường trực Ban Bí thư Trung ương Đảng về tăng cường phòng, chống dịch bệnh Covid-19 trong tình hình mới, Ban Cán sự đảng Bộ Giao thông vận tải yêu cầu các cấp uỷ, tổ chức đảng, chính quyền và đoàn thể các cấp triển khai thực hiện nghiêm túc một số nhiệm vụ trọng tâm sau: Việc tăng cường phòng, chống dịch bệnh Covid-19 trong tình hình mới là nhiệm vụ quan trọng, cấp bách lúc này, cần đặc biệt cảnh giác, có biện pháp xử lý nhanh chóng, hiệu quả công tác phòng, chống dịch; tăng cường sự lãnh đạo của cấp uỷ các cấp, thủ trưởng cơ quan, đơn vị, phát huy trách nhiệm của các tổ chức đoàn thể trong cơ quan, đơn vị. Nêu cao nhận thức, trách nhiệm của các cấp uỷ, tổ chức đảng, chính quyền và đoàn thể các cấp trong thực hiện sự chỉ đạo của Bộ Chính trị, Ban Bí thư, Chính phủ, Thủ tướng Chính phủ về công tác phòng, chống dịch bệnh Covid-19. Thực hiện nghiêm Lời kêu gọi của Tổng Bí thư, Chủ tịch nước Nguyễn Phú Trọng, các văn bản lãnh đạo, chỉ đạo của Bộ Chính trị, Ban Bí thư, Chính phủ, Thủ tướng Chính phủ và Bộ GTVT; triển khai quyết liệt chỉ đạo, hướng dẫn của Ban Chỉ đạo quốc gia, 3 Covid-19, Bộ Y tế và các cơ quan chức năng. Người đứng đầu cấp uỷ đảng, thủ trưởng cơ quan, đơn vị trực tiếp chỉ đạo và chịu trách nhiệm trong công tác phòng, chống dịch bệnh; huy động tổ chức, chính quyền, đoàn thể và toàn thể quần chúng tham gia phòng, chống dịch; phát huy mạnh mẽ phương châm 4 tại chỗ; bình tĩnh, chủ động ứng phó mọi tình huống; tuyệt đối không chủ quan, lơ là, nhưng không được gây hoang mang, mất ổn định.', '2020-08-18', 0),
(14, 'Đảm bảo an toàn cho kỳ thi tốt nghiệp THPT 2020: Tất cả đã sẵn sàng', 'p14.jpg', 'Kỳ thi tốt nghiệp THPT năm 2020 sẽ diễn ra từ ngày 8.8 với buổi họp cán bộ làm công tác coi thi và thí sinh làm thủ tục dự thi. Trong 2 ngày 9-10.8, sẽ có 5 bài thi gồm 3 bài thi độc lập (Toán, Ngữ văn, Ngoại ngữ) và 2 bài thi tổ hợp. Để chuẩn bị tốt cho kỳ thi tốt nghiệp THPT 2020, gần 200 học sinh tại huyện đảo Phú Quý (Bình Thuận) đã vào đất liền. Các thí sinh chia thành 2 đợt vào đất liền với thời gian di chuyển trên tàu gần 3 giờ đồng hồ. Nhà trường cũng phân công đoàn đi theo hỗ trợ các thí sinh gồm 1 cán bộ y tế và 5 cán bộ, giáo viên. Đây địa phương duy nhất trên cả nước phải làm công tác đưa các thí sinh từ đảo vào đất liền dự thi. Ông Phan Đoàn Thái - Giám đốc Sở GDĐT Bình Thuận cho biết: Các thí sinh vừa vào đến đất liền sẽ có tình nguyện viên đưa đón, hỗ trợ, hướng dẫn đến nơi ở. Các em cần tuân thủ nghiêm các biện pháp phòng tránh, phải thường xuyên đeo khẩu trang, dùng nước sát khuẩn để đảm bảo an toàn, hạn chế ra ngoài nếu không thực sự cần thiết. Giờ ăn cũng chia theo từng đợt xen kẽ nhau, tránh tập trung cùng lúc đông người.', '2020-08-06', 0),
(15, 'Lính biên phòng hai lần hoãn cưới để chống dịch COVID-19', 'p15.jpg', 'Chỉ mấy ngày sau đó, thượng úy Lê Bá Liêm, 30 tuổi, công tác tại Ban cửa khẩu phòng tham mưu Bộ đội biên phòng Kon Tum, đã nhận lệnh tăng cường lên Đồn biên phòng Sa Thầy, gần khu vực biên giới Campuchia. Nhận lệnh đi tăng cường trong tình hình dịch bệnh, đồng nghĩa việc thượng úy Liêm phải hoãn lại hôn sự. Đây là lần thứ hai chỉ trong 3 tháng, chuyện trăm năm của anh phải dời lại, vì dịch. Tụi mình yêu nhau từ cuối năm 2019 và sau đó quyết định cưới. Mọi chuyện rất suôn sẻ. Chỉ có mỗi đám cưới là hơi vướng thôi, anh Liêm vẫn dí dỏm đầy chất lính khi nói về hoàn cảnh của mình. Thượng úy Liêm và vợ sắp cưới, chị Bích Ngọc, 28 tuổi, nhân viên ngân hàng, dự định tháng 2-2020 thưa chuyện trăm năm với cha mẹ hai bên. Rất nhanh, một tháng sau lễ dạm ngõ diễn ra. Thời gian cưới được lên kế hoạch chi tiết: lễ đính hôn vào ngày 12-4 và làm tiệc cưới ngày 10-5. Bất ngờ, đến đầu tháng 4, chú rể nhận lệnh đi tăng cường hai tháng lên Đồn biên phòng Hồ Le, cách nhà 150km.  Sau hai tháng tăng cường đó, thượng úy Lê Bá Liêm được tạo điều kiện về nhà làm lễ đính hôn đúng ngày đặc biệt: 27-7. Hai bên gia đình lại lần nữa háo hức chờ đợi tới ngày tổ chức đám cưới: ngày 1-8.', '2020-08-30', 0),
(16, 'Nam sinh để dành thùng mỳ và sữa hộp cho người cách ly', 'p16.jpg', 'Câu chuyện đặc biệt xảy ra trong ký túc xá của Đại học FPT, thuộc khu công nghệ cao Hòa Lạc, huyện Thạch Thất, Hà Nội. Ngày hôm nay (23/3), khu ký túc xá này chính thức trở thành nơi cách ly tập trung cho những người từ vùng dịch về hoặc người có yếu tố dịch tễ liên quan đến dịch bệnh COVID-19. Trước đó, sinh viên của trường đã đến dọn dẹp, quét phòng sạch sẽ để kí túc xá sẵn sàng đón người cần cách ly. Đáng chú ý là bức thư mà một cậu sinh viên viết cho những người sẽ dùng phòng trong thời gian tới. B5.10 xin chào các cô chú ạ. Cháu xin chào các bác/các cô chú/anh chị. Cháu biết mọi người có thể đã trải qua chuyến bay khá dài và mệt mỏi rồi đúng không ạ? Lời đầu tiên cháu chúc mọi người có một sức khỏe thật tốt và có khoảng thời gian vui vẻ trong Hola campus đẹp đẽ này của chúng cháu nhé (Đừng nghi là cách ly ạ vì ở đây thích lắm!). Cháu cũng không có gì nhiều, còn lại một chút sữa và đồ ăn, cô chú đừng chê nhé. Cô chú nhớ để ý nhà vệ sinh (bồn cầu) ấy ạ vì nếu xả mạnh tay quá nước sẽ chảy nhanh và bị kẹt. Wifi phòng cháu còn thoải mái nhé, tên wifi là C4.10L; mật khẩu là 18081974. Dùng 5-6 người không lo lắng ạ. Chúng cháu có kê lại giường, mọi người đừng chỉnh lại nhé vì nhà dột đó ạ. Có thể lúc các cô chú vào, phòng không được sạch sẽ và thơm như ở nhà. Cháu xin lỗi nhé vì từ Tết, 5 thằng chúng cháu về quê. Chúc mọi người sức khỏe. Nếu có gì cần hỏi về wifi thì mail cho cháu ạ. Các chú ơi đừng niêm phong thùng mì này nhé, các chú bộ đội, nam sinh viết.', '2020-03-23', 0),
(17, 'Người trẻ viết nên những 2 mùa dịch COVID-19', 'p17.jpg', 'Câu chuyện đập lợn góp tiền chống dịch COVID-19 của các em học sinh huyện Quảng Xương là một trong những hành động đẹp đã nhận được sự quan tâm và tạo sức lan tỏa sâu rộng trong cộng đồng giữa mùa đại dịch. Ngày 30-3, Ủy ban MTTQ huyện Quảng Xương đã tiếp nhận 2 con lợn tiết kiệm của 2 em học sinh là Nguyễn Tiến Tuấn, học sinh lớp 5A, Trường Tiểu học Quảng Trạch (số tiền 1.119.000 đồng) và em Nguyễn Minh Vương, học sinh lớp 8B, Trường THCS Quảng Chính (số tiền 1.074.000 đồng) ủng hộ Quỹ phòng, chống dịch COVID-19. Các em cho biết: Số tiền các em ủng hộ là tiền tiết kiệm trong dịp tết và tiền được người thân khen thưởng vì có thành tích tốt trong học tập. Trong thời gian đang được nghỉ học, nghe các phương tiện thông tin đại chúng nói về việc phòng, chống dịch còn nhiều khó khăn nên các em đã nảy sinh ý định sẽ ủng hộ bằng tiền tiết kiệm. Vì thế, các em đã trao đổi với gia đình và được mọi người đồng ý. Sau khi tiếp nhận số tiền trên, lãnh đạo Ủy ban MTTQ huyện Quảng Xương đã trao thư cảm ơn tấm lòng nhân ái và tình cảm cao đẹp của 2 em đã có hành động ý nghĩa để góp phần cùng cấp ủy, chính quyền có thêm nguồn lực phòng, chống dịch bệnh, bảo đảm sức khỏe, cuộc sống cho nhân dân.', '2020-05-06', 0),
(18, 'Những tấm lòng vàng trong 3 COVID-19', 'p18.jpg', 'Cùng góp phần chung tay chia sẻ những khó khăn, vất vả và động viên các lực lượng đang nỗ lực hết sức mình trong 3 bệnh Covid-19 cũng như các gia đình khó khăn bị ảnh hưởng bởi dịch bệnh. Chiều ngày 08/4/2020 gia đình ông bà Nguyễn Văn Thể, Lâm Thị Lin (địa chỉ 15/37 Đường số 6, Khu phố 6, phường Hiệp Bình Phước) đã ủng hộ 100 thùng mì gói; 150kg gạo và 3 triệu đồng cho Ban chỉ đạo 3 phường Hiệp Bình Phước để gửi đến những hộ gia đình có hoàn cảnh khó khăn bị ảnh hưởng bởi dịch bệnh Covid-19. Đặc biệt hơn bé Nguyễn Du Quân – Sinh năm 2014 (là cháu ngoại của ông Lâm, bà Lin) cũng đã đập heo đất tiết kiệm của mình được 207.200 đồng để ủng hộ các gia đình khó khăn trên địa bàn phường. Tuy số tiền không lớn nhưng đã thấm đượm tinh thần nhường cơm sẻ áo trong lúc khó khăn của người dân Việt Nam. Đây là một tấm gương sáng để mọi người cùng noi theo, chung tay góp sức cùng vượt qua Dịch bệnh Covid-19. Đại diện Ban chỉ đạo phường, bà Lê Thị Thúy An – PCT UBND phường đã rất xúc động và cảm ơn những hỗ trợ kịp thời của các mạnh thường quân và hứa sẽ trao tận tay những hộ gia đình khó khăn, các lực lượng đang tham gia 3 Covid-19 theo đúng nguyện vọng của gia đình.', '2020-04-10', 0),
(19, 'Đồng chí Trần Thanh Tú - Gương thanh niên điển hình trong công tác 3 Covid-19', 'p19.jpg', 'Trong những ngày cuối tháng 7 và đầu tháng 8 năm 2020, dịch bệnh Covid-19 đã bùng phát trở lại tại Đà Nẵng và nhanh chóng lây lan sang nhiều tỉnh, thành trong cả nước. Trước tình hình diễn biến phức tạp của dịch bệnh, được sự chỉ đạo của BTV Huyện đoàn Tiên Phước và Ban chỉ đạo 3 xã Tiên Sơn, Đoàn Thanh niên xã đã ban hành quyết định thành lập đội xung kích tình nguyện để thực hiện nhiệm vụ trong công tác tuyên truyền và tham gia các nhiệm vụ 3 tại địa phương.Từ khi được thành lập đến nay, các thành viên trong đội đã thể hiện được tinh thần xung kích tình nguyện, sẵn sàng tham gia khi được giao nhiệm vụ. Tiêu biểu là đồng chí Trần Thanh Tú - Bí thư Chi đoàn thôn 3, vừa là chủ của một quán ăn trên địa bàn thôn 5. Nhận thấy tình hình dịch bệnh đang có những diễn biến phức tạp, số lượng người từ Đà Nẵng và các vùng dịch trở về quê khá nhiều nên đồng chí đã quyết định đóng cửa quán ăn của mình, tiên phong thực hiện chỉ đạo không tập trung đông người tại nơi cộng cộng và xung phong tham gia các 1 chống dịch cùng với Tuổi trẻ xã nhà. Những ngày đầu tiên chốt kiểm dịch Tiên Sơn đi vào 1, đ/c Tú luôn là người xung phong tham gia trực 24/24 tại chốt. Giữa cái thời tiết nắng nóng của tháng 8 cộng với điều kiện cơ sở vật chất tại chốt hết sức khó khăn, trong chiếc lều khoảng hơn 20 mét vuông là nơi thực hiện nhiệm vụ kiểm dịch Covid-19, vừa là là nơi ăn ở của 9 thành viên trong đội chốt chặn. Mặc dù vậy nhưng đồng chí vẫn luôn nhiệt tình, hết mình với nhiệm vụ được giao phó, hằng ngày cùng với các thành viên trong tổ thực hiện đo thân nhiệt, lấy thông tin làm tờ khai y tế, quyết định cách ly tại nhà...', '2020-08-26', 0),
(20, 'Lan tỏa ATM gạo dành cho người nghèo', 'p20.jpg', 'Hơn 8 giờ sáng ngày 10/4, chúng tôi có mặt tại điểm phát gạo tự động dành cho người nghèo mà người dân gọi với cái tên trìu mến là ATM gạo miễn phí dành cho người nghèo tại số 204, đường Vườn Lài, quận Tân Phú, TPHCM. Đây là sáng kiến của anh Hoàng Tuấn Anh, Giám đốc Công ty PHGLock sáng chế. Bởi lẽ, theo chủ nhân chiếc máy ATM gạo thì việc tặng nhu yếu phẩm giúp đỡ người nghèo là rất cần thiết, nhưng việc phát quà một cách thủ công dễ tập trung đông người, tiềm ẩn nguy cơ lây lan dịch bệnh nên bản thân đã tận dụng các máy móc sẵn có của công ty để chế tạo ra máy phát gạo tự động. Tại đây, có hàng chục người nghèo đeo khẩu trang xếp hàng ngay ngắn theo ô vạch sẵn trên vỉa hè với khoảng cách giữa mỗi người là 2m nhằm phòng tránh lây nhiễm dịch bệnh Covid-19. Còn ở tấm biển gắn trên tường và bồn lấy gạo có in những dòng chữ Điểm phát gạo tự động cho người nghèo. Nhấn chuông để nhận gạo miễn phí 24/24. Mỗi người tối đa mỗi bao gạo. Giữ khoảng cách 2m. Gạo chỉ phát cho người có hoàn cảnh khó khăn. Nếu khó khăn cứ lấy một phần, nếu bạn ổn xin nhường cho người khác.', '2020-04-18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts_categories`
--

CREATE TABLE `posts_categories` (
  `category_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_categories`
--

INSERT INTO `posts_categories` (`category_id`, `post_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 9),
(2, 10),
(2, 11),
(1, 11),
(2, 12),
(2, 13),
(2, 14),
(3, 15),
(3, 16),
(3, 17),
(3, 18),
(3, 19),
(2, 19),
(3, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
