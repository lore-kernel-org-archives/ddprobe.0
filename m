Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AC4AA47
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 06:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653459119;
	h=To:Subject:From:Message-Id:Date;
	bh=aO4svE6gxioqx+0JRL4SEpVzZjptE8aTUwXAoLtBTdM=;
	b=GmPWiwbJGSbUTugCBXfZT586VpLq+414yjuXBIHLXwZQzYOUQSZiVaDbM+I30maQ
	XUMib82VhnFgY0f3N6iRMKUQKdYSBvygnaNljkFErQ3DwR6BPIyrC0p1XQ8Wy/LwHfW
	/X4+k1SbfxZCl4d7k3qyDuUkOnEX2NdGnF23bRJQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653459119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aO4svE6gxioqx+0JRL4SEpVzZjptE8aTUwXAoLtBTdM=;
	b=UT2KdwvZXByMUnW0s/maYNmnNhaDDMmZkGRHKOvFcCJEYCmp4u5d1liQKqTsR6/L
	00mTCTc/P6pZezaiu4GvaOZ21AziwEX9a1jdCFwq4NEZfB28QFZy+6xtZB5PY5LSoYU
	F0Gjvjv1Ok0yKuvqEYoHaJ9iXhpIFx1UnReguYX4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f9d7eca5-c9b0df33-5082-4f33-8c21-e3ea7d068797-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69d2bad4654e28ab3303119d41645f5b7f5c2d313caab97ef7a7ca6e43fb2333
Date: Wed, 25 May 2022 06:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653459119
