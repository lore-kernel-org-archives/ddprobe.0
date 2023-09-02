Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABA63C1E
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 21:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2ADBC433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 21:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693691048;
	bh=uUklaEM25Uih89PAF6KmbSoj/IaQAw9xIATvnxOERs8=;
	h=To:Subject:From:Date:From;
	b=sQB8fWL2g2M9acZg8jXwDItCOQ3Lu5G9XMptU2A84VmYuKpa/owj+jTAHUWosNKGl
	 /EL7JQDBzwVpWbVW3P9vjweJViLytBvW+EGDwYnutuX0Q+9qpO/LVTRkD5MTk1wLfi
	 WZ9trLGW3eYLE44mddhHXYc4SRt3Zurad2MvU+0FxBWYW6jq/n59Ft87jt4v3hijKt
	 WsPlwIOAjSpFqSk9pTaIVW+uMrq8TVmi3avCzBArI4rrjZhQuB2gQXDG2dxsdJED+N
	 s8zPKEfAsXUeKI73fCGbueu4ocwI/2WDx69oOba+lRAhsO39riT59aZlVipeaC3Qk8
	 VyyBjorzqZlNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1DC9C71153
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 21:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169369104870.23699.16300572867060599812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 753e7b854ff3993a174e16848e290daf31fb2136a6600b7c5fc6d22c7439b5b3
Date: Sat, 02 Sep 2023 21:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693691048
