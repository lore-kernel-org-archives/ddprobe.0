Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFC351FCC
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64BB0C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663037453;
	bh=wM7ZHSAZCXr3BmhzuaCjlFHIBfddLWPnAw50jJy65gs=;
	h=To:Subject:From:Date:From;
	b=CrgKv3CvXY6qH1t/4xpFq8VhL+jVqqkWau+oO9BBi3ORvevDkjDpmcwCX4noFmTvp
	 BvRWjZn0L0ERgCCbAcxT0J8LnHY1UXDuwtJSsKtmqFRI7J2GBQfa80lVVLspJsk2DI
	 RCoxguJjQU0HtHnh7yD1OGeH1kPvAuWlKGyGagE/52IRO+klUQGBTR10kHycd4zAvJ
	 0EqrLFp+tnPpiHhrPN0iSFqU8ZK1IGg61oheLcNEmAz9y1Ge3j6jg5kwRqpBhi/Rk1
	 NUhtJxygcog1CwlHoAgak706YZrgpNCG01/kAGuj2I9RDfT1fIOE6A2fiA6FMjlsqp
	 C1YfASFqUe9kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FAE6C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166303745331.17537.1035003226369580334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f4f0deebbb0dbb745074970a85c06c796f4c833b7e655b2f90107783ff4433c
Date: Tue, 13 Sep 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663037453
