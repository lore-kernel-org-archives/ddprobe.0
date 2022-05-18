Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA237E
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 17:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652896679;
	h=To:Subject:From:Message-Id:Date;
	bh=xp/VOBFy1Qn6D97E0tkmLnvrf4Ew2K2GXZ3Scw8N8Pk=;
	b=HJJ9HgxDci6L03Z9SdZ2bh9zF4oo5SxV+JAuCw5DZvsbSXl5aon+XJa4bXbzsNeX
	C71RFJYjI3V4e2/KG6AzVK8hk+03qcbT5DX6bmAHL98pNctPzW7u17PYgc+cxEjkMIY
	8igarWnd0t0omNn91M86WsbXQqILbSTT2FjRJvxo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652896679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xp/VOBFy1Qn6D97E0tkmLnvrf4Ew2K2GXZ3Scw8N8Pk=;
	b=UYlJHNaPXxfSsEf20q2GCwd3my8xQneYzR3IcVyPzrFWNJjGnfbRl0gSKPEDfexO
	1Wnp3av8yuI8SF8AKA7Uy1Fkdecrr3Bi1zpCWRDj8qTA6tsg3S2LZiyEsPZlN/cXRjT
	6kbNsccEdQEQDUdcBaJQjII+CBf+AAbjyfBOw3RE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d851c5c3-cdde7edd-4476-4378-a74d-b2bd1ccd95bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f90d735b25b64c53dd2625e6ffedf336450b2f739784ec30691e5bf9f36cf7ed
Date: Wed, 18 May 2022 17:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652896679
