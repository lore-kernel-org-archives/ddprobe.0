Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1210B7B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 01:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655689139;
	h=To:Subject:From:Message-Id:Date;
	bh=6/oQ/EdXIgOVLbvsE+5xoM/UHG3WCrLcUPqFBZfjsI4=;
	b=GoqXgYRZf7Sa1+sMSqvxRwPzuJWAhCV3cIs4Onz3811HcZxOJuFC0GtvwEFC9NH5
	Js7wbjHRBoj1TJy7gZjZYKCrYOGVJiyxxtM+gSGTj9M4kSV26Enf9ica+RhVYGEsxXB
	6WH6TbHm+/FZxozRfwSGLgx8jYK56lmxJKIJ8YS8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655689139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6/oQ/EdXIgOVLbvsE+5xoM/UHG3WCrLcUPqFBZfjsI4=;
	b=L+QTOS0kGMoCA3xmaXsmS3REXsaCAddYp5jsYLzakHHINvdZXyqRKxIa07DgRciL
	AhVACDGHKW0LO/7bmB0zrP3tjEMbpsyJRXYihZElFFFheIzFwfe+KMVx6bA7sL0GrqE
	CCCI+wyMxaJ+ZHN0Lm0nwINKj/v6xMELRh2Myqbc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817ec35452-ce98cc81-4608-4199-a595-5935b5046fb3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41f794fbcd21da5069f2e6ba7077e2f8a0c7d485dea5ecd6709bb36978543892
Date: Mon, 20 Jun 2022 01:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655689138
