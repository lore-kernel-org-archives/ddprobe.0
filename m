Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEAEC5A90
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B976C433D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663717853;
	bh=dYvqjABIou93s1AUPeQUuU+VRBHKsunxBoV7NmbxKpY=;
	h=To:Subject:From:Date:From;
	b=ROaTyGmnauCszOyPJJEZooKxgllakgnT1FGo3sxvBuuyyUWzUbGMtVvEFSIMEkfuY
	 4mwK7uQO8LD/H8MD1+EMKv6Wfu6Uwrf0uv8fgNJhpuKU4G9osyBg4fusmzQye7hshr
	 pOt7L7NnOR4CyXhAn6NS7EwLxcxIyzbPIGbnwMYfNkoBDHZXqt0qaq/q9um0wbvtaL
	 dhfaZzJ1/WMfVXFyu8I23ifSbd+V1OXJw8yaSLB4nqYLSJObSjuad4Cz6Gozhm+w2K
	 oPCFPXTJ7opyVIf6pGAI7ZEMXUdOZ5eluUAlu9biKJA2FuPVVEdBmI8vrxRu2sUNVT
	 qsdc0q21uWyYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51557C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166371785332.23143.1294455976409202620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e39c2d60116603b8be6e4a50433668f7b8f4f45ddfed81e4ec191cdd2713a2
Date: Tue, 20 Sep 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663717853
