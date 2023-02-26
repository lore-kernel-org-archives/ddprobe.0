Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 733622C80
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 14:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 263DAC433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 14:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677423366;
	bh=VQYMCEeDdMsBYRnWMwvaENBNli+PBWhYL4i+mmsBKSI=;
	h=To:Subject:From:Date:From;
	b=sS2eRtVa0OCW+H1u8NVSeBIrkqA9eIYUqY7sGmMoeg8ODRepPVcykGhbk58tFVSs7
	 GVngPSsctFjJCfoAz1bt/yd45Wk6vv39EiSIt+0fDu/i4qz1ZS+deIWKYjUZhN+D2s
	 Negvnrq60YggDDLtURgk9fwG1mSMsOc8Uxv2ekspR5cB8ii7NYXoa5G6VjXVS03fwn
	 SMPOQEaH1/YG5fvwfnTnprYQT8hXs52bVxsTq5/uOaRfSW2ARj3xCqooPQImRIFd4M
	 VS1gSUzBX+QjRqmJ0K+MAFtMpqKFFltzWAzoSeVx18//xp7+AOmPOw79cbZ4ThYvUB
	 ntF8TFMUnOHww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD5D1C7EE45
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 14:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167742336586.15817.15684034461085166531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ec8d1c4908510450e1f0ad2ed1a684d2f50adf7925deda99a7207f33e0d84a
Date: Sun, 26 Feb 2023 14:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677423365
