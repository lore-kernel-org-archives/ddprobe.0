Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421FB28E4
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 12:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651407478;
	h=To:Subject:From:Message-Id:Date;
	bh=UccdeMQoDXPT+GUC5673gKSzRKIiK8sIO7rmRcgslIQ=;
	b=GzvRz8d1KWSDRuQkA/yfa1S71u13GP8zmMAWHVWbOZyyi6ObsEI+TtSZvGzzRJle
	78nHSJM5W+z6pJ9FYhf99M562S30bkzB/XK8UhrVfaB9u4bPNzEYtNK3xq3y5kevqai
	uNRC1JXiyqxJVgVjALmPmJHfuXvsw7P/Lmn6K/S0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651407478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UccdeMQoDXPT+GUC5673gKSzRKIiK8sIO7rmRcgslIQ=;
	b=PGfl/wMy0wT9sc63NqICB5msIjkfMEze1YcT8Gv8E5mw2RSROvA/Aof/erF8MZDT
	XnkEWMSspS/4LCsXm+l/+iZnmC2QMwU6RL4StS/tTufOELoYTcBEJoXnCM5c/Tw7rJL
	xQ9brgSSybsvXmEF82AtiN2iGBl6VYPzlmhy1P0E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807f8e5e16-aade56f0-f5af-4951-bd47-2844f82a49c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b869b4cae848237885840dea04a7594b9b81972d92bb9855d08699360254d157
Date: Sun, 1 May 2022 12:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651407478
