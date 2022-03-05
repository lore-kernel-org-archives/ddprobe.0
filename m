Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 907C87E
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 03:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646451684;
	h=To:Subject:From:Message-Id:Date;
	bh=camhQzwGTBQO70y/cmP4ydOlcj86e7XXHDKgVvEIJBs=;
	b=Zuv8/dpYeD6e13jrOr4VQbMTi0aQhYH2Aeydp4vp/bT4Ls5V6bABT4+GHouUKbpT
	FmOfP7/jfzyCAxH+ZCn1bOrA+ZdiOENHTzEPW5NvN8pPDsIJMyGcQ+cYSDOsVdZwEe8
	WsqZw0ORdidvSZuxC/rmKcuopRooG1EQY+wOH1Zw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646451684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=camhQzwGTBQO70y/cmP4ydOlcj86e7XXHDKgVvEIJBs=;
	b=RLuwAuO+vYEov6F4D4QrXmrHW3Cbbcstzm/ZkeTH3Euwld9+az3nARcrIJ/l7w+I
	pjWRRW9YDjRMR/nh6hylxQvBlYC+KOIUJb1lVohU7ZQSxgCpF+bYgeRCtaADUgTW+Vs
	0TOXTXW664daNVmT1p3uGzDmxfV06t9Vj2736nFg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f582af5c0-867d8e0e-a7d7-4d14-ba3b-930da8d6d307-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 407264e4e3abc42909de12d1ed6ca6bb5bd70da12a5ea5193378d327406a4180
Date: Sat, 5 Mar 2022 03:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646451684
