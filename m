Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D9E10EB
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D393C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663653653;
	bh=bFKppNmq5kF2F4NABHfMFl5uXWP/GLvZl/CEMwdSMhw=;
	h=To:Subject:From:Date:From;
	b=JcIGJNM/lPSTDI5KeXrQ5rxlWoZ/RmQQjUECevq56OBffScJoOQAch0Jn3ASSU90B
	 SXCtReUjzd2mPKWrSOZDHSYWuC3xHJ2pUNzosYTxFhCPuvWLPVvYsysnKoFvf71wsl
	 k0zydma4LNz+T6TZv/X5uOeCGawO24MHQ4ImmFLhsBeYlUIzVShhM3eRFHylnHgsL8
	 HxQo/Lz1pfCdzG3hZzuUqjr2U3pwsDuoj8yLKqAIp3JUoi1stNIU3pt8jbA5Ws1pav
	 Gjx6im18SL1Z0qWtaNrfMphCMstbigL28XULdhZvfn9kV6wsyO7AsbOIE+I76duCMJ
	 RKxm731tmVM3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5359CC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166365365333.17559.15065082041518562377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d13a471a90d8b7fa480533c71bf5e8a34b6a4cfa77e355217351f031144dfb2
Date: Tue, 20 Sep 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663653653
