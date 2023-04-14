Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA776ADC
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 21:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE912C433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 21:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681508585;
	bh=QsugsYJlsQJL6TohtWRLdcjOYtkryK/AthdInXCbPjo=;
	h=To:Subject:From:Date:From;
	b=ldNOr2YiqVAF/AZe8tHSskFsABgYbu7twyLRRChYwRwg3zDOXgQQEVP1V8lZiX/B0
	 bfvxNJ80DJHr/OSsOTc2MbLPdCP7Sbr4NNBljpdVur5SzONikMf2swIMNYjgTGSVWR
	 19u5w3RDZ0Zvyr9e/sjDl+RzH7lTs+adsky0B5CPhhAghSTXjCv/DUOQ0Q7nGuvC+0
	 G1iZ/ZYDA7xrTx2erMtyqXeD20CHsy76Itt1VVnJSSHja+kzeKmkhxS7EHA1nvlC3t
	 qC9PxPylSqfvFkbDykAhdKe25L1JnemMh7wTtA6giFa1UA1nqGrdtuKL48dOZuswYL
	 3lXBQsHhYaD1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD7DC77B71
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 21:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168150858577.18342.1624038767398235750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21f5af34c0bdd1b04308f20d342021a4680283bd729b1599c14e2b277009a2b
Date: Fri, 14 Apr 2023 21:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681508585
