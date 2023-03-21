Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A73110780
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 21:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11CC2C433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 21:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679433486;
	bh=rCHEu2AhNxZzNGL+2PXAVkkauUyLp6u42ZwCgjvEguk=;
	h=To:Subject:From:Date:From;
	b=M4e4HGdDR0etlGOAeKPbqHCIZAGtqOZWWQ8v+t/hfh0bszB6dNOeH2N6KjllUs9Fo
	 cZd51/4rSMPi+KGZurnwHxXy6W1fa3yqv1nvvMyXB8ueAoA/TYgjVjQuRVxrSgAEKj
	 Eg7YZPLa0vooYtVppP6PgfcyUN5dxkZoge3OqpND1tFPkcZQ3rFPLGbpdDYVXTAwvA
	 dBkkEGqejcZR4O4oTEHY4GyhIXarxsVK/xAgQl4jIJVOJxwcuZ8u6JwY0Exm9Srcww
	 X7pDFa5J6hiMsM6/zvCTQUYZj4llIkkZwi6rdIoWCGKMzDkmg3sMyUhlA6gLCOvtIa
	 jPLJt+ZBSjsyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBCEBC6FD20
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 21:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167943348595.10292.14081123358597269672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812664015db2e78478a4227ffa0725d635ebc89cbf26e21b806ffa7e81f5429e
Date: Tue, 21 Mar 2023 21:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679433485
