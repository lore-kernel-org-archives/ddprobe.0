Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18333201
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FFEAC433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672348287;
	bh=/yDxzdfmy2Y7EwRHvcLYKzdOi5C0BtyGy5O+TuT9W/4=;
	h=To:Subject:From:Date:From;
	b=A8DXkpsxFi6s3pRc5kh7R8FocRxratWKsgLSKYDpeaTegPICMcwztPdE4uGw8A13/
	 lIzw/FfZR1rLY3Vf6uU6majsCeiRzB7AdoWsNYZmmthU8wpQyWehRYisKNQaM1OxR9
	 cl0utwO53eFKY3lrnKcerVXP4XS9crjAdY/ZvHC+Yl7JyJm+UIbQoSY89+jg2MeSaW
	 Nc2JrVh1KLFW9aIqSK8o4Iq+7csOc+3XsCUs87Sdjp3n83B1opFniWfQuWYsWiw+se
	 d+7dvq2hpBS1d9PC+Fn1SpiWhNrRCKSodplsaVqlxE4FWCMnsm2HSe2Y0HHnqKOGGU
	 iEdvOYDyOr6Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6563CC3DA7A
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167234828740.22568.6938456072940106086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1e63c2bd2a279f4e257b1796a9744f231cb7aa5a804bb4a84295e822618410
Date: Thu, 29 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672348287
