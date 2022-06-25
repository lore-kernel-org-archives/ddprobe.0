Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 807FF7A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 06:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656139013;
	h=To:Subject:From:Message-Id:Date;
	bh=b0xIyvzmmHO+hsM518+yrsHItJsS8T74wmVqeEEuSEM=;
	b=CVOADPkdISoWZY6zNw4T+DY7Fy/e8MfWKlZmGptPyYGikx1YGjXH+EIJTIFNWjoH
	uzdZytiajp1h0S7wLrbp5Hhuy6ujBXZOIK/IZNyVUG1z8yYQ1G6NuiIx22kpHiHLp/u
	FZpSaUS6RCmHRpoV/EKgEE5aY8KQQEhxt3MYdEdM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656139013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b0xIyvzmmHO+hsM518+yrsHItJsS8T74wmVqeEEuSEM=;
	b=Yrb98HBkx4/cbCT94EzshTIeG17HQWhayGNetrcGdLOxVDCDJlk1LOi8U++Ta+V+
	1kXehHYLYziq+SX3JPYLtYZ0kSY1AMAH6WfWEnkGpb9CvPOuSsKJ8SaPbvmUqw5Dvgh
	fIlDbj5UIxJbnz0A+oa8IjLpLR1ZNtHLehgjEuW0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819993d8e0-854a6565-e1e2-430f-908c-3788536405c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 096fc69764889f6946a0e6bb7d666b684190fe1944f45f33a469a25eac5f9dcb
Date: Sat, 25 Jun 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656139012
