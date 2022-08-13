Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9DD639
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660364452;
	h=To:Subject:From:Message-Id:Date;
	bh=ji4RuiaCOIFQJb5wzuYDpDzw1xOXRlJ2MGXDCkrzbY0=;
	b=JS0Ir8MID78tzwFin2dfHedRQ05RgatfhbNUBs68TPvYssJ9tf9Eegi+uLw2VM4x
	tFrnk8fEMckAueHzfAAhh9Xbf9K7tCFMm4I/EI6RH2V/f59zqUXe93D08XU+4XaICBJ
	XXDBTjFG0ilthf8nvefMD3mOYfNTHCmzBI8Nj7Nc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660364452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ji4RuiaCOIFQJb5wzuYDpDzw1xOXRlJ2MGXDCkrzbY0=;
	b=PcRJspZPr/zYNgYRxt98WlxcyA2yalP6xwsVVqWWKV2jvq3dDPtSx16s8WNu4n2Z
	OTGQmf7dMiBbt0RamWehRFUYR+0EmQwSSr0i6QUliMHywjjNbzAwYDMH8pzWBzF+9WE
	AXFdVV4rNVC9G94Wg+ao1Uxp2hH3WhXnfviPPX/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182956ef2f8-c6b037b7-c866-4d11-86b1-c3b8d841cd62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 459ae8906bb156204adf7cf0723479ac3c65a8a152398fc86080d2fad6a19b76
Date: Sat, 13 Aug 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660364452
