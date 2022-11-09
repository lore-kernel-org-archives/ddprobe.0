Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6035290F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F2EBC433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668030654;
	bh=SVpOeNGsoflaUvZ57Qk7ui2UVgDdZgX6stsW0nc1Crw=;
	h=To:Subject:From:Date:From;
	b=X9aKmv6NY+ZsJiwoERdS4ZTtknyzZsvn9Pyaq436WmW2zfyMlATy3rT8Z74YKNa5Q
	 aepuUSZW4jjEM+jxV8vUyggS03yCF0JgcoaMiOFBBQEXJROwxEJMEqI48fw7VQ/+Iv
	 Agg1Oq6XTvxPRQ5OG7xnQo6FfkyBHJjCrTuwzXOj+2HLKUqtw0pUCcyhrt81g7Gzwi
	 9CioiEnmaDt7t8938TfLiAlsye5vryFQlYngaTVT+gpVXULUZaf7xUk+t7xKdgn7wx
	 xrqJOw3lt9vS1t950fa20QVzFkSa6S3CMf1OPd/jh7T4fiXpXb76BVFV9/znnan8qT
	 u4+LdzfDL2vJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A91C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166803065435.15630.1970556731105086871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8057e834edd9bc013e1a6dfa6e077baa3769246a48b6adc1fd757bb95eef89ca
Date: Wed, 09 Nov 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668030654
