Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E7D115C4
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 08:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F12E8C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 08:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686471126;
	bh=k7XjfU+pEjJR7r0WJ5EUBfxbAWD64DSkUSUahGtBou8=;
	h=To:Subject:From:Date:From;
	b=YtuoRizAjNmF1zumoThVuDqbEK6/bUoimqpMLMK5dO8qdNdYP+JDtLKUF6Bm9mvlc
	 EOpbVT/GV7nBLWc87MHmL9d8ztilGxENLGaUTvC5hfyQDYVDn/s+ehAgUhyMQxoZGt
	 PKq0oHei7BMr0Svjd6i6mBeILvKdoJZ/JkmQzZOyxONMq244zcgekQh/38VI5YBCkZ
	 Tzg4MZruUZeY/DDoOaogEltWBsX5Jbvbd93UZoTuGtez+KtmREY7Pcc0bQEMY99MOj
	 Q9fbCXF7/tobWvtgUXUyDt7HYnuboyDZPmQjtic2iau1qDCFsOXpIox75doYZqp7gc
	 UBzf5DMQfi4Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC496C7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 08:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168647112578.21607.13792107136878185926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bed13e14dc6b4238bb6e6a9135b9d06e127f8f6cf4b15c46205a752fc0ab3eb
Date: Sun, 11 Jun 2023 08:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686471125
