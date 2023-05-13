Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94A2B22638
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 15:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 344FCC433EF
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 15:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683992886;
	bh=JIq+3wzwuyDCWiyhsm/p8KU8yLIAE8jD+JvPVkUEHes=;
	h=To:Subject:From:Date:From;
	b=dVmZd8Bsdtjc5RaT+EBNOIbhbRoCm0Rg7U1m/DbKtFjxspcqkiEQvE1vqwExfBCB6
	 c11JOgHX7dzrY+6qJrzE09ARbTQQz009m9gmOV/X28mR7GWDXOhQON42uw4Cxygd52
	 nSiY1f0bVrBKCNjxGd2vBlMx7A86S303HAB/e/YxYt1CXGf1V6qxIk4WAa5xdAh3pW
	 L1EZGkaCcgGiJf/KmJTRem3/v0Lsq6Cd3Q0SETAIgKSTd3Jzq8Fc8/uwP/nVMiu7XY
	 qNWlrmLADDDhiHgjthjQyaMW6lOumdVgMIwgwTxTe1kdIX8LuydGU9Ojb6XDJJfMFC
	 +JLbvr4qDMOKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10189C77B7D
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 15:48:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168399288599.7184.8433090129941748956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5d2b1af21d28e5437f54bc9deb2c234d747e2b8d8888aa02936ab748164c346
Date: Sat, 13 May 2023 15:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683992885
