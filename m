Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672796106
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 22:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D587EC433C7
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 22:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689287948;
	bh=n5L3601rEu+/C767Ye/7+SLUL5DyjyJQ7LENpTkB5T0=;
	h=To:Subject:From:Date:From;
	b=BVb52TQ9N7vtk9IcMoofmmMccXPk0ZbcdqbHAiDZtfUERjuuYgyZOV5Tyi2kqxJnh
	 AKE11ILeRIv3Y/9+4rxO+GIdmzYh7g4TfPrC8lNSB0rtoPEF5iv9lqksu9o89HtXhs
	 E1qHxUjYaes+ImPLt3ksl9pS73Mw8HCIh/5hFopZaCYlBjONWuAe/tUMuDGMRfUMB4
	 zKd96NYasEKurh7MzT6LLw5PlEqufBbN8ANyO8GAlFlDvjv8t4Q6zsVsMnlRRG9kC7
	 cwzc0FhtfpS4XVjoRMGKsY++KNSh9v04R4Nc+4oNOwU0yjjCxkfGWjQCqg5rTW8rmB
	 2adsNZhqcy+qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41E8C0015E
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 22:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168928794872.28119.14881191608309192725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f6b09d0356a252b3aeeacde01740023ad7a8603c37ee1d0e015079331ffa736
Date: Thu, 13 Jul 2023 22:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689287948
