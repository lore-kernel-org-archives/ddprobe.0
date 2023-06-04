Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83A14101FE
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 20:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6680C433D2
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 20:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685909945;
	bh=gEwbnCR7KUxGRqDiJbGTAGvP7Qih/Xpfhn4FLOWGVtc=;
	h=To:Subject:From:Date:From;
	b=BT/awEaUp7f1znEiU8k7Sa2DcKwABqvGRu8i/J7yFpaQX1s9sY0KTKzSLplcl/FGf
	 ZC/FeXTLWoNlvp8n+w5vXRi/mcCPP8CenHvcaIXLKBCZ6YuyE4uB5cfWI2TmByFvY4
	 tCt7xWipiPFLMSTqBexW1+xwZ9E81+vN1anecnUdukKin5YhbyrHQMuK+5A9LPndmk
	 Ge2oX++CZdaUj32r2Nzqoz2UZUjZ5hRVv7Ls68VvYouVjBQYxO+ssQq07sjFJ5N/9i
	 /mxL2L4nH5zyefpPOsrfzC0worCkgpQggBuoXtVANmjpy8rfxIJlVBRHW4W8qPUwKt
	 pMRhakv65sBVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2918C7EE29
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 20:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168590994575.16245.6570587828049494601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49c1a7a68bb79c9ff7a4e7455eaffaf18005ab9c8ac9b54ac93436b5131e6dc9
Date: Sun, 04 Jun 2023 20:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685909945
