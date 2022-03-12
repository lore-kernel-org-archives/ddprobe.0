Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6208536A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 02:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647051685;
	h=To:Subject:From:Message-Id:Date;
	bh=qxQ+uTRBjk1axkQtD26RPMPo5TyV9blUpQO1Dw+i1Ho=;
	b=WfqC5mHNFX26di+nFeKiUuH+HhKH3h9cFkvz5hnTawYRqDORD8tj09WDlimJXQ4I
	n39WKppZS5JXCssfe5q8JYCiCErKWpw87qFO5fg78GHX7kxhtTqnOQa2c0ZOe1xc1Vu
	BRphsZOirQsXCugdsKqUsqremqXzKvBAi27mCegI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647051685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qxQ+uTRBjk1axkQtD26RPMPo5TyV9blUpQO1Dw+i1Ho=;
	b=OPT/DQRGdv74TYSof/Ds0DiHEWpPkw2Kd0476cc01CikNymo9vGn66+njqFuXz0L
	pIwn4BnK2AA6YTJi0+OKqjJWLEv868WvqM53RG/F5j16PCTu01QHYC9iSpz8Mc6JvPO
	ewvBhYvJm2mL1P50bddsf8GBuem9pFB96Yi5RVcc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7bee3bb1-06294272-5810-4c3e-b8ed-d4287dbf83ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e17d5ca31a88a49698dbb0540c01a8c97e945ba8ddd9f137729afbcdd4ef28a2
Date: Sat, 12 Mar 2022 02:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647051684
