Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04EA7F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 11:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F0E3C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666004453;
	bh=8xGVLxLHgDDHn182lMf/OPN/2StKAncYzNdfbpBPwXk=;
	h=To:Subject:From:Date:From;
	b=fDeodQ231SUouaVFvma3fL5TNkDXrU7B6dszB27hRZqRle9PNJBiIfYoZ0NxohxZf
	 QYaL0Mg6+OkwpHmOlpc0GA1QzKyRk2TBDAOBhw+ZXDuFqRx3yRVmnwD1g1wtsITgqI
	 dV5K7DOBQp97fY1QYKmwWCVIAY2T7RP9vHqFLGrGnUcTU5vk+ezu4he3PktCgQvBpz
	 Pxegguc/efDFYkWxr3naaLCO3TZ3d2ZvMp/CYAHhCaFplhcFmA2j93DZhXuxWPJQ7Q
	 6GY+hFF302Lm/1vqRVGiQGrnRsqTZYx+aVhhL5v/k3vE1SevYsNrqwnFlhNKRmj3bM
	 j8P696bTo46Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5679EC433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 11:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166600445334.15732.18221090001157038218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80db0eeab760a22f4fb826a40b4177c26247686f06888b3ed34abb264c4d8dd6
Date: Mon, 17 Oct 2022 11:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666004453
