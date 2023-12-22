Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1799B20B00
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9diNnmt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F2B9C433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703254096;
	bh=g9MFQyMvzSFS0OIqIYGOu9q4GFGyzkPk7fJjLDOL92M=;
	h=To:Subject:From:Date:From;
	b=o9diNnmtQW1C/yB4WggNVW+LjlxpS2CA7vY67ecI5QooMd5BzIxVtcmjprPe8hS8n
	 IpSeUTi44R+09rrOC1nHlCKAEiROJJuwsuhZwG0N518fTvUqp/eLuyULGzCBg3wIHe
	 bG/feHsFWUZrlX2cu6TEDTuVwQAubLyhCE9vb/odRKwz4fAl94XJDCYVyh/pMfAGmJ
	 JOEpDsZRBUEGyfO/42o3KOJYF0HjuBqB0mW7O+0klyEk7CenxjkadrqdGZdMfVr4DM
	 4fx11pHSQFIRBiWeXSiaBhQkhaV10Yacs4lBqMU9eiHXsFWVIP5Wx+BPHgZ0AWwDfq
	 9v4zjMfF0kkHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BF92C41535
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170325409641.13456.5055525713000573336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c0f0038bd66b32bf39879582132f1e6d11d8403e23cff234aeea013759d9c8
Date: Fri, 22 Dec 2023 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703254096
