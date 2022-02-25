Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A58C7A
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645784484;
	h=To:Subject:From:Message-Id:Date;
	bh=5qocYwRIqUA1mWDrMs8Qdr0WFoNSv517dpzk2Cq3wlU=;
	b=kLd9AdqhohXRzUZuEV3EoJzPOPrYr55HFtqvuKAqkNhav8UupoS9o8k/WXn6x2EA
	Sv8mpfAcwPUu8fNXHjvBaoEfz57q+jZiuOtXETdpGcWFJvoMCQgtGwupm6ivDxe5WHu
	IeVJ0rj3/AEQZSbWGv5prC3WElhEUknTEwM3eRCw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645784484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5qocYwRIqUA1mWDrMs8Qdr0WFoNSv517dpzk2Cq3wlU=;
	b=fhQtiRb1ge8PztkDuazNjr8IF3OWN3cbIlRwCjeSnahF9xzWTCMWrTf0JWNk9IkN
	jfpMzK71lv5Q54BqC86mkYLk3o+o2BWCZ3EzEq6mqENrcaoU8goEkB+PDpU8CGS/cBQ
	SCQDSrZ6Zlnv8yp78Hnvq81e4LjjscqbqDYNFCSY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f30664bad-d76753e0-4ede-45ac-bd47-f3855b3336a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b07f0d12fcbf9e90a55d1684bc2612fc4638366f0b1032e32c2aa6fc4216c9a4
Date: Fri, 25 Feb 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645784484
