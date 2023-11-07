Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224C230F97
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfJV2jbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90615C433C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699388296;
	bh=HfXPRYIYhpMJxjjcxGAUeO36Q5if1S7fwiSNn0EjZP4=;
	h=To:Subject:From:Date:From;
	b=sfJV2jbRw4s5TGaMhgTsP+ITeYW6xNBXYBO+VIlH5iriPQn4qz2tVA40oVsheQz5b
	 HUdWcsl3x3kmVYuqd8oUKSW09NJfEVSgECsLpGpXa12mY0ymG4m66tJokC+V8TxoeJ
	 1tRbP2n7O6lM29JE8NQGpbnm6fKclux0RIKpTY1qLTN5jrtoQITy2XVzfYvaR6Fdxz
	 fPaqQBScrLr0H90KXLnp2Y2tY63WzWkr/o+2Jid9JEuxJk8t38BAgYA6EYbzVFzf9G
	 JLoQQjVfezpqSSFWJeieNXr0geAYGUjDfXlkEkM2yvV9OsHRG7T57MqSeyUcweyVNU
	 0TaATxeEmmdDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67901C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169938829641.9910.9768091681913112537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0bcb2f44e0421ede752adb4422515c4ce3371c077da8d38b360cb025662729e
Date: Tue, 07 Nov 2023 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699388296
