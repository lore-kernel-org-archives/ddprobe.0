Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2E3EA4
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 05:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE37C433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 05:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674538985;
	bh=JyrYI0l8w+h4i4Uu39xTHmFYbz48zx9ra8ru9zq8gFg=;
	h=To:Subject:From:Date:From;
	b=GziGC16K2KCiOUd8XdUMgeif5K8LmYXvVGN4KzvVhFhRBpIxyWoCxuv7j8WCeyvM+
	 PnHo47KuvlzKWmhIXbqH4uGMEFMY+O3tEsp0I2MRyrAWic293UIXrIZSnxKxDjzQIT
	 /ByVezx+7b3XGUWf7BkK32pW6PO/DWHvMuztqOuYV14SEMzqy8FKuVZgkq5VdyJVbs
	 mkl7os2gWfLXIVI3QDSKMolmWPiZrg2G+CR4P9xMCwmneTEeiDgH8H1/d4qqkF8MV1
	 YOqNsjJ5WtBjcSsi59ci2GQwBAYRWfMHnkz98wxKChC9WmtYLIyxivH/1iTFBicXcC
	 L+Ql8TFv4rGig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1511C54E94
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 05:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167453898571.28302.12933463052601541768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17a448364d8aa4d7a0be19b902e41871a40d89ed011339a81865b8428003347b
Date: Tue, 24 Jan 2023 05:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674538985
