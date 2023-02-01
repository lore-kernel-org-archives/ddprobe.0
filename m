Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B527E5
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 04:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BD9C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 04:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675224845;
	bh=IkLpUrqOJTsGg+ciVN2g1D3PCyauLFikR2XgUEAD1g8=;
	h=To:Subject:From:Date:From;
	b=CAj0/WRAyw2AtSjNj7yTZLjeFqZ0qNgz3O7j54FO78JC2qU2t5MPa6nj0VOBZDzLx
	 YTUoL8cqDhTM5DNwsArr4w3o9TYtR74pDx103NkTqrQL+CkH3Zsg0+lQbgE/S/zCOL
	 G/QitnRJCbKgYBptAVJt+XFf5dWwrZzHewRaNlZcktcP6/jNVjHsjwTlOU5WxIbECr
	 eAiLlTScge6nggRLxztyQ1lAJxSb7XV44wEPi1nBX9vhoFxeZXA8EPOvhY6TC36hIw
	 OyrgzhAphAW8vqh1op5H7IsmipXFxDGOI4v4fC22o/WzqL2pi0K9HaOWv7+fCh6pHj
	 0BCBeE4Ekm0LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B453BC05027
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 04:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167522484573.26912.18104955948310891841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25f8036e6b9bd6e5ce68709df1ff0d436b2168d274dbdd83db6e3298794a1b34
Date: Wed, 01 Feb 2023 04:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675224845
