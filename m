Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF462748E
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77B3AC433D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663695053;
	bh=aC9x6k6QZixghbIF0F1aY9omN2FgTwqa6EjHWeyKPOc=;
	h=To:Subject:From:Date:From;
	b=Ga4pvJs+3/ZJKsA8eoVAnApyD0Ehpm39NPGuwdmx9h0OlMReh9t/6WDTiP+js54R0
	 sgZe7XF5dtPURgwelmci4qDjZQ30FepmXXO99Wr5J34cX5G+/HW0D2X3dpLVZbnlJV
	 m2oQD0rXcZxCj7ubnsFYMsGfBYFwydQSN7V4O7mi6xiudI5L/vqhHnNeW2ec8O7Pt+
	 2QisEhhmaYYBmK+i6Om/ylcscjA903exo4nfpgmYRfP2ofBr581VFQPr1F86lsS3nH
	 wAugpJjK73xGKJGdkQoNQM25v+0Mk2qmZPgCe9EXZaxUw9pvL/gcmNn8ERZ/1T7YfC
	 WkYuisRWZcVNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 636C6C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166369505339.2518.7867166140670934511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e044cf588116cb5a812ca7b9e1a390fc81e538da3f1a09de189c5f1ac0f5fe46
Date: Tue, 20 Sep 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663695053
