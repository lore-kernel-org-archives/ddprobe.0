Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB67F626
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D5C8C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664955053;
	bh=+ex/RaYO46UuHc1ggNKFdr/1O7cd2vVyk+MgdSBaCTo=;
	h=To:Subject:From:Date:From;
	b=UCYgWzZhMIB7Fs63kRQiyO844awVDu8UdCKE+Q8bpLd9q9WyWohUvfVGtNybnGzJe
	 sZgK2+4JtlbvYWt8oMGtmgEm6y3a7N23OczCqMfw2ikpXo+FrP5jaLKPhBJZFLY2LT
	 bJ2g0pD+FRjCDInmmFD8f7ZVf9OaQUNjHVkcBYHJn/zeyX2M4wNtW3J9uLIeqwLBk4
	 ugQdmbh9CMhYnRapoScOUqgg9TIpqjXWoMPY0IMY4Ibw7MczOrP4cwD0EZ0JNx3Tpr
	 VQ02AG0pe72Bp3AkfjBgzLwh6C093GNC9oR1O3M996kNCV/4V1PhHes9uVMVL2RMaO
	 G1PbM0/XeZ/WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52886C433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166495505333.6249.14202647309627064638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c0eb09e53d4f563585bc69276f942aedee0fe94250aca045c1e692e61d1f0f5
Date: Wed, 05 Oct 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664955053
