Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BD532F2E
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645929385;
	h=To:Subject:From:Message-Id:Date;
	bh=w4Z9JScq1dTqflKSvJYv6bKtdcX4cjbp+bTANhntOXI=;
	b=QqoFcUEHwXqyS4kljm7WLm6Q8MvuHxNYFO7HJwj3NgVIocvmqlC3GsCD+0MWyLnF
	ZDUrkSUD13i4OmtKDXJqfEHwVUxWt3Ja1F765gSjLjhun4M/0JYQ+amUlwgDkMbAn19
	Dmia37GPzamwk2gMifAU696NHP3Rm2/oogUDM3M8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645929385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w4Z9JScq1dTqflKSvJYv6bKtdcX4cjbp+bTANhntOXI=;
	b=Ab0kb1uNUCBa6b+tjjaD1yfuBISeduVUfWjQJGIC2Z7Y1QFI3OMmiu+9km/RHczW
	rWgRUit9eQBr3pyBAnO/TpQ/p2+iqKa8FFuDLuHy1drxHgcH8dHS/PdCsMHXxyKfwtN
	nLot3Sdb/K0hATqVjElcjjtO7nvL+aPVvihmUYWQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39094b61-1681aa29-abe8-4ce4-bece-a8808a5893d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d7b591182c3690539ec251ef0a9db90b61beefe2f43145ca13b1819827da2fe
Date: Sun, 27 Feb 2022 02:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645929384
