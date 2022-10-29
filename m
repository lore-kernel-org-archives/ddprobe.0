Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF5A62574
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED8EC433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667059854;
	bh=ILcW3t3orlZ8iUFh7DOufKZIoSF2M+BK0HeVmgUqz2k=;
	h=To:Subject:From:Date:From;
	b=Lw4LlY4+97jNyAduARVIyMvq/RYQJPg6cQNq5umafYflFjIgq02ZDDJ9UowG2jeH1
	 hrQGESxurqlfMuZyM5jJTz+0K1lChm6ckDr9Qwy3j1/x5kEIGCcdEEsbQuW4z/SrbL
	 hMl3RZiJ9EZzBP4l+OkyMbplt6Kngyq/Jc0OFIRI59tpuHF/c16BC0lFsh0nNA2mh5
	 0Fy+X8xT8u0ZG2xeXiRsYK/ZSIMjR426oqOcL8ClGdPYS9j3WrH9+HMl59pCR/p0IL
	 2eTxxirugFvBMmQFwVmsce0uxifej1mtAzkH9HIArspIWnI7s/DSUgUFohOkJ3cJ+6
	 JW9kc8WdiFHow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C6CC38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166705985433.21114.3078905352731549590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93b62359001ef53cab1dbdabff28a9c4c7082f865f9719e10bd9398b0d84d844
Date: Sat, 29 Oct 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667059854
