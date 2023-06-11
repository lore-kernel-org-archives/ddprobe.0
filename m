Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA1B2C9D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 20:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 127C9C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 20:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686515586;
	bh=xUVvRKJ81Ee3uX/Vuqcc3WbhhSm5LrJYIDs85jaFtFY=;
	h=To:Subject:From:Date:From;
	b=bi8dr4UDDC/9ejG8KcBae9yvLquaEsx1CA+ttwhss2I4PqrUse2V3Sg/pOY7Sx11d
	 PLmyEqB0M+6tBxE2O4U0aF/re/SUJ1D7qmMOnmX5JSO9V0ImiBUKvuPKjDY4GhoAfu
	 NZAQw+jLpcvEA+ARJKRbycEIIAN1NiLybmWwOlyvYgITkRUemcgd1drhB7x+ew6hI6
	 lrav08pCShVJtQlCNBTvLOUhHdC0qDAsHHoOsTjOvI7ayZ50zB2aYEs3H0UM5DzPq4
	 gqPH9uA5DM080DC/nN8YLl8rLMkpUT3oG+TyH+dMp+Sh2WMxygtEtt+1q2Y3l6EkVO
	 lZs/07f9GkxFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1829C77B7A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 20:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168651558582.31078.11369155491223548762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afecf1968cd5618cde4966d89ac57bb2f94b7e638965631cab7ce0c790f67b89
Date: Sun, 11 Jun 2023 20:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686515585
