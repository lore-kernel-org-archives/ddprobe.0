Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1522137C
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B71BC433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666012253;
	bh=Q1H2+WtbGYN2s5TD7OJ2HcckHNHAyCSz5k1aJm14KfE=;
	h=To:Subject:From:Date:From;
	b=MQUWCc7lpu5JYJN3mRTjHaR2H/azq0eQa7bHQTrHUtykzAMEGHgld+0VKDQ2F6Zbt
	 pzi55eC/ODflKm5utaJCHLeUhAu4/oLBET4ZdbvTmuPfM1K8ygQy496hsUc+cM5NAN
	 qFrfODc2bQHUEa5fS5UWLE7C5FlS8R1cUE+PsN2Yn4YG2ljuAuqku/nqzXGnghawmv
	 uoDVeKqjYwMIpiOWN1gNy7T1yOZ+uGW3o2WNoNST9arDdhW7ZgJetGMQIFiZWQuFUL
	 MNvpMJI6+xi3Dju/cVboBK1huzFviTCy1UQ/xu1ixryyVnEjMgYpTBdxs9x/xSjAyC
	 poK90hM0SEhQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57D7AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166601225334.13115.1480543735931314718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27284cc6f9dfd2b5d8799464452fb5482299a67ab656ef79fd4ce2c0a39d1c54
Date: Mon, 17 Oct 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666012253
