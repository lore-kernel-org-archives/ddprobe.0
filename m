Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A38F7C
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 21:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644787825;
	h=To:Subject:From:Message-Id:Date;
	bh=xEVY9CrMYN2q6w6O38IKSX2vNBbuNnzS5BlQKVi/W10=;
	b=Xp5fmrRby7laUyf7+64VYKoWx2r4pW2VDg6NxJPkXsT0NSoB9+uilE2cDpCEIekn
	q41fan6Db8FIjxJVLxqCDjGGvU36kHrS5ivLPx8/4AZnOIHfjEFZ9UyGvxZHoUQARhx
	p2QrwwZ4MKsa6P6z99u9yaZauTe2AFR62GoclO94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644787825;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xEVY9CrMYN2q6w6O38IKSX2vNBbuNnzS5BlQKVi/W10=;
	b=QfVcqBl4yW4sVOA1JfHeq4Nry3lmIPhmmlTELMWS/G+GoyKjA1qsJG6nYDubeeER
	iaLwjJNBKuLsritOyjz0HkBr7h7ErSObgMox5R2EhRVV28kDC/8LvjKUZvL2pV31Gu+
	GNX4daRtx3rfWKZEincnviUcdpPAgGU+ula3QrhE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef4fe7afc-36c74c25-26d3-4982-bba3-3c951b7cf3e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7dab42730456c066021216f3d1e320e09dd9ab2c6f9f46feaeb4ba331ef3176
Date: Sun, 13 Feb 2022 21:30:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644787825
