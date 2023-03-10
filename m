Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD0DDA81
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 23:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00A94C4339B
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 23:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678489506;
	bh=7QnjcmBC6zEIDBXWgiQMMSG3AUovQhfXGZXAZjlc/Bg=;
	h=To:Subject:From:Date:From;
	b=YXhCdns8P3yHt+1rilWnZM5Rp3w0EhuW2IsrYbYXIl7BbtV2srAdgKL7SA6S/BwJR
	 vOh9UruXZM8IMFujsDa9Yaf+FY57w0jOASMTiAx0wKgQjGQR0Bl0o9AUfRVL3d7hWG
	 O4rmpwwsLfwyrR8YxdY3L13de1BiAV1JOaHDjcwj+PQd8gkyic3ILwVW0UUozNcwmp
	 pu1/bi2++pMihu+IyvGMPO4CJHXnT0kEkL3bpr1JBaKEoaM459t38rqm2vHVrgfhpa
	 KjFmwy0p1CXEjXBZ0D3WMR/vrJJhzpqPXopkeAaQDjFqvoy8h+PFiXnDu1IRY2mWTa
	 EicNXkKEjQhnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD24BC6FA99
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 23:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167848950578.28618.5903928821122880151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5d532dc0c0000a5ca08ae4ab5acdcb4f2c2d949755395f2d89ea414f31503f
Date: Fri, 10 Mar 2023 23:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678489505
