Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF971FDB
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 23:36:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E6EC433C9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 23:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688513768;
	bh=I3IXDJAANkpBzxPArXK0PWMpupzTTjIp0LjXfdxuEYI=;
	h=To:Subject:From:Date:From;
	b=KojqDA3Mi/j2QgO6WBGNZfrdULCw4dEOhAaY9YtpyjPr2m+tR47UWF4/qt2p/kE1z
	 G1TCZQLMONhoML8XJS+/TtQHZjRIKMQWk69RqcSCZYTvEKMA6N6wGuRb14A7qMDgib
	 Qyb6KWN9VbJrNmQZS3l8u4Uht95FXTOUUvNge5xe0pSfV0TWdECXWY/Y1j59SN5D+A
	 9MFyTQ1etRekLMOJpxbIxAV2V+WfuRfbbJvn1ClzSso3KPflNQHYJSBNVsq9t/7x7F
	 k43Ys6h2fH+5fPngGDdYmVo/7sB/icI8pGLMKxeRlt5MucZny8ln19krjBcXh0r8n0
	 vUQl8zKZEcBHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFA3EB64D9
	for <ddprobe@lists.linux.dev>; Tue,  4 Jul 2023 23:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168851376869.11571.3187123926908365239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0cf6a00e2e8fa1ce1f18f7c4da79ad5f651ae3322b7342f5412497816b97059
Date: Tue, 04 Jul 2023 23:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688513768
