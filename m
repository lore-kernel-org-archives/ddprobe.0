Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C9C46B1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 18:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73006C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 18:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668364854;
	bh=ILjTx9W+sckC2Qo0c7IiX316oCsAd+NTI0TFr9grjK8=;
	h=To:Subject:From:Date:From;
	b=GxN0H35e66/nzCz8SbVqWIw+dB4wqpk9oGbtvLMdc63WSVlhJQ51l0tVORvCwAiDJ
	 Jc2JJl6Ak8yaI5E/ouBsCFT0VVWny6llOOm+vThzIUAe72BAmVIXLIQ+/fMAKSKjK8
	 mh/3ztLonb9nOvKw2Mc2gfU9Q0bWQYUaIKyukdoFjrqhgu9s65n2NvNJ+qDKYLyPlo
	 5M2sazeut7+Pgss6oBcfksdomHk4KMoWWRKR79soJ3GR7WAQTYWjQvbQQYOxRxx5N/
	 wZL39UIMWss5PUFBW71QhkRy81oiR52bSC1wYBhaPwsnXyJmRVd6w38gqt8L1yisf4
	 +EVK8+4SxLGOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56772C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 18:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166836485434.15322.18119604731464680784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5478eb15fa16098471c56e9e9cd72781fae05ea4c1a9809f6dfe5670b247c0
Date: Sun, 13 Nov 2022 18:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668364854
