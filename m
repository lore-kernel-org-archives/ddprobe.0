Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A562915
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 09:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8DB3C4339B
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 09:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686650165;
	bh=AQj7tgxpsyseumIcz4Ge1JZGDx4H8Nt6rpPBeLFhQE4=;
	h=To:Subject:From:Date:From;
	b=BLFxR5ohxd1bbIqqOY0xrNldsh89nOTbzMr7Yc/4jBK80Dk5U0o1R7dRIbMkIXO3y
	 XzUoKl5COcyWKoGCWJ9Kbet438JX2zQvRycIdcDskj0yK/fWNbANmcBj8AHO6qyxYs
	 Ajiey5qfU+b7C6vsC1oGliQP3sb7U2kC915yQGK4KOAvZSK2GWKujTGdfN0B1OdM3q
	 lrAYS3zEJ6khwnjfOCztWxpb57CABeJtWgwQ3+YVfrJ/gQ8VbPO5eeDAnoahvLmNe7
	 dzUDfhZ9W1/uym8vTwmhG6CJSlQ+LoJv6vGZKHsi8niYzPQkgNGSCQwpI8aSMwgv6T
	 TcQg0+BxUTHVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE864C7EE2E
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 09:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168665016583.18532.15886751420550692415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5da9ac52fb88738df760277022c46832f6703301e80f29f4da3f36bfb14e0d0
Date: Tue, 13 Jun 2023 09:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686650165
