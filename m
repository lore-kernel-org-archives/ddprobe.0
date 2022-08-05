Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5207FEC1
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659731452;
	h=To:Subject:From:Message-Id:Date;
	bh=ZJAxtSXMZnlwtAej/jtZnl8ipmXl6KWTuxbO9WbCKmM=;
	b=FgglWrCJyeRKzkchLeKIxMkN9FZMS5kD0KSwVqka+AqDqoYwnVHg9vd3kDrQhl6N
	p4Fps1M/+Nrdc/5yu6bxF2zsY+Wz2tE54LmEWY3P2YZt8MXqtZ6cjK8PDWzfUwDyk4O
	ev8rHd0YepyNP6AXg9swT+viw+++EoTpZ2P8fbFU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659731452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZJAxtSXMZnlwtAej/jtZnl8ipmXl6KWTuxbO9WbCKmM=;
	b=c9nCBarSXCImW/8Vnncx4xmviOCEngSourMZlAnu8P2HDJ4IbnOfl6DbF1nCITgj
	xZGp3K/TZqp22kG3swEyf3KdzsHMb+3bvBeJ64rL32EgJplem47dXha3+exV3HOOwgk
	GxRRCUPC2XQJf7nTUS3VSsQt8SOnUpfL5w68r51U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826fb422c9-28d910c4-2286-4714-8884-93f890186d06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9fe98fff993df82afe9218138cb979c63d87218a67b1d10ff772b1a1ff6b955c
Date: Fri, 5 Aug 2022 20:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659731452
