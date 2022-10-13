Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5863C36
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B03AC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665679253;
	bh=qwrHCNU9MElMXkUNOACGI60gaA69om/kRj01G5pMnq8=;
	h=To:Subject:From:Date:From;
	b=DKPJ1O2fiKs09RhcG3nbu0v0Nocza4a0va5L/bnXUPoOPbTbs2wBeHDQFtHWia28b
	 OIjhffD/qB39gQOM+8gunMUqoN7LqhvyUlY3BgqW1z/nu8HAVFytsJZDS1yDshQcyR
	 Sqj+p/KuHNl6g5UeodVsgeMgkou4H+C1FMLTNib6FLGx2aj8fDrrnMAbQ9+bJ2KATN
	 vNZaOA+1l/DZblED0+J9i8zkyBcAyvrnC/EZb8nmexJJsWqwoP45dhwgUJZh1x0+hV
	 JL5VER2nvk2ZEMqhyDRhqTliLriTGgNH1+SU2MBfk0s7b0jE7A7Lrhq4ibHlw+z0Gn
	 nhFUN49sV03Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CCFC4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166567925333.6941.8536761436175589901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a80bee1fc20acfe06dea5e4f6256cd7e80a78779d007a75c75736b5004cb041
Date: Thu, 13 Oct 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665679253
