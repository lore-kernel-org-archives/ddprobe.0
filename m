Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18346361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647100585;
	h=To:Subject:From:Message-Id:Date;
	bh=RATUo20MtondKrnXiZFHMLTw2WIcyZY6qyyhG6L6Shk=;
	b=ekGHtw80BlRaFdpC2Pwu0k5xl8ayu0iD6B3GIoTTY3OTBuShgHnnrS78ZTOuhYjs
	d1q1kdHghu4L5NRn4mJ1d1Z6NhNOlfVDVPclgwpsAJCp1Q7wQSmJ7+29QVdhEO4gd8h
	JDuXLXlN/OIihqME94GuTE23GMlxGUSIUtZZj26U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647100585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RATUo20MtondKrnXiZFHMLTw2WIcyZY6qyyhG6L6Shk=;
	b=Um1cJusTfkuJ4Y9shJcqswIhark1IklINXuYFzcSo8VtVq5n15k+tj/Zqt6yOrWv
	M5SR6dIPQZwLdpWtuw9nJjHmtwfVJcltKH2LU7TkydDLPlILSIMG+Txl+J7q2mq0V66
	kUkhh2XibuzihKK+ZyzOYmrIJKCap0Xh1TYRiWHY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ed86333-bb6c8ff3-44b5-43ef-840a-de3ac3352921-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58e578b75edaab7ff2e667ede3800802fda24ebf1053aece7ffc3c7e3fd0a6bf
Date: Sat, 12 Mar 2022 15:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647100584
