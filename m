Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EFD17E2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 04:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE383C433EF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 04:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680408305;
	bh=LiWV/EGRdwoRz5IYuF5JT21pe+5eaFYPagOCvXVWEDk=;
	h=To:Subject:From:Date:From;
	b=RJYBpKiw0kgIi8kh25IifjffIB7lM8Gccm6e9JFIXMOZrLOcr887k+FSluPrCUI8A
	 vOvwXhq0yr7wKZxAqLWbs4avIjvo5qypoQbx0d1ZYC09FvjA2JY58TNYPoBNPOvVK7
	 ubRwli0uZm5ANOFtHTmTokTa+RgVu1dN46Hk55s0n42h9XQ0O8HY5bRn0LekFiFDrO
	 2IHLrKCDekOb1UJyAYB9i5HlsVveLTbPNl+7fa2VBZ2nBpseTZpcYTFcB6zSDu5N4c
	 fbSub17jXc7mo+Yv6C/TJ3CXKl7NzCBmm9YohON9C43YHJEr3c2kZG4MEsidCHVydC
	 rC8WpABWYaTcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CF9C7619A
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 04:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168040830574.9033.3792531305702570996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a30106ed98d3e95d6208a04846e06a253f10b93e3e01a961e4f3dfad26e07a
Date: Sun, 02 Apr 2023 04:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680408305
