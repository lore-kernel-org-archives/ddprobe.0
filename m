Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41819138D
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 07:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF111C433C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 07:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692258188;
	bh=vQT2AtHv9zhlGp+M7eyRly6UgJJerlgTHslkFlFyv9U=;
	h=To:Subject:From:Date:From;
	b=o2HU+8GNKaNNDdqmmBGoEy5YISR0kBWymVMtdIUPMguKNoAsPFYO47C+Rcgi0Zgez
	 xDjRjd42tAHnIW1lEan5bYTUeOycpQKzbDQoHXmXbAxK/+yjH2VzWYmd3E7MKoci8r
	 sCUm0jCBQtAcYs0Zp+xLdJC4XToUHm1U1OR3VwK2Ob69YRorpVzP8rOUTbdSq+Aen6
	 PLDOI98hN+f0BTI6MsdTKzCeBdbb5T+L3tzY9EaRh5ON0cNcgNIpxaAlUUbOXz3sRG
	 aWrWqYPXpSQ6aU5cfgYPaks/5O8RYWbwT56a1V2CU+PCZudQlbS5YcVzeKGpLXOzh3
	 oZkh2Po2ii3Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A49FCC27C7A
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 07:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169225818866.18661.7286257853277250926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10091e31fab5fd15b6679d9fe50f96583baf9c8e32be68eea97300d63f70ac3c
Date: Thu, 17 Aug 2023 07:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692258188
