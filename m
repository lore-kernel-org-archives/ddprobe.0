Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FED12F3D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 16:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656259612;
	h=To:Subject:From:Message-Id:Date;
	bh=VVYu7hYcjH5HiQTlvEmguGlqMS7G5Ct68O8bYd2lxR0=;
	b=TOw8Rds7AP4f5Swh+3TRoIgx6LOM4XunBlABm0hoSLSIv4Nlz+x3lTOdy0IA5lPQ
	lLbuHB7nTqAO+3MF09qilqI2hhUWBWDlyo/OwScV0a6UCPBWyxPrJjpwRMcS7q3u0Gf
	vYw2oweSTJJM2LpbAxkeheD3OpDx93oYkJhI9w0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656259612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VVYu7hYcjH5HiQTlvEmguGlqMS7G5Ct68O8bYd2lxR0=;
	b=k1P34XFUv+rugmBUSBgRpAkySG3UG7W8vQ0NHVUy0uF1MD/O8wwC/hM/suSsEK+O
	hL62U1zKX9lGeKZQuYq74/5cGBPTmQe/s0vtmz9IGwFLSqf7wGtvbzw/mAN2f8MVANu
	N45OFNNhPJXw2XjOK66EXOgRbSh6U0Uz5LgAyzgU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a0c40e80-cd71eab1-47c3-426a-9ccb-5ec409280619-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71023c8b102e24c357a74a2bed42b9cf29d37ee3cf7a7935d3ed3426e3b63e9c
Date: Sun, 26 Jun 2022 16:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656259612
