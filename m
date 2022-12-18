Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D92EA7E7
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B8EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671337287;
	bh=+Tiem/dIrUZXI0uooeTIxrcZKLZ0SO5MNd8MPzipg6g=;
	h=To:Subject:From:Date:From;
	b=bhp6RLTpzR5Cah9D7m2uGdKxAP7ds2f46rQSsRUCTbGybk8bau9RC6SyJt6Vk4U5w
	 bCmxOvpPSi0lVMAAzRSQeeCtNJBXnI1yNHZvdRd+D3wu2ombdsYDmQWBbo+VHX3kkw
	 YiJ93xmK8JBf+4JIN6xJqb/WzQgCExiN4nZOPpn9KcvX1IsgPpqxerzVqzUQsDVg7Y
	 uBfiFJRRWv5lJVDKtO81ObFIsI24s+FrxdIJpce4vfCwZqUVBbbeEL2WOmQuwohTyk
	 AbaJd8V+pga4fJDYNMJ962fx22rlZ377zg9CblUtBO36FCXoBPLoI0BHO9ISpeJ6Dp
	 XIAFU3i1LjNrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6863AC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167133728741.5669.8381264110593006210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4baa51c6ba5769f393044fad2cf9178ed2cb88e4a3a87e6025a43d3086490cd9
Date: Sun, 18 Dec 2022 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671337287
