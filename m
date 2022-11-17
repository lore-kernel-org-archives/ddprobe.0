Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0F1F8C03
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 733E2C433C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668715854;
	bh=3HGT6wVoBAydgQCcK/xDR/Oiou47wSMfnDv/gIZoPWI=;
	h=To:Subject:From:Date:From;
	b=W8zpPWGGWbLm+eNciQkrNP8L6qXXFS8HH9+RNto/LUU7sK6wgt4TIcDLyOTWXF7oV
	 HsqXGRwXvC60TuCq4NcSdOCEoSghBiZjxCSap7uQ8XazHc/81CgVcsoFLwgdBtT5HS
	 lyVbMH8/SctSNCEuzMZEyAYf/BYbURuDP5LwpKleByqt2pajljW0GzqvyIAjdwY/i3
	 v04FwcuktDupVXfq68C1CGJlf5k24GRjzv+yRpZwQj1Ibr6n/K4r+9hnG2Ajs7nunG
	 q/oeX3t+EzGwqIPtsolBbWqPHU0aHmpIJsUXJJo8eviow+m0PvVFa9U7/7ZXsCkr+h
	 TsQKdL75/NUyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5616BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166871585434.19208.9277683357984759884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17c67785b94d9eb095fadbb18289c1c46482cd84816e1aaaeeb2052832e64845
Date: Thu, 17 Nov 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668715854
