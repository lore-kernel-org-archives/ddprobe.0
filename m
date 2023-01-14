Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E067E80A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C119C433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673677287;
	bh=2geAwHZ387ZB0Aw34cHou4x2fs1+Fe/ywhqcHmBaK2w=;
	h=To:Subject:From:Date:From;
	b=TSoM/2VU2YF+MBo0X8RGz9C5mq2zAE5uEtwuA7VnC6r32PFOZGf0KaDZgzP7b8Sg1
	 ZbXYHV55kHO72Jpl1d2KcsDYzMVxiW+4YLpkANjAPMKU2jiWI3ePytA1pJfpfOsIDJ
	 dkUviHYHEVO9DoTDJfKUkNmfKcQBznsDt/T+t6/huK7OqoywuRWC6XLtIPBuP2iWD3
	 jmqlHKn6Qti+nBzmnB5Nq/Goht1F/Yf43WxAZPckN37GK7+YWCZiDF5qb78zMAOtkS
	 zQHdCzGJ5sumn7Pr2NXkxRrz8yY/cpXLd0T1Iq9W0K4AXiWh88Nwywr56XW8Sec/fB
	 VFgUjkudIWl7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62908C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167367728739.15037.10922789744412714165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11b45e15d0998eaad3085c5c6785a3e608682dd260d6f2fdb7dc57983257412e
Date: Sat, 14 Jan 2023 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673677287
