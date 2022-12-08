Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA28811
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFFCC433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670496654;
	bh=07Zx16ZZoM+pAv802RCfmoMy7/n8cXvbx116Vol2qfE=;
	h=To:Subject:From:Date:From;
	b=avewFFZ6WuEtjIxclyYfxZXzkeaUsC2cOw6FGaaGeyEFuf/Wlr/Ejv1EkIQSDPftd
	 rjcKJ59aN7VRJiILck4NQgSO9wqujfc9r+OLQRCaZquvsecD3fDXpPv0LTFO5xLT73
	 x99wB0lpHa2b3Rd5TymcT2B+eABsg7srA5ZXAZnpzn+Uv6WIo44a3CtVF4ft5FLfQM
	 JnpWWCvVFzr7XhpleRI2/0ymfTz1ZM/ynXd3VCbzBRm/4EAbeWsJCCd6YBzDK1pFiX
	 0iR2SPpA12vPpuGWJqcF6DoPX6JPT1ZSyUToSz5tLq1h9wo6ZNEJDfMbucWygQxYtl
	 oYsbEpAnNS2xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E381C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167049665449.19244.4085197821514807390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0378d740509b9b5a3d456fd6986e2c26d0d904bed317d0e28523f9a85692253c
Date: Thu, 08 Dec 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670496654
