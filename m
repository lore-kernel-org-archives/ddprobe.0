Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5A420E8
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 01:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644629459;
	h=To:Subject:From:Message-Id:Date;
	bh=L39Gf0woE956iA3kteD7yEQk8N+hjMHIsEFQjESxOB8=;
	b=P2YqUdWVyi7T8+yBwpqyAaS7SGFmNJIycIcQscZjfm+oCxM43JymEwlYSYF4eJSY
	ZYdvbPJuF6daCDC07Xt//f6xtGqIkmkRAL9LGAR5Q4mR1l89Awo+UwaX3P8SKpE7Xvi
	mzUdcSx+ptSBASAbzh0WqWeHxY6nW18mzb3HwPm4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644629459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L39Gf0woE956iA3kteD7yEQk8N+hjMHIsEFQjESxOB8=;
	b=AZ9sz9p3EB05cqyAG/krDVe9pzMtMDac1VfCdfL5qZ7NNqqx/LI29gzec4uY9yfI
	YvTemz7ZXdryTpYS4KPQfimpV+lLshengl4YC2rx3wnab5HTzDV+6FHXaZwhqD0p+iK
	40mjyR58T54tPAsSOrjFndgAhovbcHaQ7tGtbRWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeb8e00bf-99e62225-dcf8-4d59-81b5-bd39e8a224d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b809aa7e494b3946bfb43421e448749e124eeb870435fc71bdb11830d2b7859a
Date: Sat, 12 Feb 2022 01:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644629458
