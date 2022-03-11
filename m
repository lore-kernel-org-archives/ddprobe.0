Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B44D7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646992284;
	h=To:Subject:From:Message-Id:Date;
	bh=xpYedATwLCuq5mlLblGpkbQ1vxXT1WEq5CuO90gsZvU=;
	b=OQuZEYVh84jrNmE1RePNvHWhxG3nMwa5OOO0114tE5I86+UTakmZ3ZeFAjkB8a8L
	0MLVUG58piUOrRZpHD3Kd6WHQXTsOwayxFS/PGyMTzJpNyCsE7ih0DO300XPsyWBHpU
	FK/kHuOCkBYTMo3N95fYombZCruxl/D0PisRsQp4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646992284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xpYedATwLCuq5mlLblGpkbQ1vxXT1WEq5CuO90gsZvU=;
	b=VL19NFlI4gK03MxIjQf/7zMLlCnxnCBcGEgxoZB/pSUjWjll2HpfQ2wuTdVLaTwJ
	UA/888GmniKHjajJWH3Ne/Xb2l7gD/V3iP7TtuXptT3ktphSQNYRJ+7Kv8YaKcHnXwq
	y0PYr0YFO3ebH5zdJe/Xjiuk4Tl4Vb/GtX/OAR/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7863dc40-c0a260da-e3e0-406f-99b2-a005309244f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b792eb0ad3c45d86ba93d100588392fed61aff05bcf401ff7511595f8952c574
Date: Fri, 11 Mar 2022 09:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646992284
