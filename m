Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CACE3D99D
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tACEq4He"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 826FFC433C9
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701441496;
	bh=39WYlBzq2SwHSvJ86fbvZxrhmZO5rwA3yAKebeMdpOU=;
	h=To:Subject:From:Date:From;
	b=tACEq4HeILT+7h6ns1upjAdMF3GkO2We53hPE2t/HLCb0TlbdmN1uXMXEaVeHmxVc
	 KHhsw2NEXvRdkbyDbRku/IpUSLSvfRacurCOtrgUO5a9hOl/bYyjxquG2Zq18IWX6u
	 6OInPphhJNqNyzjv0my0d5y5X98vBGzdqWsK1KxAS1ubcapYen9so9Xhhejyp4Z9bI
	 OFjFx2b1wtRloKQNta9donLkMH8DU+6w8/BI78Y0S9RhEqzyA/VSvV/dEN/0tGyQiK
	 RvAOZr82OhwmpThp5ly66q4rZCYMfdBKBQscjf8tV1eVzhxUNqJUSOHqFmqxTZx8Ki
	 gZDt2q9/3bh6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68074C10DC1
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170144149641.16156.8819519763965951386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a6591ff00a76d4635faab2271d44464a867b812d3d924d765977df8a5de4350
Date: Fri, 01 Dec 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701441496
