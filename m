Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34C156740
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 22:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPF3fwnp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91596C433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704751697;
	bh=K1uzHgUc2y7Dx2RY+G6XuiiCn0O/cxNaWsllujXGaI0=;
	h=To:Subject:From:Date:From;
	b=LPF3fwnpm0KXhc24tIbwVOp1iJ3Ygja6cBVw4mP2kwTUOCSBvWJZ2hwBUIbZ0DBJ6
	 oi8G4kLZ+pP8j/9VzN33ysphtsJNFTqzMRS2M3eC3oXNF1zTviE0OT/VxnsPSJo8Ss
	 s8Ds+k4vA+4XA1EAA/bnunEQORRb9Hm0+VnTNJ/IwUSEfC3nhY2cspn299yIpN3Gvx
	 kfELTG9wFOLxbZ9CRd/TQ36y26+MRharqgGqv/xhorLaZzi2p9222ez2ij/Op2HTsX
	 kHNjHsfiLONz539ChdGigXzbjJLHz3Q+AM4m8gbhDSXhdXqWtPdPiXbyDJBFE9x/6H
	 sHiOFXgoFMcUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E23FC3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170475169644.805.3232981362657192258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbffd9f3f772db96098ac3bfb9dbad0bbed77e418f87707db1742d37878baa7d
Date: Mon, 08 Jan 2024 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704751696
