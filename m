Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49798EAF1
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 18:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D9AC433C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 18:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692297188;
	bh=PhhSYcn9FJaEnmbUIGYJHvjdd0FgviXocBHUYzV5hxk=;
	h=To:Subject:From:Date:From;
	b=bGwweIWd1t5MlnQ+c1NcIR0KoNt0Hp2Bm6dLU9cIuK67Mvst6TY/VS2BvaJSI0geO
	 tEfXZTB/tEjNLivu7/vKXeTstfj4PWlMarkBvIA2IGSMYNVetwAVdL8AZydSkROYLx
	 gA2o7+jjsKZzNB2XPFXrTHQhaP4YDTmeMoOWqjLKb7HpqZtTK5DFBPljEmqeri6ro4
	 kbbRrJmpkDZ3+Qb/LWX9hydXjHBKD1S54xCzY05l7t4jaUoBA3Ydz4F61jT1oO/6rX
	 rDHRNAfDVyOJEviBOWIZRFUZa1fnnshxeDb0IKAfketNC3t5s3vb/70Zsrm9wLHc1n
	 koQC7rq/FMZ7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E61C3DA58
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 18:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169229718873.25698.7507166115001972058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33fcf6889e95586e2c516684d39c821cbd5e1446819eeb4842e7f3c6b0ff6bd5
Date: Thu, 17 Aug 2023 18:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692297188
