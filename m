Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E8015C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 03:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 705A1C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665543653;
	bh=jnOGDGCY1VVYcomlJQfAUUXeaMy+CKJTNAMyniWtnPs=;
	h=To:Subject:From:Date:From;
	b=e5PUuVdzcsFL0EKz299kqZfOt+IdFWCCoIVtnjc7T9IWjBaF27x8tB7DlQ1NyiAJW
	 JwXPJeYD5ukVivEjcgsNlxbiMLTv6ubVKmJ9bvywmyUK2DIdK4zJcRbIbt3hnYcwA4
	 IZmJ9aUXI2xQRIqOn9Kfa4W+cgqHEgz7EU++NvoGA0uiUylWAFv8qhT38qduIythIK
	 BaeAxwLsmdXNv+r6jVMk63fzzGATnyu04MxN773VhlbQl2gGeOrHWQq7Bfu5uI2Vmo
	 d4DuTSrPgpFvr7bwMokq6Nelxqsor7q0wehpTeuVLh4hs57MxYsV3p/GBa/9YGveEc
	 CG2VtArpcI7Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55680C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 03:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166554365334.13119.5339363127292574879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9f6f97c148cbde25b4a45391358fb0f5e284e0fbb75363d38ce6852d57523f
Date: Wed, 12 Oct 2022 03:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665543653
