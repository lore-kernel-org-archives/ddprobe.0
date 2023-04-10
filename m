Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5894C2F3F
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 20:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAC8AC433D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 20:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681159326;
	bh=mvqa3ZvEUBdc5LGKEXw1LzTbk9lze9ZIqzJOsPzlwgs=;
	h=To:Subject:From:Date:From;
	b=NxfEA726woQ+haJKQp0CWkU80MQPqBDr9Vfxory5FZm/vOnQdkmtLme9DgHmxYiNG
	 MoEDof7cIGWkR3FkrGo0qAIim+OZ/bILShp0SsQ/qqMMIj6S4ZqM9GhqaPOShsdT+x
	 l/DF6JsXuGBvF6Wop1nVwsYF+QBZd40PZ5wDhKjTTnAv+qx1MuznQWTpDtE/mduQGK
	 OM1Om4jSbwdID5yNpE3eXkRPS6TJ2avZMzszaXRbtIRcDPc92p+MzyXvzxdzFdeRdE
	 PCGxRJXUikiFiVbPDWDaNDwR4Ih/aYGoAxIgqYVK5l38Csyd2GBqzVQRW0aUv6Csc3
	 EQYsoNmNm8Ihg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD7CCC77B61
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 20:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168115932582.400.1580810285386399826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03847c04fc4591e71b1ae6f7af384e3aa28f9c153a6515fdf3b471d2dc9a8e7
Date: Mon, 10 Apr 2023 20:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681159325
