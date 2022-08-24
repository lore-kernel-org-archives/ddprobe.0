Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD2E57B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 21:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68A2CC433C1
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 21:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661377252;
	bh=gTlZLGfaHZRXo8F33KE0JYi6c83m/cFrg9qXE0vGnqM=;
	h=To:Subject:From:Date:From;
	b=KS9NL+CAuISaD049CBrg/NthQNzK/Px6JZIu+Z6s+jhRXEtTCL+u4gJOQ2WDi5lgz
	 Nz+2QDn/Aeo5cTd6wQ48FRQyhE+ndbyx5dAufmX/6nWUXPadzMEH6RgEm0W5xOmlNz
	 v/2wl9fTeWQALfgkHFpXBCxZiHpSwKo9tzzXLXER9EDaIdHX5GLM86s37/4rfcecqO
	 cbT1t1bmLSZ2ulQ053GJ4DdDdGI8+Sm0atPAjjy0GxGXN4y9Q4muBJChyFhV7WPTQX
	 XyViGNbJZVhF3vEowckcKm0xc5VbUNjyWBD1byx295p4eehjH6ee20SA1i2/HTOqxN
	 OQjuTejlumu+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50CC1C3F6B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 21:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166137725232.18145.14442551547373320865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1cada18b1737ffe7cb291eab8c58e71f278796d99eb869d41ea115a235081bd
Date: Wed, 24 Aug 2022 21:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661377252
