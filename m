Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448F48F6E
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 19:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAE74C433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 19:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683055026;
	bh=P/3HM7QfaNsT0dYjIgKiuOZfZpuAbVAH5r9FptOjHsI=;
	h=To:Subject:From:Date:From;
	b=i2yoCPNm42fbwzaHy4TraZw6fCWXhQAGyTli1O00HHmAgBU9zY25ViENf3DuvXKWv
	 XDjygO0PbPyo84p+Vxx48hErEW1jJWmWzjlhMFlgk9sEw2reb7tqsGVhpDfnPkxFSM
	 WPyCKMgfhRftXpvgqwOHKfaGr+HAbRmpCE6lGlPIizGRVgLAQRh3gBwlI60973uKsZ
	 Q6sEPO06kgSBuXEWuQKhDRwIdxYqAlfPbFaYG5WnxcNj7gMIByLIT/aJsWk4J4jAua
	 +AyUHEYkDBSo6KyeQyU/NWzeeqDK9cwKxwLUg7RBJD1Nni8tTm6TVJMMPUWyX2GUCi
	 eYuO0+UhAd3pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD650C77B73
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 19:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168305502583.26915.8410770251155319407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b57bf3c691e9eb9723b2896d59a29f0a0127818221192b41d7e5d23382f8b4
Date: Tue, 02 May 2023 19:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683055025
