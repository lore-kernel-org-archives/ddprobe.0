Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A572B3D8B
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660735853;
	h=To:Subject:From:Message-Id:Date;
	bh=ykC3Di1524QBwSeCAsmS1DxKtv8P+m4mvg5m2dPC66s=;
	b=DA0Cw2xpFja+oWvB36q5pkRcahSxAxJN7UVssbVXKkKSe8TI/xR2BlUdcC7n3F96
	li/ht1iwH3p5JtpwOX0PHcrcbg6HT2JztILiE2LMscPalGaDiv2cDH+ZyTPgb7lb5+K
	Ofq1flCMrATB4NgQVQ+jym/vn+f+cP3NUGdNhF00=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660735853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ykC3Di1524QBwSeCAsmS1DxKtv8P+m4mvg5m2dPC66s=;
	b=AuimHrUj4OC/2rxExVhaBQva7dZTkejqUPo9Ig1JmIb8fW++NCfqveyBGY+ngWyr
	VvQSAwH0VQwta1IFo7P2mTwOLnRuf4GkxqH/Iq5z+aU9GBKVl3tzuL1ualNn/T56b+Y
	O5hV3EsALfw86ZAGpnggj8l56GnkmiEWY+Es4Zj0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ab921019-67a3ef11-c31c-4464-afbd-445094e3d0dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b98858c14e47636b30bca84c356231cfeefa688b37e523112762371b723332ce
Date: Wed, 17 Aug 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660735852
