Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70CE7C8E3
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 16:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9A0FC433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 16:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687968188;
	bh=ZcBfFSY9pryQy+2h5VphavjksFLYpjFgRbQCN18WZpg=;
	h=To:Subject:From:Date:From;
	b=R7l4ge/i+YxoBd/lLWGK8P7GJZIcMcqtFbaNTWImVbH/ATHafoYjY/J3LI9FQfq9j
	 nDHQduOuBo1twGIE3bBX/4O5xI6x/wKmo5GStGAc/b0i0htI5QsY66mlEYHDN61oBD
	 6yIxAMjXQLPnVWZMJWMLABirPClsGwUCaxHk0IGMAKJ0lNpI8QKS9z1mft4ASHibRV
	 OkG44+grhyeGm36QZ6xlMo7QVsbrnULMaJ+/O6sMUTBJWZjPcXj8918yqvns2tzTf0
	 U6nwhmfSkYtSsON8Hk9sYjh34R0WLBsJZNPQ5cAqgIRsLggEfWIEWUm6AQNDx98XT5
	 hAVoVFmbP8+iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C18EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 16:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168796818877.26181.3793724154332329287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29887f5a9a063ad43c62571c1eb3c867ad499e3a3fa4110530a38bc254d29cd4
Date: Wed, 28 Jun 2023 16:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687968188
