Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40921365
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 00:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E79CCC433D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 00:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682209865;
	bh=TivTH4gJz1inAmkkXaVEaH/spYmR/Fofkj3OCjH1omI=;
	h=To:Subject:From:Date:From;
	b=Qmy8OoxtGZTRAgOReSaWQhO4+1zZCwPh54lG9XjmGJ+amG3jYXdpe4nhoiul5aeFz
	 SDlZce+Ymy8DzoiLgkJcsBSKiv5VoUFF6awWVvLOQTxFJqoTgb/On6FwTz8rZBnjK1
	 kLxfivFVU02EY8WDWF7k6620bY/PMq/iEaqg4dctYU2LMUdjMXEOKUnV1DBGlJ+3RI
	 0EVDovwDpc8L/ArRRYIZFh1EyP/UAiPJOPtYxQv08iqRZINn08E89b0s29YM/ZjJGS
	 Fo2vzds7QiUUZ2Kl5Fu0MR+dJL/v82ChOCk03oIu4Inc5sx85SBEdtJk+0dyV6TTQh
	 i7P/+isREW2Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C322FC7618E
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 00:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168220986575.4017.1958246900328574348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f92a2766f3ab2c6fce0104a1d8f7af2fc21e6832bec6debc6cdb891a1c8b8f
Date: Sun, 23 Apr 2023 00:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682209865
