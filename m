Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250891383
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 20:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651954138;
	h=To:Subject:From:Message-Id:Date;
	bh=NhIAzUqlW5ymmF7Hi+d4YyoJj+clBT0w2tRYl6kbpew=;
	b=LblhhnNE740NC/opwGo75J4jgnvqdWVGzVJjvyceLxS3WCZEhVvRUihoF+AqsC66
	q7043cDfppBisqE+E5r0uv71DRQhehONyh0sU+wELHzui85sVJH+r//68w7XPjj96xE
	nxJ3/f+IN/J3EaximdXpAqDi8c6otHz/5WOn5c8c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651954138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NhIAzUqlW5ymmF7Hi+d4YyoJj+clBT0w2tRYl6kbpew=;
	b=cmg4/LgMIE4n7A8O84TWeu0vsMBwxuTU89kDhDhRfZPRtbegpyIGjM/QutazUJDL
	ECXSyJAhuX8U70hi45ojrR7G1Wd+yMenoIZwUnERzI+kJRaNWONxJiCV2RYjDCenfwL
	QCBaGhIbLN979IBtnCvlPpaPzQxyqW7RWU9ZcDHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a023bcd5-d108119d-7a74-4fd6-b947-21bb892b0449-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c1ae769ebc13fce1a9a25ee740385b626eeddd16c8f27e10ef751ffd74d0292
Date: Sat, 7 May 2022 20:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651954138
