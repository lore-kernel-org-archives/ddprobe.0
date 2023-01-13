Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D965FBA3A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82E5FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673643087;
	bh=QpZYokPxVXQ0GZGru6emVQa65CmNZLd1JtyQsb4gTw8=;
	h=To:Subject:From:Date:From;
	b=adSurEdsgibmXNQ2L7VdT8a53cTZRAeaWRHK/cFvHJPe/vu9lP7Pe0vS/y5ed8sW2
	 8sNKwIU9KoLRcDXogNs1Rmh9ZUf0JVZpba1DMxqbsn8KiOhTMSg93pzjrhpDNSIV0f
	 vKLRq+K5jKRDNCJWVv/iDq1r0/7gQ3NTBJja1DIkb3hE+kTMnAMKgwV3mnJnq8hOHx
	 jf5MRuh7pRA/TH8TE4m3bXINgSYsIj90uoGrUUlqH3tbmL08QG0od7py8l1HLaR6tf
	 ikbfQACoJmjvF6LZUzkcptCaPERCKJz7QEI4UtT6i0GCKwf+rMk2V+jVumYHinlrJw
	 WPCJibNZwX8vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66CFBC3DA78
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167364308741.32410.14882169635501269766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d630145753ce2f004ca07942904c8b0c868be0e218b03869bb3adfe7b5cde61c
Date: Fri, 13 Jan 2023 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673643087
