Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A01663B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95E06C433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672031487;
	bh=twOhNzwHETde7VbvHSlqbz6UKicsXpv+7HsDV3398go=;
	h=To:Subject:From:Date:From;
	b=uFjUicFoMSwJOjkdWkfPlxy+W6Lczq39OMmddVuDUEDrrat4cfLGtymBrGWAsf7i9
	 oD4xs69YbkGuTM/49dHKSVvicJhbEBmrxDNozJOiz1Nd+eaSdpHqbpu6AiusUiMcAD
	 3za4AqwpWQNcqmOT/YEeIvwoNYh13ZiIFACXrGfcUg0dE/Hc7RcJFNymhA1MMn9mqs
	 ECSWdmrPj4q44IVHS05WJeEpGLtYzLMdgGyrN6b1LK7mTomKosnuHgg8dDWrObK1os
	 Sh/7XbAiObUCXxOajNu9tE2I4K1xjfqLhTFOFQX7v8i8XX+Gv6958zd6IqiaahcTJR
	 47judpocoVWfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 780E0C4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167203148746.29920.2138317189370441902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6128b92bca26fed8e081bdae96f8f52609c9e0acf18a7be8c867f1905b435f60
Date: Mon, 26 Dec 2022 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672031487
