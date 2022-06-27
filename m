Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3271E17CB
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 01:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656292012;
	h=To:Subject:From:Message-Id:Date;
	bh=pn03ktwxCI3vA2MQCbVsoLm1VPIkLVG8BsuZlHsdu0w=;
	b=d3DeWTKylCZ6g3f0D0sNIdlBiHsUhTjAgJRRm3zsl/wrfj5tzq7yz2fQ0rMVxP9f
	qBmXNx/qJmxQqi4I/gHusY62TgG5sUVbkfyEav0YrGjJcT5NnOpA/L663QhY/l2bspa
	UsFZ19s2DgWC5HUAwrCUKoXTcjr/rE//yjFJ15SQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656292012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pn03ktwxCI3vA2MQCbVsoLm1VPIkLVG8BsuZlHsdu0w=;
	b=hnA7IF3ZE3kbMRr/KQ4UoMFlnxAK5fUsT0vEH4jeIujJDGuhGusxfk5NwpZhrVL0
	QCYdqfIfnc51bJw/zS4gEPWrOVRrrBVxqQWHgn2x3sBbnq0BrpDRifABiJIU7FYuu11
	uWQniiHQIHtnl25jT0rr+8bHorTI+yr8FXiVk1dY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a2b27132-d32d8ff9-5093-4c0b-ad32-4856a9cc97a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c55e19933b973a3da79a28552bb2949de87ca5c2658cf411334452dbab21e0c1
Date: Mon, 27 Jun 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656292012
