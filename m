Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD2B220E2
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B3D3C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669621854;
	bh=qUtjGliDcA5GiOGjLXwtGjlJXd/qgPUmU+uCgOgJNRg=;
	h=To:Subject:From:Date:From;
	b=HHdepXta8ofnA7U9vyAJgPK6nmAZrh8jFdpUNgxA4zr01z64pEzog82nDNdHN0m1B
	 yN+Fw6/vh/CWx/fg1oB/skls4PeI8meVjACACgH5Pv9DDbu62ucKvL2l6xfzr0y3Gn
	 FO3iw3eFfpQ+ZSYug1n4XDHaVgNwJm70kzPkR7ltM0HjtLg6zE7YxrXnc25rJ5FtuD
	 4olwwW5fAEykjNYIl7pGk57sBmXmQaN5RTnQ5xoYdACBf1G+ugCfxnGWX5WKqTVsTd
	 Wef4O9Jt2MocNsm8W0lfgZyVYL3z74lTxdZjmSCkFHKsukqHxcBNYZVc6LVZoYlO1e
	 KTrpIvRwU4udg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C532C4321E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166962185436.3261.4247990757152413406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e43270379de1eb64f17a06aaf301608dbbcd42573e81b40cfa6c27563d9ca5a
Date: Mon, 28 Nov 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669621854
