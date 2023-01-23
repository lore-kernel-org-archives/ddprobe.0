Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4287C624
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 01:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8C32C433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 01:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674436325;
	bh=3J9ez0rd5cEYiKKe7t8l3ZA4I/gJ8Kv1c32e0MbDM3A=;
	h=To:Subject:From:Date:From;
	b=EGWTOI3+PpVpqZ5P0xZxjMY9Drhf3cTmsOFD3rW3ekhxmGEarL4N2s73axC/QK9xk
	 8hm7mVY9CXJITLx4D7vXy1FerpkctVMXFgg+3wW3Fhj1d/UreL0Wtmf7qhfBxAOw6n
	 AMGTFKXvlOqVhjYrAUJ3aK/fC8HFIN14jRM/YLFd8xTuNRLnBT94qmB/HdP75JCMc8
	 APbwIZWmUavCKbuf8WUzJZ7HEUhsjfB3RVvr1joGzb0n5pJQKvuMALANGqGW+hge/s
	 PSVNV6AW7OTHPbE1eTzCXWhRH0H8EA+EFesmgoBEx23qqOm+9wHdCT+19Pl1GIOmol
	 v3reFDXBancTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8934C27C76
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 01:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167443632577.312.16883097046365900885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406a58916401f4e712261c3801f19edb3cf615cb2ffdf30cf3792ca3dfa3c7ed
Date: Mon, 23 Jan 2023 01:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674436325
