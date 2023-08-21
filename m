Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CCD6FAA
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 14:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6BFC433C7
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 14:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692629048;
	bh=N2MKuXp7oBVzqxN4neDqi98ZZ3xvPTDICoJ8bHT75dE=;
	h=To:Subject:From:Date:From;
	b=qme7oNfQm0pyViaM1iXb3IEXKG5ph5OiIWGcv6tnlhMF0CQOosRBt6wL5exLPFvbk
	 7Fvq8X/ByNqYorQZ4pn8ei15o4kxL9h7DJrYX2OuyW1h5m/XTqM0wCrHyCoeL8Jl3L
	 HR25A8vhdUUzUQ0zV083kI6R6gDjzzUmGpZPP1E0V6KvIVsj40WtHcjgFT1Te49F6m
	 zhPzzimkX5CupG6EfuFX6eVYdnpq2nOqEwPPmfNPsA/r4ZzqbJsr99ukho76uFLWqM
	 btndTg8lGfkhRObDBq9MhOpf8MmC/GqV5A72jTmkeQUVe9MYjYG1pPOFzRI9X9Oadv
	 j7UPTxxUN4VCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF7FEE4996
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 14:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169262904870.11115.12898883290833877381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f03d1677067e1ae75c91a41c77f8ea8525fcdb2e48bbcd6acc829576b18f43
Date: Mon, 21 Aug 2023 14:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692629048
