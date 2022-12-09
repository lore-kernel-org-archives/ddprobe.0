Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E931063C5
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89692C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670604687;
	bh=rRRbjAG1R185fHxxvvVrhUS6dnyuen0rZMFnvwlmnQo=;
	h=To:Subject:From:Date:From;
	b=U+YUhfswYhnHXs3FSeUTPgt6aflwGWjMbmzAoeJzOOd1b4HU4eab0u5LkYQMZbLMf
	 ehxfPgy+W1TyZwld2nWLwjvTPocmvKNWcvHymwf8oynz1IBhJAzPnDm4SqV5HqBTRW
	 aRaKtNU6WS37i7BqzpT6o32tcQJaSzFSsQQId9Z6qZV7/dPDM0PMvhkTjxySdtzt2Y
	 EskMfKqr4AEs8HZqn0FrhWnJ9dJ12m65eFMc6ZIbSJXIJYHpf/sClKvBETh1aL0cxR
	 34szh8guSPCm5UCx6uCBWe7L5PaGkdOvKS4I3x3a4CU5wybPrK4oT9x0/wmD6G/EUP
	 iZl//TvYKcAeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 683CFC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167060468741.3778.13335895950204001494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0c1d76ba8634d506769bd877ed598736bbab9b275da52f095ca702a7ec5114
Date: Fri, 09 Dec 2022 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670604687
