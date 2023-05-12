Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EDD64A
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 00:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0154AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 00:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683851046;
	bh=9B8ZH+kEnup8Rw+9RBemI8RLNVXSnk3ZcRu+C7cD8/o=;
	h=To:Subject:From:Date:From;
	b=Nb0w7mKQTq/DS0BcVWMCmuaWuVfx1t/NdaUdssaxoZ1w6ilUBibp6ZtOytN0Xt8GT
	 q4or12btZ8Tzzu/zbNOlcNssVhlRZSRIw6ltME4xqdNibHZuWSAM5tGG/+tJBJfMG4
	 b9Z0KPxrkkLsOZKm06oUBid1wUTUphAJ46OhMCVIDcM4UYprpzjlK0raD4sWnh5ZwU
	 jdw0IZspAJXvmffoMEqb6IOugfD2hUYkOpeUJ4yUHtJDcdyCAWrZ0VE00fvd0eaW57
	 H8MtuJhJgTvAwbI0oyX8aTfu5KR7YYOInkFfWNhZBzt0SFXBUaIfoqLa+fjHgJyj6Y
	 OoNXl0a7iyCaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D79D7C77B7C
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 00:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168385104586.28558.8953423719371878980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e98f0b446eea3e0d168b27b85256d0738f22b5da47dc84b416625c032c3706af
Date: Fri, 12 May 2023 00:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683851045
