Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366DA7C
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 10:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE766C433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 10:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676458025;
	bh=c55HnRJ63pqC9R8yfDKrRCbpn24p2q4qMn1JH0fIz2c=;
	h=To:Subject:From:Date:From;
	b=nA/lHoqo7yJXgY/3KBpEeGVD/QwnI47zAM0Rp3LuO2qc+4XBNkLMCHntTKgvCd2oe
	 0u9YFUTsKnZFScl904dAksX/SkSQnUJ9y+gS1n2SPmsN8IyPAkAEQJD6pp4HgQWMRN
	 TLqq/7pi2W1GWnvuN4u5U7OyYfVzogXAShrzXGzm34+m7dXEpg8oAmJrgYcmGKjT1T
	 HO3klO5YE9cb2m5aTVkusmdpGAEPKLFJvQu0YeIO0Wv1G5jYZB0Fjqv9zCZkhjVEIY
	 yAnC1zRvTh6Ytnwk1U2VLrtWVlIk1O27iJvrJyCJWUiib5XX3Q9EGevVolDD0ndpYi
	 dql1pOgH+Zs2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA64C636CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 10:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167645802577.24794.2547962141754697322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee8c3ccb443b7ca547774615fa2f7ced7b7dc5c668b25afd9634fd64e2a06128
Date: Wed, 15 Feb 2023 10:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676458025
