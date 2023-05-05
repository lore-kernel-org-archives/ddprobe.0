Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40708C8DF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 22:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76D6C433EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 22:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683326285;
	bh=s27wQ6sfyhJ7qSvmGgGCX2qhJ5x6tZom3mRXA7xAFKs=;
	h=To:Subject:From:Date:From;
	b=WzdmzGLhoQSLbLqhf6OGGpPSafCi9ZLFlWvmbVawRsnC06iJZ1lziaObI3qfFrc3P
	 quYuaw8J3pEO1ton9taysbeuPu1JKm0e3IJd5SS8/7QKEjYKZBALt0XAuhSL4wiVJ1
	 e/XiFgmrEczx8CUC8osbgAoT+WEMU/BMckAP4LB1V3YvEEhQ//oOlbrgy/QM/x9DEY
	 UG0pLXaluH7TDoYzOR2CaskcycLJ85i11pX2uR+k2PjRdEoqi3fgf9MRHD93q623h9
	 nDtR+xLnSEvLMs7gDsxNZlzNOQtiIZGfhwqxPyCQVFbBC36E0nz+cMBzsf3m7H2ox+
	 Pz7UiNhn4HJ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA1BC77B7D
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 22:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168332628575.30977.17555929952355151152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310131ec1894c8c046240d99d9fc45788a395974766d8925541220c3211bd9bd
Date: Fri, 05 May 2023 22:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683326285
