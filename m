Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DEB22637
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 16:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCEBCC433D2
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 16:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683995285;
	bh=S3d7biY96O5wz0+sU5BHdvq+C+wMPgxvJkey7UNd/R4=;
	h=To:Subject:From:Date:From;
	b=AhvF5pccPvDta6mR4Uq5bJClp/8u1TiIzuU1wTtbhTaR7t9knS/0FNqJ69MD6XBw9
	 yZIlpSLLHKuQA71O27wPAiBsePPMx52gX5vu5bdEZkz4Jh7l4LC9LUCblgA0XjFvGF
	 9HPg0KEzZhz4gUPJMFB5tYVm8VUx3O5frdHPqocnmqYyjcA7RADDOHUqknz1n3u8ti
	 Qg4GHEg5fC/Z08TGeqPvsNhC1i6EFWXKygwhgGHS0hHrI0smnVgqGM7M+TLdp6NiwF
	 p2rE6LCfmGmEHY0rCewYIQZKYQFWlI7ZCjZv4Uezthkj+Qmm4bjPs6DhaBnwB6Fs/1
	 vEhiVQuZHlm7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD5AC77B7A
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 16:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168399528574.5075.17329394739798425706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89d9a15aaaef959e4bd7379d147a31b6e1131215daa4e6e31c96de1631a26227
Date: Sat, 13 May 2023 16:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683995285
