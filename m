Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4CB23686
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 03:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645846584;
	h=To:Subject:From:Message-Id:Date;
	bh=7W53KCd5VUY7Bw/HJjdK+8Xfpl+RYMbTPmibQN1FkGE=;
	b=JFFe5STcWYzbE5m75xtP0WBm8FAcCbAJcM0t/5eGtlcpMzPQqKydao5rSYuMXldv
	/ao1Kk4FGHP3aPg1PTkF2fsLh+E6oI4Wbgm8USm6woWLjkAV5WuA5KysmgjHFzEQ/vo
	FPejhsl+kXUlAq57lSTvrY0b0ifKj30jCbap24vc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645846584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7W53KCd5VUY7Bw/HJjdK+8Xfpl+RYMbTPmibQN1FkGE=;
	b=GopCGJM14/6nh+hbPd2lK3FOaBu+s4Weot1Sr8jRUchf333vfBJ4Ovvlt4TPOLkG
	PZ/zHJ5SilbcmP5SH9k+9nMJ+Y6sbnsioi1ikxi9+Pz02G/oQix/DJ1BurK8ykg1n34
	ls4OkyXGNndjfJrhVFiXDLD+ViKJChHbDf7NoAe0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3419dda3-31c3ffda-261c-4d06-82d0-723f52268840-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8ac43e206bcf347d2825c282a441399c337070d2bd7e6d81564395b424d10b4
Date: Sat, 26 Feb 2022 03:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645846584
