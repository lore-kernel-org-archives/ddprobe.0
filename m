Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45DD362
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75387C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669613454;
	bh=GjkVLMn4BdPT7V/RhDqHliuDYq3gsqlMFAd5nmL8qTE=;
	h=To:Subject:From:Date:From;
	b=FhWDTNMyUMGf9u9PqSnPK11SiXnDYop1jXWi1eyiAC96GXVWGjSFxFTxJyosUx9pk
	 vsMGLN5odG1aXzV+wwGFWrmWP7MLZLURv7qbhZ6PBLInun+SCLHep5KWy3WdPPR6T4
	 BxIw+HX3G6IqD/gqumM8fBZ58wO2PfIUhzTuNPPfEfAD/ViltC082FGoDAASWj9Z1e
	 uu20Cf+z+kyDVce2dIbkjNURymRUhqawhDbZx3+jdvSxu7zMUFKaUsYHQ0a+dW9xIl
	 FfUlwzhwi4GbzgiwCI5Nz28pZ2JDc38lEM6/mCUyJjjYdzsKCmhSyTHPKiAGFu0BHP
	 pS5U+UvS6BufA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561FFC433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166961345433.2841.12876276125428856145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 400a73c921f8d9a73778fcc1e3d64d6b9d732287123dfc60534f729420d2a1e8
Date: Mon, 28 Nov 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669613454
