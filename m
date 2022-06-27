Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E86382586
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656324412;
	h=To:Subject:From:Message-Id:Date;
	bh=DSaRi+xAC3eNKUzhOozduNl7aiAggaUie9XJOYXLPpw=;
	b=bSngiAd3wG/1AMww2oDgDJmbhvkMYKI1k1q2ubGY8V5kPoO1w8GZcNr1PU0YU1Wh
	NZzLrw96MySXIwbZ57b7LInOT4bRxNvlxut4s/TcTv1jPR6vxybhDJf9Q79VvOawuQh
	kWMTdf/Aa8SaloYPFdwMr1pgeG80LrgUgEXp/ruU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656324412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DSaRi+xAC3eNKUzhOozduNl7aiAggaUie9XJOYXLPpw=;
	b=ax/4yB+S5agcGrg/KeCAZyB8FUWVyjD7/d9OSSRRRdsBkDt54408ccSToHy1R0xs
	mPSP93VJ0G90UmR8C8UI6zMWrnRCQtyAoHVR6ot0xwimQ9A+T93LwStlS3JoF4ndYej
	9+8+5GHwcz7jWJn/RolfPejqPiJy/bFg+h5gCdxI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a4a0d361-393bb242-9c87-4f77-a77d-80bcb45df4f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca40f3516fe05986447b147597768e386c05e93c1e3fcd17f12fb9804921d0e0
Date: Mon, 27 Jun 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656324412
