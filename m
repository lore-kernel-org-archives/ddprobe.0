Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECE47B
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AABDC433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666823453;
	bh=itaU0ROFj50r+T7NMsiZBYpdSsftaAuR3pknsHiOS7E=;
	h=To:Subject:From:Date:From;
	b=RcL9Sy97YsN4Fn9gzllusTCIwl5Vf+q3Bo0ezZS7vd8yMBls2R2iSFZ4GC0Jf3J5d
	 r24tBDXNgGqS2gFHog8F6y32lTsIW3RKx9PfvM287dmYUT4BsyUQAp8ouBpAbP4YYo
	 OaUlqvwyaHH9HOma5A2WSviVwo6hzD1slmmFDMNikUdSywQ6WYFUt44bHBkIjp5FOk
	 D/kh5h2etQLXRdA9aDU8Jj3t/k28MyuoyFm9fD/qZqUaR70LVYFNPrz8O2QzAVufka
	 WXQvSqbXFcbRygyKr4TQPjmLyLepV7KM5P4KjmwrAxyU0f6tbVD8pyUTT+vyvYEaHe
	 r8zq5K1I+NUZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EFD9C433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166682345337.21073.16060501973338046624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720b6cd5fa38a57d25fd03007729b9d4fbfba38370974f069f098dc208aad770
Date: Wed, 26 Oct 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666823453
