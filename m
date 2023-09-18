Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E8323759
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 17:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFB7C433CA
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 17:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695057908;
	bh=Egq0GiBMJOeXhfWVukvUIgPfkLDi97dCeLxjpT1/dcc=;
	h=To:Subject:From:Date:From;
	b=sQNd7z+lFHAgRXRE6WzIojSfmZ8aFbKEV6PAoZcSVNQvCMEaQxBoDrwHfGJYXaEIz
	 d2XLOgPkXnQLO5swZuO1A9ltMv7yklqnaJfodPTpbEG8qSLGGerPd55hgky2RqAB3b
	 DMbRAy8cgozVZ32lRuxwst3voB8qlx+nWmOQzwIxNx2C+wHO1OJRJlL2Bwbr6JJ4jc
	 aZwNye10oleVV32fqmHf5TO1i5YzR1if5ZQOo9BCW1C+J7Wz0vERkHy41fwNcTVVVk
	 XVViw53/KRCFWQBjU7SJuJjglyx5PdbkAsyMLInAaHabLjiwM/4uBBo9DI+6K71g1y
	 NOS9MPZm+SzLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC4FC46CA1
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 17:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169505790871.13840.6537749115431329710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c004eb92113e7b0f9afa09a3647bb75f6debba2812a727789be0cf65311a10
Date: Mon, 18 Sep 2023 17:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695057908
