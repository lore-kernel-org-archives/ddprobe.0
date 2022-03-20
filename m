Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697057A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 02:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647742584;
	h=To:Subject:From:Message-Id:Date;
	bh=okpx08PU3HyTqPChNUdL1zPPhUrBSKwSzIt2zwFDgNg=;
	b=TDQP2xe0COLFS1Qamk4CtNigFsvYgdu9Na+d3IBSYTHXrmxTLGDZJ5dNTCg5uRBW
	86Mw2Tu+WCRpRIQ4zi/t3qAi5Q2W9ektxLSKNVcrOYzDY2MkYwRbCxQClvQmudefI7Q
	bkP1xV00cuPWKBFlTQr90MBAwBlMSl//1yVNaf6M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647742584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=okpx08PU3HyTqPChNUdL1zPPhUrBSKwSzIt2zwFDgNg=;
	b=em+9rc6L/eBJbvsU+QooaBJMD4FKHa99SM4MloP7BE2OrPrk9nYEbkKrJ9fxRNDI
	ZBJBmOlMdxv6Wz1nM33v0Suxrd7SaBRm1haSrFfD0eJmhag3xI5DysxgHYrQKaOXJxn
	tKOGDKXWiP+XlN4b1dcXJJqstjFfATr+dUOwL3d8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa51c87ac-17eff7e8-648c-4b41-97f5-2d98979c340f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f03c36838f5f5300c14276c00be1848926fb844c2b88d4d8b58bca07f101d3f8
Date: Sun, 20 Mar 2022 02:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647742584
