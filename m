Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160463714E
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJ26vEdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 811C6C433C8
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701109696;
	bh=ASMBdubCqcQSkE+G+3pG7gfPooE7CtGk1TZEPPRwckc=;
	h=To:Subject:From:Date:From;
	b=NJ26vEdkHCb1XCifuDZeGBIZLjxCYyxSJD4KEzRSvjkPNRsajIqVZ8bxV6NTf65ku
	 jqxmP/rymNRfSLFVMcN/6PzqXQf7zR/sJQ94j4ZLpkCI03+9qVEwOtEP+648qImjtO
	 if5jytDnUeqn0Keaw883e98JX8CZtLPunXZHOukULCrOR4ObwmX5hEfNUE0ajDQzUN
	 1jphCQLu9BjX/q2f1QxufqAA1bLv6gIcGpM45yUdUtrUrPxtk+tarr7TFl1DXxR6ZN
	 16Hr1Hi6jwntSZGkVGVtoPHnyMNipLF7tXECpOeex9aDm/sGn4c3el6Ht3H981A6Ii
	 C6rTMXKlTo1oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63280C4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170110969639.26409.8005971938783996377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c6b86cb55bb4995a2eb5fee044bc3b219f619489c76047d3bfc4cdd11f87848
Date: Mon, 27 Nov 2023 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701109696
