Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092C625570
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 13:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEIe6pBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF6AC433C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 13:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700747896;
	bh=SlcUiD0sgYBcjzh0Keus6bVdGEcRkBM9e5roQCbkfnY=;
	h=To:Subject:From:Date:From;
	b=LEIe6pBWqoHa5Tv1IRPrmdSOTx0ye4ovEOyZBPdOpzuVsbjNx7d0fsdpxSgoaMj04
	 xtOJXlDoAdNMLM5gmJ3nxgCIt3sU8gninKpgwyQf4SM16fciVAOXIhXwWOIiddnwB+
	 e7g8nreOTL7MDNYYTWjaUkpWmoP4gGX5gXnHxMaaPaqiQMfd2enV5BOaBzDDm689/H
	 /iVP7aAm0A8mZtBSZ/uU3ZHXWVl+fVa09+Ei7ESreClwJonb3eazA4MXrl4zDHZrV6
	 oMM82KS/CU68HevSp8054tqGqg7AYry1PmwTWp3xACYyTQuK6Kwe6I/PWnNs/iUImd
	 0Vz6KGX3HtxfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64107C5AD4C
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 13:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170074789638.8731.10465754765558673440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9717486634f4d32a99649cda0999a47b2e73c24d9b1032d54bdc616e0a5c8dc3
Date: Thu, 23 Nov 2023 13:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700747896
