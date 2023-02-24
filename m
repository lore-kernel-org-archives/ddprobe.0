Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A8F539D
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 13:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE868C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 13:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677245705;
	bh=YRdFiHM+geTUfWHsH47BrPoSa+YN4+uEPivgQcWJu8Y=;
	h=To:Subject:From:Date:From;
	b=mnCJvoez9OUpKZjMHnEgGlzYC3RlsOQjwWSdCo+5in8ujgRiPwnzuHzb9bYENu0+L
	 8gaYkAiCfxB1YWBUucTlA3NWj3PQjgDj3m2SHKOKyiGZMQvY1S+Q8TyITNVwX5W9Yd
	 Ora1f0xtIi1nxbaURFJgcBBga/RjERDNItIVStE4CJG1bP9t2MI7nmMaxdwXqbFSi8
	 4lioaXmMey/TmDNhfJzE0juP/ey6GVNKHJIyEBe1LuU7bb8CbLAdFHHJ9Jrsdwknn7
	 oJY4jz/JZROxXSPigWM4s2uF5fCdl9a9D4YGm7fs6ipkrMVEQlCqTXyBSb7S0TZUSN
	 2/2A/E9Wic9GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C076AC61DA4
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 13:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167724570576.23854.6866213112716311012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e452c06f47c42cf65de1b7c0fea92f755e262838487a8048cc584635c008f283
Date: Fri, 24 Feb 2023 13:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677245705
