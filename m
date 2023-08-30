Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6824D7E6
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 01:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3452C433C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 01:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693358048;
	bh=uucC0Qle8jgc2gXK8QdStjcioYWZ2S9hjj/zum3CKVE=;
	h=To:Subject:From:Date:From;
	b=Sn5GEtmhLIF2U6zUisc8k9AGw1rNsStG1Dw5ukaSQPbeGKe8VVdwC/u5fuYnWMSQp
	 oSnXcChKvFHs3O1TjeMS5jLkr1K3TAVSGUVRA9fpZ+qsDUBD/I9GlLqM3m8EU60vie
	 8Au6c+0iKyXF37MEFjxrso+3CAkMcjGvaXxmWjJS5fiGcd6cCxIhfXw6ai6nLZ+2Nn
	 guLjl/G3JbaRFF2zwA+unPrfCiL6f34SfJwqkBBToxQeF5gA569b0nBQm/sTiosr8X
	 hv3DPaTKtUcyJL//PBDr229MnQTP9Q6+DBXPJ7Vs1aC3nqI8PTnwqhqyurooKafRI4
	 GRLMfngFK/u0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A903FC83F12
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 01:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169335804868.10195.6531778555348324166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6257a2d7c65f0b1114ba2f0ca954205d6bd2c78379a8a43f3ef2beacea3fb7a9
Date: Wed, 30 Aug 2023 01:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693358048
