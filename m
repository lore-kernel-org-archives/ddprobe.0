Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5DF78476
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 13:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86088C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 13:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671802287;
	bh=2gOT9cjCBnt/awq9Txfx2n0R18Nl9NCU8+49zlyRzxw=;
	h=To:Subject:From:Date:From;
	b=kYyZZDl5QQhyYkAQ5s68dGP52XjXBwv6HYpsLkMBhqfEpd7uHPHhcopbheJIORDUy
	 Z5jXfGboEjKA5R4JFnwQ/VYMQR0OKQP80d+ucUWbDGkBOmoTxE6HB51leqhz1mnsOq
	 TkbYlmvp2GDTJKVd8Jaq4LTTLCN2kLEgWSHouSxKQ2SlzJlltyQjZbaZlVmzNlQ/TY
	 LVSvSCdEfg+ogVeOHp/v0bH51DW9yk7u93W28wFklh/r8h2HCxEsCm7kgkZ/7cCSx8
	 wDFuf4qEX/b2kxzUm5B7Xg7EHifsaSo443MeJfVDJxy6o6Mz3e4eXYZIWBvKO5Ct1P
	 6xv7wa+87p3kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E7A1C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 13:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167180228744.29966.13999202695634864650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77cdc9ebdac76e45ef306e5df08ff2b08829b0dc217b87eb48f7faac5a727e0f
Date: Fri, 23 Dec 2022 13:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671802287
