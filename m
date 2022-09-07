Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B903E7E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F937C433B5
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662531053;
	bh=piayb68hsN9b91wazZKjL73sRUEFofM+QvIBFqsGP6g=;
	h=To:Subject:From:Date:From;
	b=VcGS1FUaGZSTazylpOe3Jq2adJPsdgW4pbBJrCd10Q8/oImBuwcc8x8KY0lp7bJp+
	 q6H/dDi+x3hx1cNjaI5CEJpKw3thS8AUapLLHXWZRUL1+SepWAIJcLUvG5P+tc+aNJ
	 YY5g4joyGnbkds2CYeYdMdxis+1iePCEzJxpHQJCzQ/TIC3RVh2kRGGvuBnxxAEJtN
	 WvhloW3bXd2b8/ZQZToKjOT1p5tnIhAqThnTuRCrJHsCymykWAPoSRgf35csZ8oSZ2
	 OXgPvkwM65WYYuBbltRnhpfJI7YbWw2sqVHUdkHDURQ6Hn+QzSmXjzuJLfdlCsuGyJ
	 PI8/Hr9yMzBdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C90ECAAD3
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166253105333.19747.11379177812569197775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bfb7595d2608800ffad615802652f916dea241c6389e875e8ddcac7dc626972
Date: Wed, 07 Sep 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662531053
