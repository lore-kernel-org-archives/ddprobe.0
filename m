Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60080A93A
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 16:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F050BC433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 16:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679588346;
	bh=Q8rLPpnjItEjFL8PVmCLFeEsDF1OGbD2cZV5Hsl4SGc=;
	h=To:Subject:From:Date:From;
	b=p4KCMag1XbDDG02k2PzqZpKSPfBoMZD9TAFjU/iZqFx4Y3mFEVQr3DXXphCqXgnzd
	 SZ+qKTEFMAHff1k+Qt83g7VxRmmxcKEdonp22k90Pw6E2lkW6J57dMsNYTNL97BZbx
	 LfF9zCCDPrDvYS808Edd3gTyrRdDfDZRny6ugAmn4jEuw1XOzV8Xjrezymr68auvyx
	 d8sucH5NWdK+kliERJaBcsDol+8Ka/7tkYGUe8aIl6FwFlKTDbR/KebilXgEBhPFD0
	 oEx1ByWlzqiluSHMkOoXslYNe2HrGQ1frhC3WuIz9h/hX3SD+gWaPLwPnUGZgMuHHd
	 Jn1ZzNPwSZfKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C592FC74A5B
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 16:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167958834578.28135.2568112904122865873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96654ea1a7a03cdf4eaac323cc82df51a8a621f3203783d5c9e54a1090a8abba
Date: Thu, 23 Mar 2023 16:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679588345
