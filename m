Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF69C3D99
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 17:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83EF9C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661878853;
	bh=C7ETIIjOqfNFoMqlZw+40BcbPji+lQZkQo7P/KY6tsk=;
	h=To:Subject:From:Date:From;
	b=t4E0kGOhiF6hFbaRXrQm2CXakCHIg+0A/gZmsPNQfDdWqtwQYl1MzZxvJmGflopVm
	 gr+oeooX6xkVcT1p71vXfg99bZxGKXbhBZQ8cYyFHmuGhyGm17EQOEut/z9hihsBCQ
	 YILTb6VCDPbQIzSj/D8+ko7NPFxXvXYtl/w/SToN5/WFxQ0yq6QsSOQzjIIhaOYowr
	 lc9LZoScoBJ+0PUGnlHmnw+WmmgZ3IexOslhiQDtbsKdFQDLRa/wPbazezIcRd6vof
	 z0d71omglnXXYRbwvCXO3GEGtp5TOuYBZVlFvwcro03Iex1WHOWn1XNZdr+zSPgLI9
	 vrrxdmmsm2nvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F88ECAAD1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 17:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166187885339.32278.8530017482628970455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ad0a98b8bbcfeb7656e68dfa3d08f543faa3436b51b4e895f2ea03f5b4da0d
Date: Tue, 30 Aug 2022 17:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661878853
