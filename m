Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0FF67E
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE18C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671629487;
	bh=dLXYCjOCaevdAR/oh3cPUgSpwF5sZFuSXH+sjY29PGs=;
	h=To:Subject:From:Date:From;
	b=cVUDFEcNbmemcktd2KJOY4zPvLhhyeha/+Bb0jjFMeE2UZ7k9fI5ujZXnrXCkZk4Q
	 PuTZbrgqLnmY79qsWAfx+KXBTHy3nO/8X0lnQ8Fpwv+WT7ZDpCUlJssQghI7bs67az
	 /A/U6RrEeAMr68rxn0oKdIcO2/m2NCA2dfZMKpXQaSZ5oJ6hLsvHiNJyaTiMxa6r5K
	 buGphl4EJO7NLBH2SH4mvLtC0dMyJ4ObEM/Ez7k97yQAbR92Mg7rOyzrXQs+sTuRKz
	 hSc+W+EHaInmiWvnTp8xPx9u3Mw42qbq2ameW5kZy8mLFyGUoZn2Fs1bvca2E2/p4m
	 2XqSQaYlc2QfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F134C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167162948738.28686.13954354233622374918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0366aa972d3bc7f0ffa5bb0a3758cc1d584175595ab6c06a6d9c382434d55b46
Date: Wed, 21 Dec 2022 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671629487
