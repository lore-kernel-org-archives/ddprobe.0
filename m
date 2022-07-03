Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AA21FD1
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 07:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656832612;
	h=To:Subject:From:Message-Id:Date;
	bh=hMgZj7boIw8KPpyosn/B9XiHUXKoIUBo7I79YbZQvoM=;
	b=EsFVqaI0rVXRObyR0KjUzxc0gLu76blkCgMrHCROc9DPq2OwdVPemY4urikln1wg
	mNAHoYSCsj2cNtS73bNYFws1hZqK7T5GSVYFHhqyLWVnEQ4SqU40lwn988W1QyZ0hZk
	YSO/7igbMy6GBAUO2arkvXK12vlDalrq1aM4N7cY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656832612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hMgZj7boIw8KPpyosn/B9XiHUXKoIUBo7I79YbZQvoM=;
	b=LdYoL1ND0OZTY5mqwuvpXiE6GcK8WIwIE8/hod0nKaUbkc2zhp/eZYFUcsZgcMm3
	ai2ctk3K0s3W+6PZEpdsWOAhDEwD6vTcQCuL8Wkjia/uZqM7XZ0kA7O0E8XoWqHaCsL
	2lCnN/Sbyhl9rh+eimekI+mskY3wQeVvfeXrbxXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c2eb57f5-09379ce2-c865-48f9-9231-71d4bb9bafcd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50eb3ca3e6eb6255f53a8c1b7144b09f2a2152bf3fb6609c660e0e75b8d18600
Date: Sun, 3 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656832612
