Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCF57E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 02:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658542012;
	h=To:Subject:From:Message-Id:Date;
	bh=w6ScaobeZxwHhwnj5nRlbae/8CH5GhKvMIvvMf1BcCY=;
	b=g6iXAUOjLVmQ/RB7wygZy74UEowqlC44m+ktwJIwkAFlHLC6/KQdOPO8SYihYKdM
	/hY0LYRtv7y8gKx73VMRRHNNlg76ha/k97sG4TW0eBD5Bsqzy1A1hk5LFj+3VLxxOcc
	baqJEhpOBrOjJFzVd9zUZLnLp3N7qg7/rZfyKyf0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658542012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w6ScaobeZxwHhwnj5nRlbae/8CH5GhKvMIvvMf1BcCY=;
	b=WAiZXra39d1hVbpqFUsS1n1dDjOV1QKSldIE04bs9UupxR4ntci36ldNPXi5C/js
	Tj06VX0aPooXYUcX/r8rVl+0PLwppkY/i92ttlNevCZeQKbvKEd3SewZfsWQsCzdk2r
	1RrJP6m+A7NXpQHeba3Me8settv4DWYtoDDx+IkY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018228ceb7a8-31d382f4-5810-48fb-8833-485b3393e887-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44ba285d158ab69260d65906de195ae3b4c053ca6dab484b398151456436b643
Date: Sat, 23 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658542012
