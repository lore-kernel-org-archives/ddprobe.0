Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C665180A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 774FCC433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673675487;
	bh=e37gblGFSVGnEnU6IB/ZuFKby+88HxNNiyjhBjZAdaQ=;
	h=To:Subject:From:Date:From;
	b=ONxT5EI3Eh/JWJVgQeMVA3FDBfw844SBdiikDyMByDSkT1oL+KFoiIWDitOhGc4CP
	 Na8YbCFq+ruk0K/x/VbKRm7IiIkEbLzW8GOM1jkMUrsVpHzer6MfsoOegMXDVOAOpV
	 S6ztvBZ1kxXH98tt13VxQzw2WsHb0//Ch7NEt4zzbHHxioxRBSGzIWzdNS5mZdhQoX
	 PRFaiuzQnIxP9neFZ6a2P1bpzbbLkPkdXdV60Ru2EBAkmlU562miUgSj7dcbQyGNiL
	 oQ9ojYYtGtG0/XocOvoGrtcmxFoHCbC/WOefplhP4B3xpVIoiHI6p2QbUK3bxtyJjr
	 aJi/gCBe1brew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FAACC6379F
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167367548738.2132.11137534365333134486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd4db140781688bd77e02671552a1acf58171eeae07e961f0d3b7aa37bdc4ed9
Date: Sat, 14 Jan 2023 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673675487
