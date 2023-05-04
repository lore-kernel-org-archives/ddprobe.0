Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB627C
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 03:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B1ADC433D2
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 03:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683171666;
	bh=FmFzGQJBnUTwiFkHz6YZ80ueXmfl3wqfuWRG+wttJT4=;
	h=To:Subject:From:Date:From;
	b=G+AB2B/SsOpd5vL+1JjB0OHTqCA+rQ4fpacAWgKYzkJTC4NfLqzW4lit+ph0eJCQt
	 tezsW2foV5CC52v9uC95Va+t3xjH7sI7lgl07gPYVxgO8fSmXtElWzp06CK95Xd97Y
	 i8GsCDmpmQE75zzFsS/nwylYZXzEGcJvDL5/HZnwdkJXW/ogLr5NnIzr7fkGLmejL1
	 UpSOjNbtcABnqXOsdlxUe0Sl82IG39nQk8I/ChaK6bfUShkl+wV6u1uXkLMIWEOx8w
	 AchLFf7l6gAYB8Kt/p/ZacTNjb7nwLczbL0fNZiUaQ+zPC9eZUcq6B8aOU/hz9eyGp
	 FQEqNya9hCkVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E156CC77B75
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 03:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168317166591.26399.3620688362645093582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b9b80b8415639d04b20d8682401ff8245a0d62478116f47e2d1c2ab4be01707
Date: Thu, 04 May 2023 03:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683171665
