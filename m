Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0016B1B287
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZlC8R8uR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86C21C433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699722496;
	bh=7vjxLqMQpz81Lj9TywzkkX1evfYtEEgFjW1qT/qRu4k=;
	h=To:Subject:From:Date:From;
	b=ZlC8R8uRbgLB64bUZS5f7ED9oN4iwwKQWmY/2UcvhcdQ193F0Oa1Obc4DmEhpsSQ1
	 aeEOsq+Gtto8YnaPU0KhxuMBDL6VwV3WKm6EweUjgFQWQtViNHObRz3vNgjnX6Qvyu
	 p3GYffR74f/HjzXoJx8eGrOzqMv5zhZuDKSdBRlczp5f8Hndb3K79Y2MIdaIMPXlXj
	 O2Kxth0wND++1W7x6oho1CEnDaK69CKDl/BqeXsta/zzWR9t6DZe22lP1zXey2+YCl
	 KWXCbyVEyLR2R6ZgR6fwPBh06+ev40j3no1UArt3n/baTmlFxGSbsWtyyE8uSC5F+k
	 FLBvULIxUju5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69BB8C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169972249640.6663.14366469953596536017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e9babfcb018e984c0f7ebd6eed4f58f425580faad4e2bc606d997093dbd1b4
Date: Sat, 11 Nov 2023 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699722496
