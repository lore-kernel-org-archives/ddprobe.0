Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B723919B
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 10:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7173BC433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667989854;
	bh=Xx6VHn6UWjdKsG6WLsju6YDOPSY1+T+MyFAO0u/onGg=;
	h=To:Subject:From:Date:From;
	b=p+PAwDfPDnOMCEaL5JaNL9b53Ptew2ohAwPDA3HFZ7WJnCDXAI04wxG4bhM3WAJSY
	 m7/jTpaRIs9RljfaL6+ZwPn/T8JLKqr8u3M87R1hvg4loJ/zosNV0GrPEs4iCHnKes
	 tLyDC5qdeETeqg4eyQwi1Se5PYJmYPHTIlxtY9XPqf5zfc+5iAEgJ8wDwwXvsAlUeQ
	 /EBPcYF49vjXf3Ft1wgc08J7ng/3rcUeMmKoqWns+qiemO39ic+obHvS4XpWvAXUMY
	 WsPmRe3nFS6cBWQ92omm4fbLnvIsdzuokRwSC46HKWLJa9lMyFjHyo+MKtiKanrSA6
	 h/K/qzvz5aBaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E40C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 10:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166798985434.10000.9566213371726548268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fbb5d9e1b7ecb3707a6d458e0edf7a0ab78d6d1c84f91236cfdea8e0e9d79e2
Date: Wed, 09 Nov 2022 10:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667989854
