Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3854373
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87E98C433D7
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665023453;
	bh=mocgv+oFn/wKmhe9WR4pOOp/yz99VotOFa9LLOChKAs=;
	h=To:Subject:From:Date:From;
	b=RC29EQ4v9FZNPEoPD0CtxxfBdOe+uJfmzBig6n4YTqlrgHKAkMppj4sL1AOTTwwUT
	 +qavD9ZzuiEANuCSnCB8trVJne/rqKmcsBQfMSGn0I36w56kxOBNug03bLtcVgIyOg
	 iB6LM3hXtTzUQiSwa9+4vRqI3HWqvM36IvewWvbZB4I9aZr8EsX/OsTxIxKDqp2r+A
	 SAcnFbJCAky7NdsqNTQhMZ8zFfzz48FmLtULkDYMIBIeecRTHptv7B9XctjwXYz+JB
	 RsouwZRpU1crx9vXCIK1NbZmAARgYbUaLggFd05PPrq8IzOv+QrnwincUNWmidf4IY
	 m8a6iBKYOsszw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6806DC433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166502345340.32574.15015809424995739717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce8bce20356a023ed13601bc7bd0fac862a5f6611c86155273cf6cbe6a84fd7
Date: Thu, 06 Oct 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665023453
