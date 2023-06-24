Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58521DDDD
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 21:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C378EC433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 21:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687642388;
	bh=opGXl4Y+1NjVg7HxBuMAZBqu/PyevjJyw8TzzPIUvVc=;
	h=To:Subject:From:Date:From;
	b=GTI+KQVwob2blkz5CFAQ/r9cXvb0797eYtq2NX/YxyXURgreDPyFQDZc7baVWAfDF
	 f8vcAUbB3wrbjfADSfuQVRI1OyhXsAXUJADrfmDL+LWUUy1sqsaXvoSg0T6c3IGzFX
	 S1zaUHERF3L42QquzCrO8b52AqPhpXLHVfisx6HJzQH/Qo0UdugQyQhatvHN59Peb9
	 nyv3HW1k99RCYrGQ334AvdVstByFrU1MMVFcIDevPr759XUbkkGLYtppTKeop0QAFd
	 jCAhc8NIuD6XOxCp2KgWCfgSc1256gQRkAlW5KCyLOtQgbEufpYU21IA4IV6+Y96QY
	 zD7LVHm3uJFyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D64EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 21:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168764238866.17711.16594690368408027761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5411fee09c13fa1d742ba8dfa15702756b7263c24c11bd2071f74fa4a50766ab
Date: Sat, 24 Jun 2023 21:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687642388
