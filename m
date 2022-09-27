Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C243546B4
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7502EC433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664298653;
	bh=X6J/PgX/yy1lieDa8lO8BsajFQiXEXpPScK9Z8fAEcI=;
	h=To:Subject:From:Date:From;
	b=Z2zxXJ+5pJDUzWWE1DdD0a79bCx52l127Yl/beH6WHiETQgmEUpoWiRWu1tR8N7w4
	 mY8Ew9vbWiLB2hSvY7nsq72kszgMTVkoX+5Rok06U68v2KzoVyIqlvpnssXJ5o1a+R
	 rspFpjSua+janNiNiuPT0btvbjnb7pNrs3aZSNn324ezavZq7mXLppDY4r0iyXYomD
	 Avb0vurNOqWkNVwa8whhGgH4qxuGLoYUMMMSDpD3yOtC+E7Su3ig8t7RjWENYbScvb
	 lwX3WVvBQ9u0P8T3I79uU6qbGfSZB0ihXi709VwzhZ7ly5IvZMK31g62ki/0WbWvS7
	 zlZffd3cYBH8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55B0BC6FA83
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166429865334.2104.14547036487314257686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea8df691937d47fa07610a5b95fdfaf93804235df4d7630b0b8172b44e1299f0
Date: Tue, 27 Sep 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664298653
