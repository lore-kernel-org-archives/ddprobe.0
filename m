Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9F947F46
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kL4liaoi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6FCC433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703709496;
	bh=W1zMwz35tJ6NrfgcILK/iXggGRLjqdMGS7MGVhVBshg=;
	h=To:Subject:From:Date:From;
	b=kL4liaoicebCBdhfKgaUDITkP2b3sLn3EtGH8HlJ3A1uJbqlnp9dgMbzX21LBY2Ms
	 WqqGeMU3u1+Xbw4fybzgDpZU+ynllFO5bp4aEEPmfhLOkoezAk9JwFKy5Yk5+Nag88
	 q1Ey+zraZYZpLCwkt8fGrwMZjW8TS/f/+OfN7hr+euf1pJDkHPntNtExpREsAsM0Vg
	 1D/AzskyD30jku/88uhy6kk4xjOj6dFF/SxyOa70bxjFgOm3kXPNrsN9EUl2YnWFjI
	 8SDdv5dlLDSK/yecjY37kpYnUwN+8k6RRw1rZNWkPDkmHTE/26IpRUi/Bc7vPwrC6w
	 GNkCiHOL4n9eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D0F7C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170370949647.23427.14466558633014472280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6279dd678bb39bfc4d3a861a40aa48fb0e1dbcde52af81a6829b25765c5a8a9
Date: Wed, 27 Dec 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703709496
