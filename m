Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2B7D1FA2
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71249C433D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663747853;
	bh=jaW80QjN/W0UH/eW8+duigsvko38h6VVLoQud57jjuQ=;
	h=To:Subject:From:Date:From;
	b=svT0/lK8ZG+HzW040ZUawjFor8jz1RXq2Q6gBcziSGL8I6pkV5rtNxiECTajZG8kL
	 17C62PkIWA9ia633fQ2RK1tbPub2Wg/yCP7jzbzcHUlszOW6OA4Q6xe8IEm8wpWlhu
	 jZUkzEo2oJQvEO/8lwdluwESSMlsNcY+z+pWebldeiRmIUpBhnrzat5qQbi/fnRpMg
	 Y1bRDDqyuaTSkrOXpuSRry5KutxXHhLYXvg3JmI7Is5yWcWfpJ7GgJI3RRNkA/qA1j
	 ifIjzu7o+w4uJHkNIyzB+J7Al84uuTWy74X676LXr6PceUaQwUMBFUWKisW7rDY/bp
	 gBhQmrZll8pZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53B1FECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166374785333.15941.13759112352202387800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df3b491176765269ef37351b58b02813c26e32c75cc939602093b1e579685f98
Date: Wed, 21 Sep 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663747853
