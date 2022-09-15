Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B4818F
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67675C433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663261253;
	bh=9yYzQ21sf5r+NgdHYEjOBnfeqB9QnRsk67+baBD5jG4=;
	h=To:Subject:From:Date:From;
	b=OG6g12KdsFTBABdk9bxoRUEKzrCGx7e962AEs5NE1folB72pM9zVlgb04eHDgSmne
	 bq4Yff8n9Fc1hX6I1YQQJOoRUPOOuHt4ke9hFQbngnFli6566HtoA9JuumMnBrvGZZ
	 uIk9iI0m3vP2AYZmbE9zrXsqM6BVakojOhrGpV4MC0dFf36qeVYDTYgoOlQ0J9WEdp
	 CDhEu+N2VbWB05yzE/1mB7eqFSRSr574AWKh4vx2WwtfKhuWc56Ix4IS6EYN5Ko+Dg
	 kJwNyKaozN2uQ+Qr/TOMGrzzTDN8XReoQxel7CEmO3OaFbqo01KXKwiPe6PrvsuFCO
	 okdQpE8Z7NTvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B43C6FA86
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166326125332.15181.10476419852811090484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 903f43792a1df9f225f195ee3c0ec0c396546ded81f78d772effeb56018bf3bc
Date: Thu, 15 Sep 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663261253
