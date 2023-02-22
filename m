Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429F91107
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 00:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1875C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 00:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677027065;
	bh=8oWv/zPUynnYqIACwHcvxVPM3VkrzSacYlZ5s5WBs2E=;
	h=To:Subject:From:Date:From;
	b=uTYWPSyK2tN3TzJEh1wdxxhXZ3rqoQUNI+l4/dbRgFL1Q/bWVpEsD6W5IZB1vDHmr
	 s0xGqsjIDM0HqKw1r7jFScoO5Py7srKZHZRKe3v/PgNbmMb8Mmt2y4Y/uNEtozmhHA
	 lJSilaiD+/aaLkH4SGddQpWgOVhyggbIId8r+V8gWD1yWw4xarCO+pL+3DZNRfYno+
	 hi2enxAgbwbBtg9zbqPjv28YIXhdaT7S6P08jObTIPEYKCBQkX5sptlRXPy4cixxlm
	 1o742odwFSSjwIpwPKjNeJfmbsOdnGj1FvESHSIgv6nnrmM216o6b+rZDilM0/lgku
	 POn/KjuuX1w3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F8BC61DA3
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 00:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167702706579.17903.10860817949317925648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 162b7fd4db6c1262755344c0887fa6cf8f23923bef3b5286c1c7d5aedf2528f9
Date: Wed, 22 Feb 2023 00:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677027065
