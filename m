Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE01D15C1
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD39C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672545087;
	bh=S8iBdFag3yuwZ79buLJFZBcWbDASl2P4nYhMvVox58Q=;
	h=To:Subject:From:Date:From;
	b=vPZrjAHarpZ5wOUan72p1ORL9aCa2/IQN+8S1SJ+/shar7KzGk8anOQT9OP6bfxsb
	 Kuo5+RNMGxscXvI3BLT70QF7o2G8ewLH09rI7lvMfQb+5LEGaXXdaWiy0FsZ4lsNtp
	 eTxF4JYxzALVDEQ5ROSRVhezsh31d5z1Ow1e24TDVLJHNvXIQ0jPXAULWLGaNJtQdj
	 /9F3XIFgUykTE6Ew7fWZmbgBkL52BeSoCaG2N5oXjYFMuDbq0oH/Fn7YIcoA1cakeU
	 7mjvlQczNJN1+CDndZ/CDAIQHDt4NF80B9K2QwNdcuwTXSOpfL9x02yc8s1Lt0KgjL
	 E6w2ozIEFLwAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64DA8C4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167254508738.5911.5793115547165869245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 716710461f9589682780863b754c6543f4936f392e61496ed40c3df3910a1537
Date: Sun, 01 Jan 2023 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672545087
