Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2885B8460
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 16:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0EE7C433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 16:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681748286;
	bh=OtrC+3wiSMH/NhqqHmJrJ8lbPhwYJ6Wk3N0Kd2G7LOY=;
	h=To:Subject:From:Date:From;
	b=Pf6+LLwhX3d8HqRRFXdT7si+Z33imh0bPoMWIou0EuKCmzFgZBsmkJ3mv+NfkiI47
	 i/u5zmSQnVIMpi+P1oQxZa0IdtRaNL/7VnZPG5DaeT/xad6n2NPeKmx8MgAeepKLus
	 fAsdSxzdCE6Xmrmy4mT2a5JA2Kc8si0cY0guaAalve5+GU/wm6nXNNg4Jll1Pi7YBR
	 9hkusY2Grm0RJs8TrH8NTsWmdIvhJKnPRvpDU5ZQf3NjOoj+p64tJCTC7iwVuaoLAw
	 zwARksJr3zhG4vxincvDiqEm6dSJzDr0dyNP+NEec9o+A41zPDKUh6d/riEsjuvtS7
	 /0PLhV6/ddYTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3668C77B7A
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 16:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168174828578.8165.16730314880416735095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 188856134752a714b9317cba7cd8c3ea0f289b4790ffba06b174c48aa67b397b
Date: Mon, 17 Apr 2023 16:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681748285
