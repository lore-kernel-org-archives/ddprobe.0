Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95AAF23B4
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 23:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUxPOEdI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D214DC433C8
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 23:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696720028;
	bh=0+Y/dog+9BDMrGZWSEzI6JZl84u933YDKBWsTZ86cbk=;
	h=To:Subject:From:Date:From;
	b=EUxPOEdI4o/bRYU92t3ma7GHflBZ+FdflUlLEJq95FvAYYPAoomjjIJXMWSA4LeCt
	 zOhHT4nKFyge1WxSdeibFUS0gp7mXJ4+hbKA5nNsWpy1BV+doCiy8GSUaKQ+O6iZW7
	 ZWcEaZ+TeRotbhOPqeyQ/rvdQPRL4ExcHyjGT7o8lbTAdlNxjG5fK2GxprYQVRe3J3
	 x+21hJ00ApxyVI3AU1+MbyksebWl0QeSepCDpCXx8NusFiGAG5/NWlNqbZa1XjyEDe
	 ARO1xyV1UXP1H+pjmsNvLG5WKL0h/0IYQbjwhu4o5FX2RWfVr1TPCZKjzWy6EaXvfh
	 pHsM6/ff/lEuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E8CE95A77
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 23:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169672002871.1973.9686755633973611155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 962e19c5efc6bbd2440027d5aabc6633d7708a9bedcb20d2bf8183e944f2cf30
Date: Sat, 07 Oct 2023 23:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696720028
