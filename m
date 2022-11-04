Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A217C
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 04:10:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 892C6C433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667535055;
	bh=j8+JRsvx66vSImiG8eqCP3A7yTsD53RzerEogxpCEa0=;
	h=To:Subject:From:Date:From;
	b=GqnZxCJOjjuIBC1QMhmtRqHV8uZkWgxA6W4BQMxt7M9O9yGbM4FEFiirwbNd0l9zw
	 dTsKigfmvJj09+NnabvEWrlpSbi96zKR4vzl2/ZFuaRH8oQOiZhSlWBUtPF2Lc1i/5
	 XLl+lGNgy4OhsLmIzQrBUwGyOF5Tl5bhdszU2TIFqVs78wzZ8Qt9MBg82CuU8mBplm
	 C/dV9MGukkrwIkNrhkgdIKenInjGArOikerFOtIfHUXa94PxGSZ/0a1ViisTESlZ7Z
	 jiuxDWA12FBE8n0OYQpnKxSpmD8+2NgEwwfiBlaaQE3808r3GcjCRDPLoqRq7Nt+7i
	 L+6liNtJP+rCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B4EFC4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166753505441.15934.16937739613042138854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a6bd88885700845d65731f58274dd26e91bbfe4563f1071910c23ae966c5fd
Date: Fri, 04 Nov 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667535054
