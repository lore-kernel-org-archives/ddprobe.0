Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070302FB2
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 16:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658421412;
	h=To:Subject:From:Message-Id:Date;
	bh=Y93weWP7ae52E6mycdx3FDPO1gmncyKqmLLKYnjWuH8=;
	b=Gv2ljbgadqgIunnECR+YMFXqAiwrNSFEY7uJIcRp5k8VFseTaUShebIpMhBAkTon
	zfsyVOd4Gn6N4AhbU5Nvw40TweLc5ntV9NlKJgQxhEwvFdBr9jMdJI2NQYh06V0m1WF
	o1D7+7midGTUVe69Qvkq+VEHHIdoHjZwRj9xl+ro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658421412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y93weWP7ae52E6mycdx3FDPO1gmncyKqmLLKYnjWuH8=;
	b=Y/nQigkDiAGqvogIP3fsmR9gcrUp1VNow7q1ywtFAikUBIDA/lDO2ezhvd68DUDO
	abMsoEJOKRYN7Igrua8YYTE9p+wjJF5RdzWtczLhETY6YZH6NzEdBc1n242YmMm5p07
	KzHNkrILodAEeXigk8Nk9r5/JCnn6z9MiqrenPDo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182219e81af-0596b1eb-f571-4208-bb2a-bbedd69a63d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9552cddbc44d2505aafc35136133fa4af0e9313c2a993652cec2ec71bd9b9677
Date: Thu, 21 Jul 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658421412
