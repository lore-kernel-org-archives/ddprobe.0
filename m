Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF097A
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 08:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657700812;
	h=To:Subject:From:Message-Id:Date;
	bh=zf7lAF1gwwr9a/DZIyMX2b5Ys3m+N9FWUxg9NrmtFzs=;
	b=PoWnoX4IYzrfOnCURNHVdIGq9LrLkiMXbN65TJ/ZfZg945qZUYmCq70NL1tFlBnm
	lfCFQRV+Ha0XGW7To7lqNCMSsB5R7DZ8g7gp99fhpXpjBIpIO9+8Ru0imSmCFXnNbXr
	Ln8g+GUSxp3/a/hMlOLbNiDwyStgif+owTmsQxh4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657700812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zf7lAF1gwwr9a/DZIyMX2b5Ys3m+N9FWUxg9NrmtFzs=;
	b=dT7zFGStKBq4ZI11LbB84s5epLioMCfXHjGroVYAqsMZWDeVdLFPW4rtHOgR43gd
	hN7x9zyfyjVAlR/5+N3KgzQBEw0F3apUi5SVRK24SF2Himv0CV/5/v/yjP0lPN6L/72
	GLVdQIkHdXJ8HIGpTbpegUiMinoL4u201u+2pyfs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f6ab05fc-9e57103b-a0ae-4786-a238-d9d54973b66d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 854cf6eac8cd1f300751da58af2597d0b7fd8aee68874404aaa15490e6121b36
Date: Wed, 13 Jul 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657700812
