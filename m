Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1C615D9
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659309652;
	h=To:Subject:From:Message-Id:Date;
	bh=UVhr++MDvIlcYZJEwbOuLyGoLGk2eYt+wgKxsDs9K6Y=;
	b=V44caj0uNtJLl0LXFdtYT6Laz7x1mPkM4o2vawwPBwKMUUNBIqDoVXvT4ohvozoW
	wP4rPyet0YVf3ttg9Z1dTltNYUCPIW1ZSn0znF1+C8roZL5EDi3DruAXLOYeIdVU1B0
	Rfejj+PI2wgrsaln92DEGZ8z67nyzcy7SSYdyc+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659309652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UVhr++MDvIlcYZJEwbOuLyGoLGk2eYt+wgKxsDs9K6Y=;
	b=IMA/tIQ+Q9wE5K5SqVx1M3EoF1ovznPIBP9qCD936cfjUSoblCNwgN52Ztzqdy3Y
	ymelWfLyndk4PYpzgdpQvTdG3v7CZy1Kk4viPK8vJChZVu8MGZHjFrgYUc4luXqt5C3
	Zn17APRvjJK/+1DHN4YgVG12M8O9Gv4U1ZptRCQ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182568ffa49-b8549d5e-caad-4491-80a7-2eda2c2a6db2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c916fec482ffe3cb9c79aa7534fca93dfe4d4a26b5eb5966102dd3777b00cc1f
Date: Sun, 31 Jul 2022 23:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659309652
