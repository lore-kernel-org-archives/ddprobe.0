Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E321FAE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74321C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668480054;
	bh=8LxQErlxECwyc++WV1tFxuOYu2GcP73xpQLpF+yAnXc=;
	h=To:Subject:From:Date:From;
	b=HWHSAyU7F2ObLPgmkmLorntfNxgYUjS1Jl0jGruI0gY9J3FZQhpTmQBWxJkPya1ya
	 j8kbspJVx4kx/27d/2ZX7KaRailj6LvQFH0SC43H0kyx36Oo82PgWxj4+57Ly/n1g6
	 lXpVZQdiK+t6WelXIo74elhPNSsQyad/cG8a8hQEBsDyOa6MT+ws5d0nqQSQckUb4r
	 9wg/jroQiLNX76FD4U+WzgoPvVkmcmCWwh7av+V9c2lnCf6sHNKMgnAEQH6ELgKG7c
	 CA37CRR3zlkjWYgHNdKUFGNwvnUKGBLIsMt0cACp2J1qkCBJ+DukXR9dcziu9sNNXo
	 p2whM2w+5gjaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50ECCC4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166848005432.23481.4791984500266211883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c05bd451f8d1141d0c9b481e739054999957b94e0bf1076be96809e5cdc2182
Date: Tue, 15 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668480054
