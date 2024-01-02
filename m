Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B2718623
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtnY1Qqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5B8C433C9
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704232696;
	bh=eJx2d1i9rOO4cVudbs6pEqVvTHKFGZQF/XTar6w+Ayg=;
	h=To:Subject:From:Date:From;
	b=EtnY1QquazpnBNLmKRPW0Gw/CWilj9BkIQhq6gdIQ30p8Gd+73IhOsXnmlZXQORh+
	 GC8vixFbXesEmXnHBhVHEYSMfRa+a1Nncmei92ye/KljOODeFcpT7Ijeyn+U+6a6NI
	 AQi44jzhoYd+fb0EgSpBjILF46Qynx3XnWNlUb/ncrecwT561fV8bLZUdIovDzn6d3
	 Qyd/HLwa4uDHZtv2hFOc5GxOkrJ2gfaFo/2BRw754DDWQE0OrNTOvpJnWdr3vlEDFj
	 x01K1igIEMTZQ/FWEmM4e4PZDz6PoCelLmSXgNGUaFNzC41LypMyg8nCkAvcfJQ6xe
	 sg9jCDEgU6Fqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C538C47074
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170423269649.10675.14122345310345972409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0196d388f977009e4e918f75fcd631ea1eb5ad8336e8f1dbc5a83a803ad3769
Date: Tue, 02 Jan 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704232696
