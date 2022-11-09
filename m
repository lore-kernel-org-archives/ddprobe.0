Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4306EBF6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70086C433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668027654;
	bh=qoemcBd6EGW5tTb3Ns+JTKBbefA33/T0XpQS3FSmd1A=;
	h=To:Subject:From:Date:From;
	b=LlzFfpXYrIS1wVQUXp7bI6XXzhxO1KVrCq2wgDr12rxrJwyEj5hqqpp87nC2869b5
	 LD+HFPwDJKSCJGdZU+YrvgVK+73lL0S8ke5K6JIzAsnk+COGKgFYYdSglZ6wAynxe/
	 sdkxXQ/kfB7oil8o+6dj18yJ3sN+kD3tcvJHlVqF6Didx9RIt23zPQz5SBsGF844wi
	 hD+jEPG8S9WbsDl13OfYjCF2ceTROc1l8uIz3P68d4KXjRXucZ3+FW3B/twjxxXZcm
	 aHlmg25US6j85mamA5i7JCvwjc9+jn/ezzeTnbfiwuf1C3k3rgMaIwnxhgw2LnJTfO
	 EMO77Jeu9zKow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56581C4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166802765434.4181.11477635783962598950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d16bf625d63c4b8893b7673a49dbd9da3a689bee6a2b2bbfb31350b69c4b77d5
Date: Wed, 09 Nov 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668027654
