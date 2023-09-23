Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C61E37A
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 01:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67A6C433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 01:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695431108;
	bh=Y9axmFh2WT9aIant7K2Lj3kr1O3iyWjzLv8JeFtqywI=;
	h=To:Subject:From:Date:From;
	b=fdiWNZZl4csknXpBfmiftDfG/lM8r3dH8hv11FNTn9UJ4tpSZEHSlxad44WdSFYtW
	 U0dAqqk8fScobahBye7OA4apn2y8ynX/ftNbneXAJouHH41i3Vkh4PSnh/Zrv8JNJh
	 33ZoOrxotCr4TnsGJKS8i/NSVpPZ9p8KEWsQWVYEIi581c3xDWG0mOHMkDzznkf/1B
	 Beejybf5l3yF4t0Tl7tmzrUMhXmyYQYWtsfyk56ZjHbNnkt5/z2KJaerwAldGjVE4m
	 IN7J+pyJS2xs6cf804TIQKe4YZfaZWb74ZnsfsFftGi6z9Vor9KPB8JIsP4h6Kx693
	 GAXt25I4BmJJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7EACE7A88
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 01:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169543110868.10515.18107388686267154043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bb8125bd87cd83afa869af8661ec08c05af1281b962ad4cfe1f34ac4f82d39b
Date: Sat, 23 Sep 2023 01:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695431108
