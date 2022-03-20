Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0EB320E5
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 00:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647735684;
	h=To:Subject:From:Message-Id:Date;
	bh=/s8QMaXuZ3RTzMLacs1f74huC99MAM1Ntl7quSuUg74=;
	b=K9PmMEc0ex/Oe5B0pVkuRp3twTZh3d0lllMmxkH4Uq6yLw/j15E6WrpmoUl+fCsn
	Vc3mesgQ/+hF63PmxpzxqaCPqB5Tuhxjp4ErdCdaOw2YkKOIn8CP0vIVwVQr1b/ijep
	aloX8hqDjn4dd4jUWuKvFeV7uQztIINiK+r2Dp3o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647735684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/s8QMaXuZ3RTzMLacs1f74huC99MAM1Ntl7quSuUg74=;
	b=gqATIlZg7c+ZDglByL7S7YfUYi/8e7F1h6VxYXS6o5F5JrJzIxB0AhTSxC8sDJPR
	36LHjHN/3CeRgnryVlhhyQtoXDijOhHX5cT89yrqJkF6ydpNR6HxT+cMKHiSpNuvs6w
	Q9BnVUDS0iltZHhKscmrULpWcJ+X/5r+EoKcxYSU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa4b33e61-65f5cf1d-3506-4c30-a8fa-0debf88015ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e059d530aab1eb0f4d98110699c37174b25497147167fed9cd0cef894dab07d
Date: Sun, 20 Mar 2022 00:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647735684
