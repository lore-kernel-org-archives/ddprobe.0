Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191A41F176
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRrmode2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88FCCC433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699959496;
	bh=ahD3+t9yrcu3NYmxQN+dTjZXDu/hHaZw6E4Fvk9mF/Y=;
	h=To:Subject:From:Date:From;
	b=KRrmode26BoM72DHuG2eVyk4TRfs7/KbdzsqZI1bHbfcsY4gCCB3v2rHeCQwCNHly
	 URI76Ty/T4IwuY6zYWZCzLcsHY0YakraeSSLVzPqGxMGmjYG8rzVveFROY3w/f9jfe
	 pCPzQicQqapVeXF4wArH82zOyEOwTmP7ZENdFeDwqOS6Ne7dOobJwDbRmk7WanuGuE
	 U/OWPIVhUlpagsa0cseXep7amvevbJmOUfySBozgL0zQa/xLLY9eD79F+jDpuuqSSw
	 /7eBZ/KPKqdZDyURieWmgWvf/4FsTbmtRYv57MVW5ijhcAL/SWZ6DXQixjLo2BdnH7
	 /v2OvuIytLwWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E2A7C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169995949643.7671.1574444224767557805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 752443dfa0f93dc39ce3a9d3861f129d5405dd90871f5b4d3fa00cb113447136
Date: Tue, 14 Nov 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699959496
