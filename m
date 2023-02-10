Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C54F8483
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 19:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA37CC4339B
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 19:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676057645;
	bh=1kVqCC+Jai06WTdh+2xa2TVmdKYCjY36hlXaVTr1Rxw=;
	h=To:Subject:From:Date:From;
	b=nC6meqmoBjHF8JOctxaHOX7bUwO/mo9nAL1NCv9tZ9E75n2KXrxeU8gaHso2Lan+T
	 dICwKvGxHow7d4bWdK8Xn9EBgQ+O+PIfvBOMq03KCcNeQbEwtFxSgB+UFPoEj4yg/A
	 C29Qes5eOGMfPOCiWiUgP2apMAbKLY8VIJ8kDA/utG+aYtzJWN/2Kk+SGr5ELHMkR/
	 JbXx+wLIH/a1aIho2DMonPiJV1PklOJmlETTbw+TV6nddRjwETJ3SqvQ5wqeyxOOKe
	 GuPm7m7+JA5yA8FQNBgaWElDpL5UTx4mSYFYqTzT9su5aUsJL6YHWUw/zNf0uYemFI
	 aJjAP2GvcdvvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF4AFC636D7
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 19:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167605764583.3573.5205837765166924873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4497062d0c181b907f21dd9f41a99996746dd23ffc1166e2e7130a5d8a5ea4d2
Date: Fri, 10 Feb 2023 19:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676057645
