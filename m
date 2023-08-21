Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5112115BA
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 08:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D39C433C8
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 08:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692606848;
	bh=eRsP2rG4uE/T+Su2D5W9kHOIIuEzbALTLU49UY6V/vk=;
	h=To:Subject:From:Date:From;
	b=ctQeO+L2DSpLLlmoHDImbYlFamqQs/GlFEsLNjQcVjS3p4clcMRFtjPA1P/k4Oprj
	 6qfPk0gg8SXNrUtQ1BZ5vAqLc7nf19jU8Lg4kTxjr10yuSpJ3X01emY66e9vGg8xFX
	 P1KIZa2CC8CQAD3hlK9QkSBTNnltNKwPSOjbuGkhKUJwC6PYn7ey0/KDIGMWsJsIX8
	 eWqCB60yt1S60NkAjN5b67qf71KQpg+NRBDkglQ2YMUGM17Gpzvd7sx0ckw7aPqd9h
	 ucbwLeRCXgQp1GVJyQmDKp6/465qkAuY0+sXTqovpDGL4BDnzEkq0/UhYJI60XDNM/
	 QHg0hnXk7oT8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A406FEE4996
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 08:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169260684866.1736.5404612348279855508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 713c2bb5753852ece3e05dacc47c87c82808381b18e0b7d46a2cfd849e6826d2
Date: Mon, 21 Aug 2023 08:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692606848
