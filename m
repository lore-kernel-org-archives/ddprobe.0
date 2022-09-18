Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4884258E
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71433C433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663540253;
	bh=tesS+sV+ajy5D7IRxOs5wx1fLfV8PU6a9YTU/EHw7M4=;
	h=To:Subject:From:Date:From;
	b=KrbLMR15nehdDg2uQtEcJvKp6/6CeQaFzZSHtmj/aRtA8D1OWB4VbqTPX+2sfPKXD
	 CVTUAWvX411guu9vxznBA6xJG5ZZ7txjLLSQaZsVNrxG0u8IR3DnyXgWoE0xUVy3RS
	 TkrjICNhyk8iA03Fx/xKv4SKhGXygWaVJDk7aq0nGfatcufJYjpDJ9J0JlFFyf1xys
	 eDf3k0O58T2q9m5ipd03t3185/5AzlIuZ6ht4X0YfeCqzDtDW68udIEd+9Lq8gZbKx
	 T67jLRavjjVlf774kfQhKWi/BjqW8H48ltX3lcSmib+5AqEgMXQHZsfk7fcL8o7vfR
	 Gn0gfBRvILMFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5689FECAAD8
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166354025333.9058.15784839559696627954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b69c7fc287e270829aee2dd8268099c934ac09487d767129fe5e56207ba9458
Date: Sun, 18 Sep 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663540253
