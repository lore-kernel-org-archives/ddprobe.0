Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70DDC2F2B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 07:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645947984;
	h=To:Subject:From:Message-Id:Date;
	bh=a+mdlHuZKBxMp4cp1SwnRPyJyr4/ZIIe8dUI3Zm4yW0=;
	b=mN1DEBkb1Zrl2OhaA3x0P3c/HSCPFdcz56kPUixv63x65B7qluASdQjQWutLS6Bw
	VNvP0DQLEmbzK3gY6NAsrdcUh/2J7wGkxLtcMurFYW0oeDLmozPofPa/gFzyjlLP8Pb
	pSHgx1LfiIItXgTTrZkym6JtXGoSXWCxsQW3UDDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645947984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a+mdlHuZKBxMp4cp1SwnRPyJyr4/ZIIe8dUI3Zm4yW0=;
	b=kwIum6gaeE1vES4dx0HWJrSwZMuv9ct089+9qWA5eIH0IGqz2sYoArT/wR0OqgaW
	kpOd4KjarQWq6A+B/IeBEALrxCg92yNBXFJYBmxgnCJqY09Hn8Al6Az5LhLp4tb36Qt
	u0LBw+qEl8TtdUKWyzCTQ17NWvmTMYkj6WO4fZsQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a251b88-133398c1-53ea-41fb-a1b6-50a42286fcfb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38c4f121aece27c3c34ea1be3d9bfc7373638e9981200f03ea12d0d333908ab2
Date: Sun, 27 Feb 2022 07:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645947984
