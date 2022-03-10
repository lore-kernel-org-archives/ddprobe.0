Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C7018D
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646929285;
	h=To:Subject:From:Message-Id:Date;
	bh=1JyEwDleqE6ojLBO63eQ9OQQKoMvVvlae8Ek0ZhJXXY=;
	b=eso4tr1sbYVKghpGAq2LqBFrI5wytoIVqfid52tAdHVeroQz4vrcp7UUBeV4ID3+
	P+pEKCqx1/jUjUBXMmX86GVlpOFSQAusl9pRNKoRNPuDehH6h0XZ6LNHSihPNVDrXXp
	ms97hzxPX/K5Rtm+aMtn91RoKV8dbsaTgugJsiQw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646929285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1JyEwDleqE6ojLBO63eQ9OQQKoMvVvlae8Ek0ZhJXXY=;
	b=EBsEmSOrsS52+E83IYbiIL7NTq9zcYxRkryef6fe432m7O+8FPP+RJfqQEIQDwFx
	82/1sojIHGEujNSNJM2m+0GZJ3Br+5Ha3bp5jVToxMeycpSIRwP678xu18+UpWMcOBv
	aabuWHGGIEDU4wcf0mLGGXHvJqxjy68N/uBjLHUg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f74a28ea1-26dc2cf8-c239-4905-9df9-f7f47092b9d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a23f0a514f18c0ed4978758c849a378726ffcc1646a6df38637c07041117e1ec
Date: Thu, 10 Mar 2022 16:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646929284
