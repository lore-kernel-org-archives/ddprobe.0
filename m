Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E1E4A14
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 23:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A62C433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664235653;
	bh=joPUB7U/CmqbXmDiLtJldNMeD5jMGYM3mLCWodyul+g=;
	h=To:Subject:From:Date:From;
	b=NZLK/eomVJhSWO0s6hKxHEU1bSnLr1buBa8OQucR5FSWkjrEtDPg/wJMCLcUBc4E3
	 aWu3fZjecbqtqy/8tk+eaoK3UAE40L4mUmEBQiH7DKknpmBqU7f5j9Bgkwb5QKLyKN
	 Z1H//+rzStJMIeEVNdrJCFa1wlaDZ14BONbvWa85J66ys3jv+E51q4kFm4tXF4mvND
	 fny4MDDvPFb6y4KJNgkonGUX6ttQN8Qzy473B31/G4CATbRBFkCax9FD6jxThQAXWp
	 xwZCNxzBlb3RiXTqyZh79dAFAvLV5u6YBAY4o1O0Q9u1GQURZLz3ipTWITsVGy0x/E
	 D7hwyaVUv/fsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B534C32771
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 23:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166423565336.18351.15073645563657485269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f8d967fb617b31f24a0632f6d9799ae70a2d0047dc3525c48c37dc7a886e8e
Date: Mon, 26 Sep 2022 23:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664235653
