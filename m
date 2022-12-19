Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16E91C02
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C798C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671459687;
	bh=erg0V9tdxQz7+rN8OCL55MajLuQTVbqqJpjHPQ8jJJk=;
	h=To:Subject:From:Date:From;
	b=gieQ9R0YKXpa/qvICBifMwCHGrZAlLLcILI2NtEMFgmT4BaOYOTrOmZkHZ7ABblbu
	 aOpkcuEOaprshl0zPZBfFxpshbq+yH3QwKTNN0uXgDpjYGnUlfAJMTr6ZHli6lzIr7
	 lu0m4ZIIZpLL0hqdSooMvE8u0KMMkThO61h/JB996w0pU5LNEfxeh3yakVolQbpCeE
	 qkpQ4X1r9yCPYkF8e0B5EoOEN8L437d6w/sOlhRVgSGMjpjEu3AaewvuHyWGtt+OCU
	 XyFtAFEvP66pDjXqx3G5psX8mfRgdb7Z6qwhabKqYX+jvTyp5WS9b747UG1tqH+UwG
	 OPn58tT3qzUYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 612C8C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167145968739.27468.14051709171573615786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5066e9cd963be9c4ad18005c61bb1bd2a5b40524b1e939343998380800b55221
Date: Mon, 19 Dec 2022 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671459687
